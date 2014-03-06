package com.taotaoti.systemstat.service.impl;

import javax.annotation.Resource;

import com.taotaoti.systemstat.bo.SysSessionVisitorHistory;
import com.taotaoti.systemstat.dao.SysSessionVisitorHistoryDao;
import com.taotaoti.systemstat.service.SysSessionVistorMgr;

public class SysSessionVistorMgrImpl implements SysSessionVistorMgr {
	
	@Resource
	private SysSessionVisitorHistoryDao sessionVisitorHistoryDao;
	
	public SysSessionVisitorHistory create(SysSessionVisitorHistory sessionVisitorHistory){
		return sessionVisitorHistoryDao.create(sessionVisitorHistory);
	}
}