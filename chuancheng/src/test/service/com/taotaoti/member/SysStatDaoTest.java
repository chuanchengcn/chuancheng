/*******************************************************************************
 * CopyRight (c) 2000-2012 Baidu Online Network Technology (Beijing) Co., Ltd. All rights reserved.
 * Filename:    AdviewBaseTest.java
 * Creator:     <a href="mailto:xuxiaohu@baidu.com">Xu,Xiaohu</a>
 * Create-Date: 2013-5-8 下午5:29:30
 *******************************************************************************/
package com.taotaoti.member;

import java.sql.Timestamp;
import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;

import com.taotaoti.common.BaseTestCase;
import com.taotaoti.systemstat.bo.SysSessionVisitorHistory;
import com.taotaoti.systemstat.dao.SysSessionVisitorHistoryDao;

public class SysStatDaoTest extends BaseTestCase {

	@Resource
	private SysSessionVisitorHistoryDao sessionVisitorHistoryDao;
	
	//@Test
	public void testSessionVisitor(){
		int sum=sessionVisitorHistoryDao.counts(new Date(System.currentTimeMillis()));
		System.out.println(sum);
	}
	
	//@Test
	public void testSaveSessionVisitor(){
		SysSessionVisitorHistory sessionVisitorHistory=new SysSessionVisitorHistory();
		sessionVisitorHistory.setIp("1111");
		sessionVisitorHistory.setAccBrowser("1111");
		sessionVisitorHistory.setAccOs("1111");
		sessionVisitorHistory.setMemberId(1);
		sessionVisitorHistory.setOnlineTime(new Timestamp(System.currentTimeMillis()));
		sessionVisitorHistory.setAddTime(new Date(System.currentTimeMillis()));
		sessionVisitorHistory.setSessionId("3333333333333333");
		
		sessionVisitorHistoryDao.create(sessionVisitorHistory);
	}
}
