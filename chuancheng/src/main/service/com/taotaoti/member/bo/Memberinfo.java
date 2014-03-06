package com.taotaoti.member.bo;

import java.util.Date;

import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;

/**
 * Memberinfo entity. @author MyEclipse Persistence Tools
 */
@Table(db = "", name = "memberinfo", keyColumn = Columns.memberId)
public class Memberinfo extends BaseObject<Integer> {
	private String sex;
	private Date birthday;
	private String degree;
	private String qq;
	private String phone;
	private String weibo;
	private String address;
	private String country;
	private String province;
	private String city;
	private String postcode;
	private String telephone;
	private String description;
	private String remark;

	// Constructors

	public Memberinfo(){
	}
	/** minimal constructor */
	public Memberinfo(Integer memberid) {
		this.id = memberid;
	}

	/** full constructor */
	public Memberinfo(Integer memberid, String sex, Date birthday,
			String degree, String qq, String phone, String weibo,
			String address, String country, String province, String city,
			String postcode, String telephone, String description, String remark) {
		this.id = memberid;
		this.sex = sex;
		this.birthday = birthday;
		this.degree = degree;
		this.qq = qq;
		this.phone = phone;
		this.weibo = weibo;
		this.address = address;
		this.country = country;
		this.province = province;
		this.city = city;
		this.postcode = postcode;
		this.telephone = telephone;
		this.description = description;
		this.remark = remark;
	}
	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return this.birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getDegree() {
		return this.degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getQq() {
		return this.qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getWeibo() {
		return this.weibo;
	}

	public void setWeibo(String weibo) {
		this.weibo = weibo;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostcode() {
		return this.postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}