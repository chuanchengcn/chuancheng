/*******************************************************************************
 * CopyRight (c) 2000-2012 Baidu Online Network Technology (Beijing) Co., Ltd. All rights reserved.
 * Filename:    AdviewBaseTest.java
 * Creator:     <a href="mailto:xuxiaohu@baidu.com">Xu,Xiaohu</a>
 * Create-Date: 2013-5-8 下午5:29:30
 *******************************************************************************/
package com.taotaoti.member;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;

import com.taotaoti.common.BaseTestCase;
import com.taotaoti.member.bo.Member;
import com.taotaoti.member.bo.Memberinfo;
import com.taotaoti.member.dao.MemberInfoDao;

public class MemmberInfoDaoTest extends BaseTestCase {
	
	@Resource
	private MemberInfoDao memberInfoDao;
	
	//@Test
	public void testfindAll(){
		List<Memberinfo> list= memberInfoDao.findAll();
		System.out.println(list.size());
	}
	
	@Test
	public void testSaveMemberInfo(){
		Memberinfo memberinfo=new Memberinfo(2);
		memberinfo.setDescription("ddddddddddddddddddddddd");
		System.out.println("=============================");
		Memberinfo m=memberInfoDao.create(memberinfo);
		System.out.println("============================="+m.getId());
	}
	//@Test 
	public void otherMemberInfo(){
		//memberDao.delete(13);
		System.out.println(memberInfoDao.counts());
	}


	
}
