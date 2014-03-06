package com.taotaoti.member.dao;

import java.util.List;

import com.taotaoti.common.generic.dao.BaseDao;
import com.taotaoti.member.bo.Member;
import com.taotaoti.member.bo.Memberinfo;

public interface MemberInfoDao extends BaseDao<Integer, Memberinfo> {

	public List<Memberinfo> findAll();
	public int counts();
	public Memberinfo findMemberInfoByPhone(String phone);
}