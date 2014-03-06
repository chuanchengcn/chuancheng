package com.taotaoti.chuancheng.controller;

import java.util.ArrayList;
import java.util.HashMap;
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
import com.taotaoti.common.utils.MD5;
import com.taotaoti.common.vo.JsonObject;
import com.taotaoti.common.vo.MatchMap;
import com.taotaoti.common.web.session.SessionProvider;
import com.taotaoti.member.facade.MemberFacade;
import com.taotaoti.member.service.MemberMgr;
import com.taotaoti.member.vo.AcountInfo;
import com.taotaoti.professor.bo.Professor;
import com.taotaoti.professor.service.ProfessorMgr;
import com.taotaoti.professor.vo.ProfessorDetail;
import com.taotaoti.store.service.StoreMgr;
import com.taotaoti.store.vo.EntityStoreVo;
import com.taotaoti.treasure.bo.Treasure;
import com.taotaoti.treasure.service.TreasureMgr;

@Controller
@RequestMapping(value="/web/member")
public class MemberInfoController extends BaseController {
	private static final Logger LOG = LoggerFactory.getLogger(MemberInfoController.class);
	@Autowired
	private SessionProvider session;
	@Resource
	StoreMgr storeMgr;
	@Resource
	MemberFacade memberFacade;
	@Resource
	MemberMgr memberMgr;
	
	String errorPageUrl="/web/member/error";
	
	@RequestMapping(value = "/modify/modify")
	public String modify(ModelMap model,
			@RequestParam("oldPassword") String oldPassword, 
			@RequestParam("newPassword") String newPassword, 
			@RequestParam("newPassword2") String newPassword2,
			HttpServletRequest request){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		HashMap<String, Object> errors=new HashMap<String, Object>();
		if(!newPassword.endsWith(newPassword2)){
			errors.put("newPassword", "新密码不一致！");
			return this.buildParamError(model, errorPageUrl, errors);
		}
		this.visitor=session.getSessionVisitor(request);
		int memberId=visitor.getUserid();
		AcountInfo acountInfo= memberFacade.getAcountInfoByMemberId(memberId);
		String tempPassword=MD5.getMd5(oldPassword);
		if(!acountInfo.getPassword().equals(tempPassword)){
			errors.put("oldPassword", "旧密码不正确！");
			return this.buildParamError(model, errorPageUrl, errors);
		}
		memberMgr.modifyMemberPassword(memberId, MD5.getMd5(newPassword));
		return this.buildSuccess(model, "/web/member/portal", listMaps);
	}
	@RequestMapping(value = "/modifyPassword")
	public String modifyPassword(ModelMap model){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
	
		return this.buildSuccess(model, "/web/member/modifyPassword", listMaps);
	}
	@RequestMapping(value = "/modify/password")
	public String password(ModelMap model){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		return this.buildSuccess(model, "/web/member/portal", listMaps);
	}
	
	@RequestMapping(value = "/memberinfo")
	public String memberinfo(ModelMap model,HttpServletRequest request){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		this.visitor=session.getSessionVisitor(request);
		int memberId=visitor.getUserid();
	    
	    MatchMap memberInfo=new MatchMap("member", memberFacade.getAcountInfoByMemberId(memberId));
		listMaps.add(memberInfo);
		return this.buildSuccess(model, "/web/member/memberinfo", listMaps);
	}
	
}
