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
import com.taotaoti.systemmessage.bo.SysContactMessage;
import com.taotaoti.systemmessage.dao.SysContactMessageDao;
import com.taotaoti.systemstat.bo.SysSessionVisitorHistory;
import com.taotaoti.systemstat.dao.SysSessionVisitorHistoryDao;

public class SystemMessageDaoTest extends BaseTestCase {

	@Resource
	private SysContactMessageDao sysContactMessageDao;
	
	@Test
	public void testSessionVisitor(){
		int sum=sysContactMessageDao.counts();
		System.out.println(sum);
	}
	@Test
	public void testSaveSessionVisitor(){
		SysContactMessage sysContactMessage=new SysContactMessage("liu", "liangxiang", "liulxiang@gmail.com", "error", "conntent", 1);
		
		
		sysContactMessageDao.create(sysContactMessage);
	}
}
