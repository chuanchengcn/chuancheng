package com.taotaoti.member.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.taotaoti.member.bo.Auth;
import com.taotaoti.member.bo.Member;
import com.taotaoti.member.bo.Memberinfo;
import com.taotaoti.member.bo.Role;
import com.taotaoti.member.bo.Roleauth;
import com.taotaoti.member.constant.MemberConstant;
import com.taotaoti.member.dao.AuthDao;
import com.taotaoti.member.dao.MemberDao;
import com.taotaoti.member.dao.MemberInfoDao;
import com.taotaoti.member.dao.RoleAuthDao;
import com.taotaoti.member.dao.RoleDao;
import com.taotaoti.member.service.MemberMgr;
import com.taotaoti.member.vo.AcountInfo;
@Component
public class MemberMgrImpl implements MemberMgr {
	protected final static Log LOG = LogFactory.getLog(MemberMgrImpl.class);
	@Resource
	MemberDao memberDao;
	@Resource
	MemberInfoDao memberInfoDao;
	@Resource 
	RoleDao roleDao;
	@Resource
	RoleAuthDao roleAuthDao;
	@Resource 
	AuthDao authDao;
	
	@Override
	public AcountInfo getAcountInfoByMemberId(int memberId) {
		Member member=memberDao.get(memberId);
		if(member==null) 
			return null;
		else {
			AcountInfo acountInfo=new AcountInfo(member);
			Memberinfo memberinfo=memberInfoDao.get(member.getId());
			acountInfo.setMemberinfo(memberinfo);
			int roleid=member.getRoleid();
			Role role=roleDao.get(roleid);
			acountInfo.setRoleArr(new String[]{role.getName()});
			if(role!=null){
				List<Roleauth> roleauths=roleAuthDao.findAll(roleid);
				List<Integer> authids=new ArrayList<Integer>();
				for(int i=0;i<roleauths.size();i++){
					authids.add(roleauths.get(i).getAuthid());
				}
				List<Auth> auths=authDao.findByAuthids(authids);
				String [] authArr=new String[auths.size()];
				for(int i=0;i<auths.size();i++){
					authArr[i]=auths.get(i).getAuthcode();
				}
				acountInfo.setAuthArr(authArr);
				return acountInfo;
			}
			return null;
		}
		
	}

	@Override
	public List<AcountInfo> browseAcountInfos() {
		List<AcountInfo> acountInfos=new ArrayList<AcountInfo>();
		List<Member> members=memberDao.findAll();
		for(Member member:members){
		    AcountInfo acountInfo=new AcountInfo(member);
		    Memberinfo memberinfo=memberInfoDao.get(member.getId());
		    acountInfo.setMemberinfo(memberinfo);
		    acountInfos.add(acountInfo);    
		}
		return acountInfos;
	}

	@Override
	public AcountInfo getMemberByEmailAndPassword(String email, String password) {
				Member member=memberDao.findMemberByEmailAndPassword(email, password);
				if(member==null) 
					return null;
				else {
					AcountInfo acountInfo=new AcountInfo(member);
					Memberinfo memberinfo=memberInfoDao.get(member.getId());
					acountInfo.setMemberinfo(memberinfo);
					int roleid=member.getRoleid();
					Role role=roleDao.get(roleid);
					acountInfo.setRoleArr(new String[]{role.getName()});
					if(role!=null){
						List<Roleauth> roleauths=roleAuthDao.findAll(roleid);
						List<Integer> authids=new ArrayList<Integer>();
						for(int i=0;i<roleauths.size();i++){
							authids.add(roleauths.get(i).getAuthid());
						}
						List<Auth> auths=authDao.findByAuthids(authids);
						String [] authArr=new String[auths.size()];
						for(int i=0;i<auths.size();i++){
							authArr[i]=auths.get(i).getAuthcode();
						}
						acountInfo.setAuthArr(authArr);
						return acountInfo;
					}
					
				}
				return null;
	}
	@Override
	@Transactional
	public AcountInfo registerMember(String email, String dbpassword,
			String nickName, String phone) {
		Member member=new Member();
		member.setCreatetime(new Timestamp(System.currentTimeMillis()));
		member.setEmail(email);
		member.setName(nickName);
		member.setPassword(dbpassword);
		member.setRoleid(MemberConstant.ROLE_BAO_MEMBER);
		member=memberDao.create(member);
		try {
			Memberinfo memberinfo=new Memberinfo();
			memberinfo.setId(member.getId());
			memberinfo.setPhone(phone);
			memberInfoDao.create(memberinfo);
		} catch (Exception e) {
			LOG.error("create member is error ");
		}
		return getAcountInfoByMemberId(member.getId());
	}

	@Override
	public boolean isRegisterMember(String email, String phone) {
		Member member=memberDao.findMemberByEmail(email);
		if(member!=null) return true;
		Memberinfo memberinfo =memberInfoDao.findMemberInfoByPhone(phone);
		if(memberinfo!=null) return true;
		return false;
	}

	@Override
	public AcountInfo getMemberByPhoneAndPassword(String phone, String password) {
		Memberinfo memberinfo =memberInfoDao.findMemberInfoByPhone(phone);
		if(memberinfo==null)  return null;
		return  getAcountInfoByMemberId(memberinfo.getId());
	}

	@Override
	public boolean modifyMemberPassword(int memberId, String newPassword) {
		memberDao.modifyEmail(memberId, newPassword);
		return true;
	}

}
