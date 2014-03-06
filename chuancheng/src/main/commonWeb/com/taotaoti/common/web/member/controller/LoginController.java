package com.taotaoti.common.web.member.controller;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.taotaoti.common.controller.BaseController;
import com.taotaoti.common.redis.RedisCacheManager;
import com.taotaoti.common.utils.HttpUtils;
import com.taotaoti.common.utils.MD5;
import com.taotaoti.common.vo.JsonObject;
import com.taotaoti.common.vo.Visitor;
import com.taotaoti.common.web.session.SessionProvider;
import com.taotaoti.constants.GlobalConstant;
import com.taotaoti.member.bo.Member;
import com.taotaoti.member.dao.MemberDao;
import com.taotaoti.member.facade.MemberFacade;
import com.taotaoti.member.service.MemberMgr;
import com.taotaoti.member.vo.AcountInfo;

@Controller
public class LoginController extends BaseController {
	private static final Logger LOG = LoggerFactory.getLogger(LoginController.class);
	@Resource
	private MemberFacade memberFacade;
	@Resource 
	private SessionProvider session;
	
	@Resource
	private RedisCacheManager redisCacheMgr;
	
	@RequestMapping(value = "/register")
	public ModelAndView register(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("email") String email, 
			@RequestParam("nickName") String nickName, 
			@RequestParam("password") String password,
			@RequestParam("phone") String phone,
			ModelMap model){
		String dbPassword=MD5.getMd5(password);
		AcountInfo acountInfo=null;
		if(!memberFacade.isRegisterMember(email, phone)){
			acountInfo=memberFacade.registerMember(email, dbPassword, nickName, phone);
			LOG.info("register success!");
		}
		if(acountInfo!=null){
			initVisterSessionAndRedis(request,response,acountInfo);
			return this.buildSuccessByRedirectOnlyUrl(LoginConstant.getACCOUNT_HOME_URL());
		}else {
			return this.buildModelAndViewParamError(model, LoginConstant.getERROR(), "error", "注册失败，用户已经存在");
		}  
	}
	
	@RequestMapping(value = "/memberLogin", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("email") String email, 
			@RequestParam("password") String password,
			ModelMap model){
		
		    errors=new HashMap<String, Object>();
		  if(validatorUser(email, password)){
	    	String dbPassword=MD5.getMd5(password);
	    	 AcountInfo acountInfo =memberFacade.getMemberByEmailAndPassword(email, dbPassword);
	    	 if(acountInfo==null) 
	    		 acountInfo =memberFacade.getMemberByPhoneAndPassword(email, dbPassword);
			if(acountInfo!=null){
				initVisterSessionAndRedis(request,response,acountInfo);
				return this.buildSuccessByRedirectOnlyUrl(LoginConstant.getACCOUNT_HOME_URL());
			}else {
				return this.buildModelAndViewBusinessError(model, LoginConstant.getUC_LOGIN_URL(), "会员不存在！");
			}
	      }else{
	    	return this.buildModelAndViewBusinessError(model, LoginConstant.getUC_LOGIN_URL(), "登陆信息有误！");
	    }
	}
	@RequestMapping(value = "/admin/memberLogin", method = RequestMethod.POST)
	public String adminLogin(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam("email") String email, 
			@RequestParam("password") String password,
			ModelMap model){
		    LOG.info("login ");
		    errors=new HashMap<String, Object>();
		if(validatorUser(email, password)){
	    	String dbPassword=MD5.getMd5(password);
	    	AcountInfo acountInfo=memberFacade.getMemberByEmailAndPassword(email, dbPassword);
			if(acountInfo!=null){
				initVisterSessionAndRedis(request,response,acountInfo);
				return GlobalConstant.getADMIN_UC_HOME_URL();
			}else {
				return this.buildBusinessError(model, GlobalConstant.getADMIN_UC_LOGIN_URL(), "管理员不存在！");
			}
	      }else{
	    	
	    	return this.buildBusinessError(model, GlobalConstant.getADMIN_UC_LOGIN_URL(), "验证失败！");
	    }
	}
  public boolean validatorUser(String email,String password){
		if(email!=null&& password!=null){
			if(email.contains("@")&&password.length()>=6){
				return true;
			}else{
				this.errors.put("validatorError", "email 错误");
			}
		}else
		     this.errors.put("validatorError", "不能为空");
		return false;
	}
	public void initVisterSessionAndRedis(HttpServletRequest request,HttpServletResponse response,AcountInfo member){
		
		String userId=""+member.getId();
		Cookie cookieUserId = new Cookie(LoginConstant.TAOTAOTI_COOKIE_USERID, userId);  
		cookieUserId.setMaxAge(24 * 60 * 60 * 30);
		response.addCookie(cookieUserId);
		
		String taotaotiId=MD5.getMd5("TAOTAOTI"+member.getId());
		Cookie cookie = new Cookie(LoginConstant.TAOTAOTI_COOKIE_NAME, taotaotiId);  
		cookie.setMaxAge(24 * 60 * 60 * 30);
		response.addCookie(cookie);
		
		Cookie cookieEmail = new Cookie(LoginConstant.TAOTAOTI_COOKIE_EMAIL, member.getEmail());  
		cookieEmail.setMaxAge(24 * 60 * 60 * 30);
		response.addCookie(cookieEmail);
		
		Cookie cookiePassword = new Cookie(LoginConstant.TAOTAOTI_COOKIE_PASSWORD, member.getPassword());  
		cookiePassword.setMaxAge(24 * 60 * 60 * 30);
        response.addCookie(cookiePassword);
        
        visitor = new Visitor();
        visitor.setTaotaotiId(taotaotiId);
        visitor.setUserid(member.getId());
        visitor.setUsername(member.getName());
        visitor.setIp(HttpUtils.getHttpForwardIp(request));
        visitor.setEmail(member.getEmail());
        visitor.setAuthArr(member.getAuthArr());
        visitor.setRoleArr(member.getRoleArr());
		session.setAttributeAsVisitor(request, visitor);
		
		//redisCacheMgr.put(taotaotiId + UserWebConstant.USER_KEY, LoginConstant.SESSION_EXPIRE_TIME, visitor);
		
	}
	public SessionProvider getSession() {
		return session;
	}
	public void setSession(SessionProvider session) {
		this.session = session;
	}
	public RedisCacheManager getRedisCacheMgr() {
		return redisCacheMgr;
	}
	public void setRedisCacheMgr(RedisCacheManager redisCacheMgr) {
		this.redisCacheMgr = redisCacheMgr;
	}
}
