package com.taotaoti.common.web.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.taotaoti.common.controller.JSonBaseController;
import com.taotaoti.common.listeners.SessionCounterListener;
import com.taotaoti.common.utils.ObjToStringUtil;
import com.taotaoti.common.vo.JsonObject;
import com.taotaoti.member.dao.AuthDao;
import com.taotaoti.member.dao.MemberDao;

@Controller
@RequestMapping("/demoJson")
public class DemoJsonController extends JSonBaseController {
	 private static final Log log = LogFactory.getLog(SessionCounterListener.class);
	
	 @Resource
     private AuthDao authDao;
	 @RequestMapping(value = "/Home")
	 @ResponseBody
	 public JsonObject initHome(){
		 System.out.println("testRellow");
		
		 return	this.buildSuccess("username",  authDao.findAll());
	 }
	@RequestMapping(value = "/allSession")
	@ResponseBody
	public JsonObject allSession(HttpServletRequest request){
		return	this.buildSuccess("sessions", "");
	}
	@RequestMapping(value = "/Home2")
	@ResponseBody
	public JsonObject initHome2(){
		
		return this.businessError("业务逻辑错误");
	}
	
	
	
}
