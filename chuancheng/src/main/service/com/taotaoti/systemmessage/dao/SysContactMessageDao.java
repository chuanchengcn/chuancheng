
package com.taotaoti.systemmessage.dao;

import java.util.Date;
import java.util.List;

import com.taotaoti.common.generic.dao.BaseDao;
import com.taotaoti.systemmessage.bo.SysContactMessage;


public interface SysContactMessageDao extends BaseDao<Integer, SysContactMessage> {

	public List<SysContactMessage> findAll();
	public List<SysContactMessage> findAll(Date today);
	public List<SysContactMessage> findAll(Date startDate,Date endDate);
	
	public SysContactMessage createSysContactMessage(SysContactMessage sysContactMessage);
	
	public int counts();
	
}