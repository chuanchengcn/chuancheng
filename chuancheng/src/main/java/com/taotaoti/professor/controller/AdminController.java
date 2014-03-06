package com.taotaoti.professor.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.taotaoti.common.controller.BaseController;
import com.taotaoti.common.dto.ErrorDTO;
import com.taotaoti.common.utils.ObjToStringUtil;
import com.taotaoti.common.vo.JsonObject;
import com.taotaoti.common.vo.MatchMap;
import com.taotaoti.common.vo.Visitor;
import com.taotaoti.common.web.session.SessionProvider;
import com.taotaoti.member.facade.MemberFacade;
import com.taotaoti.order.bo.JianbaoOrder;
import com.taotaoti.order.constant.OrderConstant;
import com.taotaoti.order.service.JianbaoOrderMgr;
import com.taotaoti.professor.form.ProfessorForm;
import com.taotaoti.professor.service.ProfessorMgr;
import com.taotaoti.store.service.StoreMgr;
import com.taotaoti.treasure.service.TreasureMgr;

@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController {
	private static final Logger LOG = LoggerFactory.getLogger(AdminController.class);
	@Resource
	private ProfessorMgr professorMgr;
	@Resource
	private TreasureMgr treasureMgr;
	@Resource
	private StoreMgr storeMgr;
	@Resource
	private MemberFacade memberFacade;
	@Resource
	private JianbaoOrderMgr jianbaoOrderMgr;
	
	@Autowired
	private SessionProvider sessionProvider;
	@RequestMapping(value="/membersList")
	public String browseMembersList(ModelMap model){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		MatchMap professor=new MatchMap("members", memberFacade.browseAcountInfos());
		listMaps.add(professor);
		return this.buildSuccess(model, "/admin/membersList", listMaps);
	}
	@RequestMapping(value="/professors")
	@ResponseBody
	public JsonObject browseProfessors(){
		return this.buildSuccess("professors", professorMgr.getAllProfessors());
	}
	@RequestMapping(value="/professorsList")
	public String browseProfessorsList(ModelMap model){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		MatchMap professor=new MatchMap("professors", professorMgr.getAllProfessors());
		listMaps.add(professor);
		return this.buildSuccess(model, "/admin/professorsList", listMaps);
	}
	@RequestMapping(value="/deleteProfessor")
	public ModelAndView deleteProfessor(ModelMap model,
			@RequestParam("professorId") int professorId){
		professorMgr.deleteProfessorByProfessorId(professorId);
		return this.buildSuccessByRedirectOnlyUrl("/admin/professorsList");
	}
	
	
	@RequestMapping(value="/ordersList")
	public String browseOrdersList(ModelMap model,
			@RequestParam(required=false,value="progress") Integer progress){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
        List<JianbaoOrder> jianbaoOrders;
        if(progress!=null)jianbaoOrders=jianbaoOrderMgr.findOrders(OrderConstant.ORDER_STATU_VALID,(int)progress);
        else jianbaoOrders=jianbaoOrderMgr.findOrders(OrderConstant.ORDER_STATU_VALID);
		MatchMap orders=new MatchMap("orders", jianbaoOrders);
		listMaps.add(orders);
		return this.buildSuccess(model, "/admin/ordersList", listMaps);
	}
	@RequestMapping(value="/storeList")
	public String browseStoreList(ModelMap model){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		MatchMap entityeStores=new MatchMap("entityeStores",storeMgr.findEntityStore());
		MatchMap activityStores=new MatchMap("activityStores",storeMgr.findActivityStores());
		listMaps.add(entityeStores);
		listMaps.add(activityStores);
		return this.buildSuccess(model, "/admin/storeList", listMaps);
	}
	@RequestMapping(value="/treasuresList")
	public String browseTreasuresList(ModelMap model){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		MatchMap treasures=new MatchMap("treasures", treasureMgr.getAllTreasures());
		listMaps.add(treasures);
		return this.buildSuccess(model, "/admin/treasuresList", listMaps);
	}
	@RequestMapping(value="/treasureInfo")
	public String treasureInfo(ModelMap model,
			@RequestParam("treasureId") int treasureId){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		MatchMap treasureInfo=new MatchMap("treasureInfo", treasureMgr.getTreasureView(treasureId));
		listMaps.add(treasureInfo);
		return this.buildSuccess(model, "/admin/treasureInfo", listMaps);
	}
	
	@RequestMapping(value="/preAddProfessor")
	public String preAddProfessor(ModelMap model){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		//MatchMap professor=new MatchMap("professors", professorDao.findAll());
		//listMaps.add(professor);
		return this.buildSuccess(model, "/admin/preAddProfessor", listMaps);
	}
	@RequestMapping(value="/preAddTreasure")
	public String preAddTreasure(ModelMap model){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		//MatchMap professor=new MatchMap("professors", professorDao.findAll());
		//listMaps.add(professor);
		return this.buildSuccess(model, "/admin/preAddTreasure", listMaps);
	}
	

	@RequestMapping(value = "/addProfessor")
	public ModelAndView addProfessor(ModelMap model,HttpServletRequest request,ProfessorForm professorForm){
		// 转型为MultipartHttpRequest
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		// 根据前台的name名称得到上传的文件
		MultipartFile file = multipartRequest.getFile("file");
		// 获得文件名：
		String realFileName = file.getOriginalFilename();
		
		// 获取路径
		String ctxPath = request.getSession().getServletContext().getRealPath(
				"/")
				+ "\\" + "resources\\professors\\";
		// 创建文件
		File dirPath = new File(ctxPath);
		if (!dirPath.exists()) {
			dirPath.mkdir();
		}
		File uploadFile = new File(ctxPath + realFileName);
		LOG.info("path="+ uploadFile.getAbsolutePath()+""+uploadFile.exists());
		
		
		if(uploadFile.exists()){
			professorForm.setPhoto("/resources/professors/"+realFileName);
		}else{
			professorForm.setPhoto("/resources/professors/default.png");
		}
		try {
			FileCopyUtils.copy(file.getBytes(), uploadFile);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		LOG.info(ObjToStringUtil.objToString(professorForm));
		//professorDao.create(arg0);
		List<ErrorDTO> errorDtos=new ArrayList<ErrorDTO>();
		Visitor visitor=sessionProvider.getSessionVisitor(request);
		LOG.info(ObjToStringUtil.objToString(visitor));
		
		professorMgr.createProfessor(visitor.getUserid(),professorForm, errorDtos);
		return this.buildSuccessByRedirectOnlyUrl("professorsList");
		
	}
	public ProfessorMgr getProfessorMgr() {
		return professorMgr;
	}
	public void setProfessorMgr(ProfessorMgr professorMgr) {
		this.professorMgr = professorMgr;
	}
	public SessionProvider getSessionProvider() {
		return sessionProvider;
	}
	public void setSessionProvider(SessionProvider sessionProvider) {
		this.sessionProvider = sessionProvider;
	}
}
