package com.taotaoti.professor.bo;

import java.sql.Timestamp;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;

@Table(db = "chuancheng_jianbao", name = "professor", keyColumn = ProfessorColumns.professorid)
public class Professor extends BaseObject<Integer> {

	private static final long serialVersionUID = 1L;
	@Column(value=ProfessorColumns.name)
	private String name;
	@Column(value=ProfessorColumns.nickName)
	private String nickName;
	@Column(value=ProfessorColumns.photo)
	private String photo;
	@Column(value=ProfessorColumns.telephone)
	private String telephone;
	@Column(value=ProfessorColumns.iphone)
	private String iphone ;
	@Column(value=ProfessorColumns.sex)
	private String sex;
	@Column(value=ProfessorColumns.birthday)
	private Timestamp birthday;
	@Column(value=ProfessorColumns.nation)
	private String nation;
	@Column(value=ProfessorColumns.province)
	private String province;
	@Column(value=ProfessorColumns.city)
	private String city;
	@Column(value=ProfessorColumns.country)
	private String country;
	@Column(value=ProfessorColumns.address)
	private String address;
	
	@Column(value=ProfessorColumns.introduce)
	private String introduce;
	
	@Column(value=ProfessorColumns.memberId)
	private int memberId ;
	@Column(value=ProfessorColumns.createTime)
	private Timestamp createTime;
	@Column(value=ProfessorColumns.updateTime)
	private Timestamp updateTime;
	@Column(value=ProfessorColumns.createMemberId)
	private int createMemberId;
	@Column(value=ProfessorColumns.vistorCount)
	private int vistorCount;
	@Column(value=ProfessorColumns.followCount)
	private int followCount;
	@Column(value=ProfessorColumns.hot)
	private int hot;
	@Column(value=ProfessorColumns.identifiedCount)
	private int identifiedCount;
	@Column(value=ProfessorColumns.identifyingCount)
	private int identifyingCount;
	@Column(value=ProfessorColumns.statu)
	private int statu;
	@Column(value=ProfessorColumns.storeId)
	private int storeId;
	
	
	public Professor() {
	}
	public Professor(int professorid, String name, String nickName,
			String photo, String telephone, String iphone, String sex,
			Timestamp birthday, String nation, String province, String city,
			String country, String address, String introduce, int memberId,
			Timestamp createTime, Timestamp updateTime, int createMemberId,
			int vistorCount, int followCount, int hot, int identifiedCount,
			int identifyingCount, int statu) {
		this.id=professorid;
		this.name = name;
		this.nickName = nickName;
		this.photo = photo;
		this.telephone = telephone;
		this.iphone = iphone;
		this.sex = sex;
		this.birthday = birthday;
		this.nation = nation;
		this.province = province;
		this.city = city;
		this.country = country;
		this.address = address;
		this.introduce = introduce;
		this.memberId = memberId;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.createMemberId = createMemberId;
		this.vistorCount = vistorCount;
		this.followCount = followCount;
		this.hot = hot;
		this.identifiedCount = identifiedCount;
		this.identifyingCount = identifyingCount;
		this.statu = statu;
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
	public Timestamp getBirthday() {
		return birthday;
	}
	public void setBirthday(Timestamp birthday) {
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
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	public Timestamp getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Timestamp updateTime) {
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public int getStoreId() {
		return storeId;
	}
	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}
	
}
