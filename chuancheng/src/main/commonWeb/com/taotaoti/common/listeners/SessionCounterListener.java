package com.taotaoti.common.listeners;
import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.taotaoti.common.utils.IPUtils;
import com.taotaoti.systemstat.bo.SysSessionVisitorHistory;
import com.taotaoti.systemstat.dao.SysSessionVisitorHistoryDao;
import com.taotaoti.systemstat.service.SysSessionVistorMgr;

public class SessionCounterListener implements HttpSessionListener,ServletRequestListener{
    private static final Log log = LogFactory.getLog(SessionCounterListener.class);
    private static int activeSessions = 0;//当前活动的人数
    private static int activeSessionsMax=0;// 目前为止最大人数
    private static int totalSessions=0;
    private HttpServletRequest request;
    
    public void init() throws ServletException {
        log.info("SessionCounter init!"); 

    } 
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        log.info("SessionCounter doGet!");
        HttpSession session = request.getSession();
    } 

    public void destroy() {
        log.info("SessionCounter destroy!");
    } 

    public void requestDestroyed(ServletRequestEvent event) {
    } 

    public void requestInitialized(ServletRequestEvent sre){
        request=(HttpServletRequest)sre.getServletRequest();
    } 

    public void sessionCreated(HttpSessionEvent httpSessionEvent) {
        log.info("SessionCounter sessionCreater!");
        HttpSession httpSession=httpSessionEvent.getSession();
        String sessionId = httpSession.getId();
        Timestamp createTime = new Timestamp(System.currentTimeMillis());
        String ip=IPUtils.getIpAddr(request);
        String accOs=IPUtils.getOsName(request);
        String accBrowser=IPUtils.getBrowserName(request);
        
        WebApplicationContext factory = WebApplicationContextUtils.getRequiredWebApplicationContext(httpSessionEvent.getSession().getServletContext());  
        SysSessionVistorMgr sysSessionVistorMgr = (SysSessionVistorMgr) factory.getBean("sysSessionVistorMgr");  
        
        
        SysSessionVisitorHistory sessionVisitorHistory=new SysSessionVisitorHistory(sessionId, ip, accBrowser, accOs, createTime);
        sysSessionVistorMgr.create(sessionVisitorHistory);
        activeSessions=activeSessions+1;
        totalSessions=totalSessions+1;
        
        if(totalSessions>activeSessionsMax){
        	activeSessionsMax=totalSessions;
        }
        
        log.info("生成 SESSION,sessionId = " + sessionId +"; createTime = " + createTime
                + "; 当前总SESSION值为 "+activeSessions);
    } 

    public void sessionDestroyed(HttpSessionEvent httpSessionEvent) {
        log.info("SessionCounter sessionDestroyed!");
        String sessionId = httpSessionEvent.getSession().getId();
        Timestamp overTime = new Timestamp(System.currentTimeMillis());
        if(activeSessions>0)activeSessions=activeSessions-1;
        log.info("销毁SESSION,sessionId = " + sessionId +"; overTime = " + overTime
                + "; 当前总SESSION值为 "+activeSessions);
    } 
    
    public static int getActiveSessions() {
        return activeSessions;
    } 

    public static void setActiveSessions(int i) {
        activeSessions = i;
    }
	public static int getActiveSessionsMax() {
		return activeSessionsMax;
	}
	public static void setActiveSessionsMax(int activeSessionsMax) {
		SessionCounterListener.activeSessionsMax = activeSessionsMax;
	}
	public static int getTotalSessions() {
		return totalSessions;
	}
	public static void setTotalSessions(int totalSessions) {
		SessionCounterListener.totalSessions = totalSessions;
	} 

} 