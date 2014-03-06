package com.taotaoti.common.web.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.taotaoti.common.controller.BaseController;
import com.taotaoti.common.listeners.SessionCounterListener;
import com.taotaoti.common.vo.JsonObject;
import com.taotaoti.common.vo.MatchMap;
import com.taotaoti.constants.GlobalConstant;
import com.taotaoti.systemmessage.bo.SysContactMessage;
import com.taotaoti.systemmessage.dao.SysContactMessageDao;
import com.taotaoti.systemstat.dao.SysSessionVisitorHistoryDao;

@Controller
@RequestMapping("/")
public class WebCommonController extends BaseController {
	 private static final Log log = LogFactory.getLog(WebCommonController.class);
	 
	 @Resource
	 private SysSessionVisitorHistoryDao sessionVisitorHistoryDao;
	 @Resource 
	 private SysContactMessageDao sysContactMessageDao;

	@RequestMapping(value = "admin/webCommon/sessionTodayList")
	public String sessionList(ModelMap model){// 这个可以传入参数
		return this.buildSuccess(model, "/admin/sessionList", "sessions", sessionVisitorHistoryDao.findAll(new Date(System.currentTimeMillis())));
	}
	@RequestMapping(value = "admin/webCommon/sessionSysStateList")
	@ResponseBody
	public JsonObject sessionSysStateList(){// 这个可以传入参数
		 List<MatchMap> listMaps=new ArrayList<MatchMap>();
		 MatchMap onlineSessionSize=new MatchMap("onlineSize", SessionCounterListener.getActiveSessions());
		 MatchMap todaySessionsSize=new MatchMap("todaySize",sessionVisitorHistoryDao.counts(new Date(System.currentTimeMillis())));
		 int allSize= sessionVisitorHistoryDao.counts();
		 MatchMap allSessionsSize=new MatchMap("allSize", allSize);
		 MatchMap allMemberSize=new MatchMap("allMemberSize", allSize);
		 listMaps.add(onlineSessionSize);
		 listMaps.add(todaySessionsSize);
		 listMaps.add(allSessionsSize);
		 listMaps.add(allMemberSize);
		return	this.buildSuccess(listMaps);
	}
	
	@RequestMapping(value = "web/webCommon/contact")
	 public String webContact(ModelMap model,
			@RequestParam("fname") String fname,
			@RequestParam("lname") String lname,
			@RequestParam("email") String email,
			@RequestParam("title") String title,
			@RequestParam("message") String message){
		if(message!=null&&message!=""&&email!=null&&email!=""){
			SysContactMessage sysContactMessage=new SysContactMessage(fname, lname, email, title, message, 1);
			sysContactMessageDao.create(sysContactMessage);
			return this.buildSuccessOnlyUrl(GlobalConstant.getUC_HOME_URL());
		}
		return this.buildParamError(model, GlobalConstant.getUC_JUMP_URL(), "logoerror", "用户名或密码错误！");
	}
}
