package com.taotaoti.systemstat.bo;


import java.sql.Timestamp;
import java.util.Date;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;
import com.taotaoti.common.generic.constant.DBGlobalConstant;
import com.taotaoti.systemstat.dao.SysSessionVisitorHistoryColumns;

@Table(db = DBGlobalConstant.SYSCOMMON, name = "sys_session_visitor_history", keyColumn = SysSessionVisitorHistoryColumns.id) 
public class SysSessionVisitorHistory  extends BaseObject<Integer>  implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	@Column(maybeModified=false, value=SysSessionVisitorHistoryColumns.sessionId)
	private   String sessionId;
	private   String ip;
	private   String accBrowser;
	private   String accOs;
	private   Timestamp onlineTime;
	private   Date addTime;
	@Column(maybeModified=false, value=SysSessionVisitorHistoryColumns.memberId)
	private   Integer memberId;

	// Constructors

	/** default constructor */
	public SysSessionVisitorHistory() {
		super();
	}
	public SysSessionVisitorHistory(String sessionId,String ip,String accBrowser,String accOs,Timestamp onlineTime){
		super();
		this.sessionId=sessionId;
		this.ip=ip;
		this.accBrowser=accBrowser;
		this.accOs=accOs;
		this.onlineTime=onlineTime;
		this.addTime=new Date(System.currentTimeMillis());
	}
	

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getAccBrowser() {
		return accBrowser;
	}

	public void setAccBrowser(String accBrowser) {
		this.accBrowser = accBrowser;
	}

	public String getAccOs() {
		return accOs;
	}

	public void setAccOs(String accOs) {
		this.accOs = accOs;
	}

	public Timestamp getOnlineTime() {
		return onlineTime;
	}

	public void setOnlineTime(Timestamp onlineTime) {
		this.onlineTime = onlineTime;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public Integer getMemberId() {
		return memberId;
	}

	public void setMemberId(Integer memberId) {
		this.memberId = memberId;
	}

	

}