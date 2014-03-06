package com.taotaoti.common.web.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.taotaoti.common.annotation.Privilege;
import com.taotaoti.common.controller.JSonBaseController;
import com.taotaoti.common.listeners.SessionCounterListener;
import com.taotaoti.common.utils.ObjToStringUtil;
import com.taotaoti.common.vo.JsonObject;
import com.taotaoti.memmber.druc.constant.DrucConstant;

@Controller
@RequestMapping("/auth/demoJson")
@Privilege(value=DrucConstant.UC_AUTH_INDEX)
public class AuthDemoJsonController extends JSonBaseController {
	 private static final Log log = LogFactory.getLog(SessionCounterListener.class);
	
	
	@RequestMapping(value = "/Home")
	@ResponseBody
	@Privilege(value=DrucConstant.UC_AUTH_MEMBER_HOME)
	public JsonObject initHome(){
		System.out.println("testRellow");
		return	this.buildSuccess("username", "小兔子");
	}
	@RequestMapping(value = "/allSession")
	@ResponseBody
	@Privilege(value=DrucConstant.UC_AUTH_MEMBER_UPDATE)
	public JsonObject allSession(HttpServletRequest request){
		return	this.buildSuccess("sessions", "");
	}
	@RequestMapping(value = "/Home2")
	@ResponseBody
	public JsonObject initHome2(){
		
		return this.businessError("业务逻辑错误");
	}
	@RequestMapping(value = "/getJson")
	@ResponseBody
	public JsonObject getJson(){
	    
		
		
		return this.buildSuccess("num", getStaticRandom(100));
	}
	
	@RequestMapping(value = "/Home5")
	@ResponseBody
	public JsonObject initHome5(){
		Map<String, Object> error = new HashMap<String, Object>();
		error.put("username", "用户名错误4444444444444444444444444");
		System.out.println("22222222222222222222222222222222");
		return this.paramError(error);
	}
	
	public static String getStaticRandom(long max){
		String result="";
	    for(int i=0;i<9;i++){
	    	result+=""+getRandom(max)+",";
	    }
	    result=result+getRandom(max);
		
		return result;
	}
	public static long getRandom(long max){
		long result=0;
		Random random=new Random();
		result=Math.abs(random.nextLong())%(max+1);
		return result;
	}
}
