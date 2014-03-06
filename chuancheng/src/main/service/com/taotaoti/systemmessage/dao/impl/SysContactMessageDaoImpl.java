package com.taotaoti.systemmessage.dao.impl;

import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.taotaoti.common.dao.AbstractDao;
import com.taotaoti.common.utils.DateUtils;
import com.taotaoti.systemmessage.bo.SysContactMessage;
import com.taotaoti.systemmessage.dao.SysContactMessageColumns;
import com.taotaoti.systemmessage.dao.SysContactMessageDao;
@Repository 
public class SysContactMessageDaoImpl extends AbstractDao<Integer, SysContactMessage> implements SysContactMessageDao {

	@Override
	public SysContactMessage createSysContactMessage(SysContactMessage sysContactMessage) {
		// TODO Auto-generated method stub
		return super.create(sysContactMessage);
	}


	@Override
	public int counts() {
		// TODO Auto-generated method stub
		return super.count();
	}

	

	@Override
	public List<SysContactMessage> findAll(Date today) {
		// TODO Auto-generated method stub
		Date startDate = DateUtils.getStartOfDate(today);
		Date endDate = DateUtils.getEndOfDate(today);
		return super.find(match(SysContactMessageColumns.addTime,between(startDate, endDate)));
	}

	@Override
	public List<SysContactMessage> findAll(Date startDate, Date endDate) {
		startDate = DateUtils.getStartOfDate(startDate);
		endDate = DateUtils.getEndOfDate(endDate);
		return super.find(match(SysContactMessageColumns.addTime,between(startDate, endDate)));
	}

}
