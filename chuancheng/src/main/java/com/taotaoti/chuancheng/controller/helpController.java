package com.taotaoti.chuancheng.controller;

import java.sql.Timestamp;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.taotaoti.common.controller.BaseController;
import com.taotaoti.common.utils.IPUtils;
import com.taotaoti.systemstat.bo.SysSessionVisitorHistory;
import com.taotaoti.systemstat.service.SysSessionVistorMgr;

@Controller
@RequestMapping("/help")
public class helpController extends BaseController {
	private static final Logger LOG = LoggerFactory.getLogger(helpController.class);
	@Resource
	SysSessionVistorMgr sessionVistorMgr;
	
	@RequestMapping(value = "/chuanchengshop")
	public ModelAndView forwardChuanchengshop(HttpServletRequest request){
		LOG.info("change to chuanchangshop ");
		SysSessionVisitorHistory sessionVisitorHistory=new SysSessionVisitorHistory();
		sessionVisitorHistory.setIp(IPUtils.getBrowserName(request));
		sessionVisitorHistory.setAccBrowser("从鉴宝网导入商城");
		sessionVisitorHistory.setAccOs("windows");
		sessionVisitorHistory.setOnlineTime(new Timestamp(System.currentTimeMillis()));
		sessionVisitorHistory.setAddTime(new Date(System.currentTimeMillis()));
		String sessionId = request.getSession().getId();
		sessionVisitorHistory.setSessionId(sessionId);
		sessionVisitorHistory.setMemberId(0);
		sessionVistorMgr.create(sessionVisitorHistory);
		return this.buildSuccessByRedirectOnlyUrl("http://www.chuancheng365.com/?from=chuancheng.cn");
	}
}
