package com.taotaoti.common.web.interceptor;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import com.taotaoti.common.commons.ThreadContext;
import com.taotaoti.common.redis.RedisCacheManager;
import com.taotaoti.common.utils.CookieUtils;
import com.taotaoti.common.utils.HttpUtils;
import com.taotaoti.common.utils.MD5;
import com.taotaoti.common.vo.Visitor;
import com.taotaoti.common.web.constant.UserWebConstant;
import com.taotaoti.common.web.member.controller.LoginConstant;
import com.taotaoti.common.web.session.SessionProvider;
import com.taotaoti.member.bo.Member;
import com.taotaoti.member.service.MemberMgr;
import com.taotaoti.member.vo.AcountInfo;

public class LoginInterceptor extends WebCommonInterceptor {

	private static final Log LOG = LogFactory.getLog(LoginInterceptor.class);
	@Resource
	private MemberMgr memberMgr;
	@Resource
	private RedisCacheManager redisCacheMgr;
	
	private List<String> notJsonPathList;
	
	private List<String> notInterceptPathList;
	
	@Override
	public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3) throws Exception {
		ThreadContext.clean();
	}

	@Override
	public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3) throws Exception {
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

		// 去掉不需拦截的path
		String requestPath = request.getRequestURI();
		if(notInterceptPathList != null && notInterceptPathList.contains(requestPath)){
			return true;
		}
/*
		// 从cookie 中获取taotaotiId 等信息
		String taotaotiId = CookieUtils.getCookieValue(request, LoginConstant.TAOTAOTI_COOKIE_NAME);
		String cookieUserId = CookieUtils.getCookieValue(request, LoginConstant.TAOTAOTI_COOKIE_USERID);
		String cookieEmail = CookieUtils.getCookieValue(request, LoginConstant.TAOTAOTI_COOKIE_EMAIL);
		String cookiePassword = CookieUtils.getCookieValue(request, LoginConstant.TAOTAOTI_COOKIE_PASSWORD);
		
		// 验证是否JSON请求
		boolean jsonEnabled = true;
		if(notJsonPathList != null && notJsonPathList.contains(requestPath)){
			jsonEnabled = false;
		}
		// 判断session中是否有visitor
		HttpSession session = request.getSession();
		Visitor visitor = (Visitor)session.getAttribute(UserWebConstant.USER_KEY);
		// 抛出没有登录的异常
		if (visitor==null) {
			if (jsonEnabled) {
				returnJsonSystemError(request, response, "请登录系统");
			}
			else{
				response.sendRedirect(LoginConstant.getUC_LOGIN_URL());
			}
			return false;
		}
		// 判断redis 中是否有visitor
		if(taotaotiId != null){
			visitor = (Visitor)redisCacheMgr.get(taotaotiId + UserWebConstant.USER_KEY);
		}
		// 抛出没有登录的异常
		if (visitor==null) {
			if (jsonEnabled) {
				returnJsonSystemError(request, response, "请登录系统");
			}
			else{
				response.sendRedirect(LoginConstant.getUC_LOGIN_URL());
			}
			return false;
		}
		
		

		
		*//**
		 * 设置visitor
		 *//*
		ThreadContext.init();
		if(canDisposeVisitor(taotaotiId, session, visitor)){
			return true;
		}
		// 没有获取到visitor，跳转到登录页
		LOG.error("do not get visitor, redirect to login page");
		response.sendRedirect(LoginConstant.getUC_LOGIN_URL());
		return false;*/
		
		// 判断session中是否有visitor
		HttpSession session = request.getSession();
		Visitor visitor = (Visitor)session.getAttribute(UserWebConstant.USER_KEY);
		// 抛出没有登录的异常
//		if (visitor==null) {
//			System.out.println(LoginConstant.getUC_LOGIN_URL());
//			response.(LoginConstant.getUC_LOGIN_URL());
//			return false;
//		}
		if (visitor == null) {
			String loginPage=request.getContextPath()+"/login";
//			LOG.info("servlet path="+request.getServletPath());
//			LOG.info("servlet path="+request.getContextPath());
			response.sendRedirect(loginPage);
			return super.preHandle(request, response, handler);
		} else {
			//return super.preHandle(request, response, handler);
			return true;
		}
	}

	private boolean canDisposeVisitor(String taotaotiId, HttpSession session, Visitor visitor){
		if(visitor instanceof Visitor){
			updateSessionVisitor(session, visitor);
			return true;
		}
		return false;
	}
	private void updateSessionVisitor(HttpSession session, Visitor visitor){
		session.setAttribute(UserWebConstant.USER_KEY, visitor);
		ThreadContext.putSessionVisitor(visitor);
	}
	
	/**
	 * @return the notJsonPathList
	 */
	public List<String> getNotJsonPathList() {
		return notJsonPathList;
	}

	/**
	 * @param notJsonPathList the notJsonPathList to set
	 */
	public void setNotJsonPathList(List<String> notJsonPathList) {
		this.notJsonPathList = notJsonPathList;
	}

	/**
	 * @return the notInterceptPathList
	 */
	public List<String> getNotInterceptPathList() {
		return notInterceptPathList;
	}

	/**
	 * @param notInterceptPathList the notInterceptPathList to set
	 */
	public void setNotInterceptPathList(List<String> notInterceptPathList) {
		this.notInterceptPathList = notInterceptPathList;
	}

	
}
