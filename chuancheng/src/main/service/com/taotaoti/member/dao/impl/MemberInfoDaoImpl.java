package com.taotaoti.member.dao.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import com.taotaoti.common.dao.AbstractDao;
import com.taotaoti.member.bo.Columns;
import com.taotaoti.member.bo.Memberinfo;
import com.taotaoti.member.dao.MemberInfoDao;


@Repository
public class MemberInfoDaoImpl extends AbstractDao<Integer, Memberinfo> implements MemberInfoDao{
	
	 protected final static Log LOG = LogFactory.getLog(MemberInfoDaoImpl.class);
	@Override
	public List<Memberinfo> findAll() {
		return find();
	}
	@Override
	public int counts() {
		return count();
	}
	@Override
	public Memberinfo findMemberInfoByPhone(String phone) {
		return this.findOne(match(Columns.MemberInfoColumns.phone, phone));
	}
}
