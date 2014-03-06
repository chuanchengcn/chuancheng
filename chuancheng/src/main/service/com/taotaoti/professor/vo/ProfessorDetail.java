package com.taotaoti.professor.vo;

import java.sql.Timestamp;
import java.util.List;

import com.taotaoti.common.utils.DateUtils;
import com.taotaoti.professor.bo.Professor;
import com.taotaoti.professor.bo.WorkExperience;


public class ProfessorDetail {
	private int professorid;
	private String name;
	private String nickName;
	private String photo;
	private String telephone;
	private String iphone ;
	private String sex;
	private String birthday;
	private String nation;
	private String province;
	private String city;
	private String country;
	private String address;
	private String introduce;
	private int memberId ;
	private String createTime;
	private String updateTime;
	private int createMemberId;
	private int vistorCount;
	private int followCount;
	private int hot;
	private int identifiedCount;
	private int identifyingCount;
	private int statu;
	
	private List<WorkExperience> workExperiences;
   public ProfessorDetail(Professor professor,List<WorkExperience>  workExperiences){
	    this.professorid=professor.getId();
		this.name = professor.getName();
		this.nickName =professor.getNickName() ;
		this.photo = professor.getPhoto();
		this.telephone = professor.getTelephone();
		this.iphone = professor.getIphone();
		this.sex = professor.getSex();
		this.birthday = DateUtils.format(professor.getBirthday());
		this.nation = professor.getNation();
		this.province = professor.getProvince();
		this.city = professor.getCity();
		this.country = professor.getCountry();
		this.address = professor.getAddress();
		this.introduce = professor.getIntroduce();
		this.memberId = professor.getMemberId();
		this.createTime =DateUtils.format(professor.getCreateTime());
		this.updateTime = DateUtils.format(professor.getUpdateTime());
		this.createMemberId = professor.getCreateMemberId();
		this.vistorCount = professor.getVistorCount();
		this.followCount = professor.getFollowCount();
		this.hot = professor.getHot();
		this.identifiedCount = professor.getIdentifiedCount();
		this.identifyingCount = professor.getIdentifyingCount();
		this.statu = professor.getStatu();
		this.workExperiences=workExperiences;
   }
   public ProfessorDetail(Professor professor){
	   this.professorid=professor.getId();
	   this.name = professor.getName();
	   this.nickName =professor.getNickName() ;
	   this.photo = professor.getPhoto();
	   this.telephone = professor.getTelephone();
	   this.iphone = professor.getIphone();
	   this.sex = professor.getSex();
	   this.birthday = DateUtils.format(professor.getBirthday());
	   this.nation = professor.getNation();
	   this.province = professor.getProvince();
	   this.city = professor.getCity();
	   this.country = professor.getCountry();
	   this.address = professor.getAddress();
	   this.introduce = professor.getIntroduce();
	   this.memberId = professor.getMemberId();
	   this.createTime =DateUtils.format(professor.getCreateTime());
	   this.updateTime = DateUtils.format(professor.getUpdateTime());
	   this.createMemberId = professor.getCreateMemberId();
	   this.vistorCount = professor.getVistorCount();
	   this.followCount = professor.getFollowCount();
	   this.hot = professor.getHot();
	   this.identifiedCount = professor.getIdentifiedCount();
	   this.identifyingCount = professor.getIdentifyingCount();
	   this.statu = professor.getStatu();
   }
public int getProfessorid() {
	return professorid;
}
public void setProfessorid(int professorid) {
	this.professorid = professorid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getNickName() {
	return nickName;
}
public void setNickName(String nickName) {
	this.nickName = nickName;
}
public String getPhoto() {
	return photo;
}
public void setPhoto(String photo) {
	this.photo = photo;
}
public String getTelephone() {
	return telephone;
}
public void setTelephone(String telephone) {
	this.telephone = telephone;
}
public String getIphone() {
	return iphone;
}
public void setIphone(String iphone) {
	this.iphone = iphone;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getBirthday() {
	return birthday;
}
public void setBirthday(String birthday) {
	this.birthday = birthday;
}
public String getNation() {
	return nation;
}
public void setNation(String nation) {
	this.nation = nation;
}
public String getProvince() {
	return province;
}
public void setProvince(String province) {
	this.province = province;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getIntroduce() {
	return introduce;
}
public void setIntroduce(String introduce) {
	this.introduce = introduce;
}
public int getMemberId() {
	return memberId;
}
public void setMemberId(int memberId) {
	this.memberId = memberId;
}
public String getCreateTime() {
	return createTime;
}
public void setCreateTime(String createTime) {
	this.createTime = createTime;
}
public String getUpdateTime() {
	return updateTime;
}
public void setUpdateTime(String updateTime) {
	this.updateTime = updateTime;
}
public int getCreateMemberId() {
	return createMemberId;
}
public void setCreateMemberId(int createMemberId) {
	this.createMemberId = createMemberId;
}
public int getVistorCount() {
	return vistorCount;
}
public void setVistorCount(int vistorCount) {
	this.vistorCount = vistorCount;
}
public int getFollowCount() {
	return followCount;
}
public void setFollowCount(int followCount) {
	this.followCount = followCount;
}
public int getHot() {
	return hot;
}
public void setHot(int hot) {
	this.hot = hot;
}
public int getIdentifiedCount() {
	return identifiedCount;
}
public void setIdentifiedCount(int identifiedCount) {
	this.identifiedCount = identifiedCount;
}
public int getIdentifyingCount() {
	return identifyingCount;
}
public void setIdentifyingCount(int identifyingCount) {
	this.identifyingCount = identifyingCount;
}
public int getStatu() {
	return statu;
}
public void setStatu(int statu) {
	this.statu = statu;
}
public List<WorkExperience> getWorkExperiences() {
	return workExperiences;
}
public void setWorkExperiences(List<WorkExperience> workExperiences) {
	this.workExperiences = workExperiences;
}

}
