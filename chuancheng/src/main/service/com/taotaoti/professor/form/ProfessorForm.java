package com.taotaoti.professor.form;

import java.sql.Timestamp;
import java.text.ParseException;
import java.util.List;

import com.taotaoti.common.utils.DateUtils;
import com.taotaoti.common.utils.Tools;
import com.taotaoti.professor.bo.Professor;

import net.sf.cglib.core.TinyBitSet;

/**
 * 用于接收前端参数
 * 
 * @author liujie
 * @version 
 */
public class ProfessorForm {
	/**
	 * 真实姓名
	 */
	private String name;
	/**
	 * 昵称
	 */
	private String nickName;
	/**
	 * 头像
	 */
	private String photo;
	/**
	 * 电话
	 */
	private String telephone;;
	/**
	 * 手机
	 */
	private String iphone;
	/**
	 * 性别
	 */
	private String sex;
	/**
	 * 生日
	 */
	private String birthday;
	/**
	 * 国家
	 */
	private String nation;
	/**
	 * 省份
	 */
	private String province;
	/**
	 * 城市
	 */
	private String city;
	/**
	 * 县
	 */
	private String country;
	/**
	 * 地址
	 */
	private String address;
	/**
	 * 简介
	 */
	private String introduce;
	
	
	public Professor getProfessorByProfessorForm(ProfessorForm professorForm){
		Professor professor =new Professor();
		professor.setName(professorForm.getName());
		professor.setNickName(professorForm.getNickName());
		professor.setPhoto(professorForm.getPhoto());
		professor.setTelephone(professorForm.getTelephone());
		professor.setIphone(professorForm.getIphone());
		professor.setSex(professorForm.getSex());
		if(professorForm.getBirthday()!=null)
			try {
				professor.setBirthday(DateUtils.convertSqlDate(Tools.dateFormat(professorForm.getBirthday())));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		professor.setNation(professorForm.getNation());
		professor.setProvince(professorForm.getProvince());
		professor.setCity(professorForm.getCity());
		professor.setCountry(professorForm.getCountry());
		professor.setAddress(professorForm.getAddress());
		return professor;
	}
	public Professor getProfessorByProfessorForm(ProfessorForm professorForm,Professor professor){
		professor.setName(professorForm.getName());
		professor.setNickName(professorForm.getNickName());
		professor.setPhoto(professorForm.getPhoto());
		professor.setTelephone(professorForm.getTelephone());
		professor.setIphone(professorForm.getIphone());
		professor.setSex(professorForm.getSex());
		if(professorForm.getBirthday()!=null)
			try {
				professor.setBirthday(DateUtils.convertSqlDate(Tools.dateFormat(professorForm.getBirthday())));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		professor.setNation(professorForm.getNation());
		professor.setProvince(professorForm.getProvince());
		professor.setCity(professorForm.getCity());
		professor.setCountry(professorForm.getCountry());
		professor.setAddress(professorForm.getAddress());
		return professor;
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

}
