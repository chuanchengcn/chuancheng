package com.taotaoti.systemstat.dao.impl;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.taotaoti.common.dao.AbstractDao;
import com.taotaoti.common.utils.DateUtils;
import com.taotaoti.systemstat.bo.SysSessionVisitorHistory;
import com.taotaoti.systemstat.dao.SysSessionVisitorHistoryColumns;
import com.taotaoti.systemstat.dao.SysSessionVisitorHistoryDao;
@Repository 
//@Repository、@Service、@Controller，它们分别对应存储层Bean，业务层Bean，和展示层Bean
public class SysSessionVistorHistoryDaoImpl extends AbstractDao<Integer, SysSessionVisitorHistory> implements SysSessionVisitorHistoryDao {

	@Override
	public SysSessionVisitorHistory createSysSessionVisitorHistory(SysSessionVisitorHistory sysSessionVisitorHistory) {
		// TODO Auto-generated method stub
		return super.create(sysSessionVisitorHistory);
	}


	@Override
	public int counts() {
		// TODO Auto-generated method stub
		return super.count();
	}

	@Override
	public int counts(Date today) {
		// TODO Auto-generated method stub  match(BeidouHistoryColumns.opTime,between(startTime, endTime))
		Date startDate = DateUtils.getStartOfDate(today);
		Date endDate = DateUtils.getEndOfDate(today);
		return super.count(match(SysSessionVisitorHistoryColumns.onlineTime,between(startDate, endDate)));
	}
	@Override
	public int counts(Date startDate,Date endDate) {
		startDate = DateUtils.getStartOfDate(startDate);
		endDate = DateUtils.getEndOfDate(endDate);
		return super.count(match(SysSessionVisitorHistoryColumns.onlineTime,between(startDate, endDate)));
	}


	@Override
	public List<SysSessionVisitorHistory> findAll(Date today) {
		// TODO Auto-generated method stub
		Date startDate = DateUtils.getStartOfDate(today);
		Date endDate = DateUtils.getEndOfDate(today);
		return super.find(match(SysSessionVisitorHistoryColumns.onlineTime,between(startDate, endDate)));
	}


	@Override
	public List<SysSessionVisitorHistory> findAll(Date startDate, Date endDate) {
		startDate = DateUtils.getStartOfDate(startDate);
		endDate = DateUtils.getEndOfDate(endDate);
		return super.find(match(SysSessionVisitorHistoryColumns.onlineTime,between(startDate, endDate)));
	}
	@Override
	public List<SysSessionVisitorHistory> findAllByLikeSession(String session) {
		// TODO Auto-generated method stub
		
		return super.find(match(SysSessionVisitorHistoryColumns.sessionId,like(session)));
	}

	@Override
	public SysSessionVisitorHistory getSysSessionVisitorHistoryBySessionId(
			String sessionId) {
		// TODO Auto-generated method stub
		return  super.findOne(match(SysSessionVisitorHistoryColumns.sessionId,sessionId));
	}


	@Override
	public List<SysSessionVisitorHistory> findAllByLoginUserId(int userId) {
		// TODO Auto-generated method stub
		return super.find(match(SysSessionVisitorHistoryColumns.memberId,userId));
	}


	

}
