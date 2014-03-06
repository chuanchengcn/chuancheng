package com.taotaoti.order.form;

import java.security.Timestamp;

public class JianbaoOrderForm {
	private double price;
	private String orderNemberNO;
	private Timestamp creatTime;
	private Timestamp updateTime;
	private int progress;
	private int statu;
	private int treasureId;
	private int professorId;
	private int orderKind;
	
	
	
	
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getOrderNemberNO() {
		return orderNemberNO;
	}
	public void setOrderNemberNO(String orderNemberNO) {
		this.orderNemberNO = orderNemberNO;
	}
	public Timestamp getCreatTime() {
		return creatTime;
	}
	public void setCreatTime(Timestamp creatTime) {
		this.creatTime = creatTime;
	}
	public Timestamp getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public int getStatu() {
		return statu;
	}
	public void setStatu(int statu) {
		this.statu = statu;
	}
	public int getTreasureId() {
		return treasureId;
	}
	public void setTreasureId(int treasureId) {
		this.treasureId = treasureId;
	}
	public int getProfessorId() {
		return professorId;
	}
	public void setProfessorId(int professorId) {
		this.professorId = professorId;
	}
	public int getOrderKind() {
		return orderKind;
	}
	public void setOrderKind(int orderKind) {
		this.orderKind = orderKind;
	}
	
	
	
	
	
	
	

}
