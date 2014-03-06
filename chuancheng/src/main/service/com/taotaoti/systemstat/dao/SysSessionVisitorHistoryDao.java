
package com.taotaoti.systemstat.dao;

import java.util.Date;
import java.util.List;

import com.taotaoti.common.generic.dao.BaseDao;
import com.taotaoti.systemstat.bo.SysSessionVisitorHistory;


public interface SysSessionVisitorHistoryDao extends BaseDao<Integer, SysSessionVisitorHistory> {

	public List<SysSessionVisitorHistory> findAll();
	public List<SysSessionVisitorHistory> findAll(Date today);
	public List<SysSessionVisitorHistory> findAll(Date startDate,Date endDate);
	public List<SysSessionVisitorHistory> findAllByLoginUserId(int userId);
	public List<SysSessionVisitorHistory> findAllByLikeSession(String session);
	
	public SysSessionVisitorHistory createSysSessionVisitorHistory(SysSessionVisitorHistory sysSessionVisitorHistory);
	public SysSessionVisitorHistory getSysSessionVisitorHistoryBySessionId(String sessionId);
	
	public int counts();
	public int counts(Date today);
	public int counts(Date startDate,Date endDate);
}