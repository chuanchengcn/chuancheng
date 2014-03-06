package com.taotaoti.chuancheng.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.taotaoti.common.controller.BaseController;
import com.taotaoti.common.utils.DateUtils;
import com.taotaoti.common.vo.JsonObject;
import com.taotaoti.common.vo.MatchMap;
import com.taotaoti.common.web.session.SessionProvider;
import com.taotaoti.order.service.JianbaoOrderMgr;
import com.taotaoti.professor.bo.Professor;
import com.taotaoti.professor.service.ProfessorMgr;
import com.taotaoti.professor.vo.ProfessorDetail;
import com.taotaoti.store.service.StoreMgr;
import com.taotaoti.store.vo.EntityStoreVo;
import com.taotaoti.treasure.bo.Treasure;
import com.taotaoti.treasure.service.TreasureMgr;

@Controller
@RequestMapping(value="/web/member")
public class MemberController extends BaseController {
	private static final Logger LOG = LoggerFactory.getLogger(MemberController.class);
	@Autowired
	private SessionProvider session;
	@Resource
	StoreMgr storeMgr;
	@Resource
	ProfessorMgr professorMgr;
	@Resource 
	TreasureMgr treasureMgr;
	@Resource
	private JianbaoOrderMgr jianbaoOrderMgr;
	
	@RequestMapping(value = "/portal")
	public String portal(HttpServletRequest request,ModelMap model){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		String welcomeTemp="早上好！";
		int curPage=0;
		int pageSize=1000;
		String today=DateUtils.getHour(new Date(System.currentTimeMillis()));
		int curHour=Integer.valueOf(today);
	    if(curHour>=0&&curHour<=10){
	    	welcomeTemp="早上好！";
	    }else if(curHour>10&&curHour<=15){
	    	welcomeTemp="中午好！";
	    }else if(curHour>15&&curHour<18){
	    	welcomeTemp="下午好！";
	    }else if(curHour>=18){
	    	welcomeTemp="晚上好！";
	    }
	    LOG.info("portal ="+welcomeTemp);
	    this.visitor=session.getSessionVisitor(request);
		int memberId=visitor.getUserid();
	    
	    MatchMap orders=new MatchMap("orders", jianbaoOrderMgr.findOneTempOrderByMemberId(memberId));
		MatchMap welcome=new MatchMap("welcome",welcomeTemp);
	    MatchMap professores=new MatchMap("professores", professorMgr.getPageProfessors(curPage-1, pageSize));
		
	    listMaps.add(professores);
		listMaps.add(welcome);
		listMaps.add(orders);
		return this.buildSuccess(model, "/web/member/portal", listMaps);
	}
	@RequestMapping(value = "/professorInfo")
	public String showProfessor(ModelMap model,
			@RequestParam(value="professorId") Integer professorId
			){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		ProfessorDetail professorDetail=	professorMgr.getProfessorView(professorId);
		MatchMap professorMap=new MatchMap("professorDetail",professorDetail);
		listMaps.add(professorMap);
		return this.buildSuccess(model, "/web/member/professorInfo", listMaps);
	}
	@RequestMapping(value = "/reservationService")
	public String reservationService(ModelMap model,
			@RequestParam(value="professorId",required=false) Integer professorId,
			@RequestParam(value="storeId",required=false) Integer storeId
			){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		if(professorId!=null){
			Professor professor=	professorMgr.getProfessor(professorId);
			MatchMap professorMap=new MatchMap("professor",professor);
			listMaps.add(professorMap);
		}
		if(storeId!=null){
			EntityStoreVo entityStoreVo =	storeMgr.findEntityStore(storeId);
			MatchMap entityStoreVoMap=new MatchMap("entityStoreVo",entityStoreVo);
			listMaps.add(entityStoreVoMap);
		}
		return this.buildSuccess(model, "/web/member/reservationService", listMaps);
	}
	@RequestMapping(value = "/addOrder")
	public ModelAndView addOrder(ModelMap model){
		/**
		 * 订单处理
		 */
		LOG.info("create order!");
		
		return this.buildSuccessByRedirectOnlyUrl("/web/member/currentAppointment");
	}
	
	@RequestMapping(value = "/myTreasures")
	@ResponseBody
	public JsonObject myTreasures(HttpServletRequest request){
		this.visitor=session.getSessionVisitor(request);
		System.out.println(visitor.getUserid());
		int curPage=0;
		int pageSize=1000;
	    List<Treasure>	treasures=treasureMgr.getPageTreasuresByMemberId(visitor.getUserid(), curPage, pageSize);
		return this.buildSuccess("treasures", treasures);
	}
	@RequestMapping(value = "/followProfessors")
	public String followProfessors(ModelMap model,
			@RequestParam(value="page",required=false) Integer curPage,
			@RequestParam(value="pageSize",required=false) Integer pageSize) {
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		if(curPage==null) curPage=1;
		if(pageSize==null) pageSize=12;
	    MatchMap professores=new MatchMap("professores", professorMgr.getPageProfessors(curPage-1, pageSize));
		listMaps.add(professores);
		return this.buildSuccess(model, "/web/member/followProfessors", listMaps);
	}
	@RequestMapping(value = "/favorite")
	public String favorite(ModelMap model,HttpServletRequest request,
			@RequestParam(value="page",required=false) Integer curPage,
			@RequestParam(value="pageSize",required=false) Integer pageSize) {
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		if(curPage==null) curPage=1;
		if(pageSize==null) pageSize=12;
		this.visitor=session.getSessionVisitor(request);
	    MatchMap treasures=new MatchMap("treasures", treasureMgr.getPageTreasuresByMemberId(visitor.getUserid(), curPage, pageSize));
		listMaps.add(treasures);
	    return this.buildSuccess(model, "/web/member/favorite", listMaps);
	}
	
	@RequestMapping(value = "/currentAppointment")
	public String currentAppointment(ModelMap model,HttpServletRequest request){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		 this.visitor=session.getSessionVisitor(request);
		int memberId=visitor.getUserid();
	    
	    MatchMap orders=new MatchMap("orders", jianbaoOrderMgr.findOneTempOrderByMemberId(memberId));
		listMaps.add(orders);
		
		return this.buildSuccess(model, "/web/member/currentAppointment", listMaps);
	}
	
	@RequestMapping(value = "/historyAppointment")
	public String historyAppointment(ModelMap model){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		return this.buildSuccess(model, "/web/member/historyAppointment", listMaps);
	}
}
