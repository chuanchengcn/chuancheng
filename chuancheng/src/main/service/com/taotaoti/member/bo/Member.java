package com.taotaoti.member.bo;

import java.sql.Timestamp;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;

/**
 * Dsp对象
 */
@Table(db = "", name = "member", keyColumn = Columns.memberId)
public class Member extends BaseObject<Integer> {

	private static final long serialVersionUID = 1L;
	private String name;
	private String email;
	private String password;
	private Timestamp createtime;
	private Timestamp updatetime;
	private Integer roleid;

	// Constructors

	/** default constructor */
	public Member() {
	}

	/** minimal constructor */
	public Member(String name, String email, String password,
			Timestamp createtime, Timestamp updatetime) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.createtime = createtime;
		this.updatetime = updatetime;
	}

	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Timestamp getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Timestamp createtime) {
		this.createtime = createtime;
	}

	public Timestamp getUpdatetime() {
		return updatetime;
	}

	public void setUpdatetime(Timestamp updatetime) {
		this.updatetime = updatetime;
	}

	public Integer getRoleid() {
		return roleid;
	}

	public void setRoleid(Integer roleid) {
		this.roleid = roleid;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
