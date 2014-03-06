package com.taotaoti.member.vo;

import com.taotaoti.member.bo.Member;
import com.taotaoti.member.bo.Memberinfo;

public class AcountInfo extends Member {
	private static final long serialVersionUID = 4089458387116208127L;
	private Memberinfo memberinfo;
	private String[] authArr = new String[]{};
	private String[] roleArr = new String[]{};
	
	public AcountInfo() {
     super();
	}
	public AcountInfo(Member member){
		this.id=member.getId();
		this.setId(member.getId());
		this.setCreatetime(member.getCreatetime());
		this.setEmail(member.getEmail());
		this.setName(member.getName());
		this.setPassword(member.getPassword());
		this.setRoleid(member.getRoleid());
		this.setUpdatetime(member.getUpdatetime());
	}
	public AcountInfo(Member member,Memberinfo memberinfo){
		this.id=member.getId();
		this.setId(member.getId());
		this.setCreatetime(member.getCreatetime());
		this.setEmail(member.getEmail());
		this.setName(member.getName());
		this.setPassword(member.getPassword());
		this.setRoleid(member.getRoleid());
		this.setUpdatetime(member.getUpdatetime());
		this.memberinfo=memberinfo;
	}
	public Memberinfo getMemberinfo() {
		return memberinfo;
	}
	public void setMemberinfo(Memberinfo memberinfo) {
		this.memberinfo = memberinfo;
	}
	public String[] getAuthArr() {
		return authArr;
	}
	public void setAuthArr(String[] authArr) {
		this.authArr = authArr;
	}
	public String[] getRoleArr() {
		return roleArr;
	}
	public void setRoleArr(String[] roleArr) {
		this.roleArr = roleArr;
	}

}
