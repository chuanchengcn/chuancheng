package com.taotaoti.order.vo;

import java.sql.Timestamp;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;
import com.taotaoti.store.bo.StoreColumns;

public class OrderView{
	private static final long serialVersionUID = 1L;
	private String orderNumber;
	private int memberId;
	private int orderKind;
	private int storeId;
	private int professorId;
	private int treasureId;
	private int statu;
	private int price;
	private int progress;
	private Timestamp createTime;
	private Timestamp updateTime;
	private int isOnline;
	public OrderView() {
	}

	public OrderView(String orderNumber, int orderKind, int storeId,
			int professorId, int treasureId, int statu, int price,
			int progress, Timestamp createTime, Timestamp updateTime) {
		this.orderNumber = orderNumber;
		this.orderKind = orderKind;
		this.storeId = storeId;
		this.professorId = professorId;
		this.treasureId = treasureId;
		this.statu = statu;
		this.price = price;
		this.progress = progress;
		this.createTime = createTime;
		this.updateTime = updateTime;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public int getOrderKind() {
		return orderKind;
	}

	public void setOrderKind(int orderKind) {
		this.orderKind = orderKind;
	}

	public int getStoreId() {
		return storeId;
	}

	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}

	public int getProfessorId() {
		return professorId;
	}

	public void setProfessorId(int professorId) {
		this.professorId = professorId;
	}

	public int getTreasureId() {
		return treasureId;
	}

	public void setTreasureId(int treasureId) {
		this.treasureId = treasureId;
	}

	public int getStatu() {
		return statu;
	}

	public void setStatu(int statu) {
		this.statu = statu;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getProgress() {
		return progress;
	}

	public void setProgress(int progress) {
		this.progress = progress;
	}

	public Timestamp getCreateTime() {
		return createTime;
	}

	public int getMemberId() {
		return memberId;
	}

	public void setMemberId(int memberId) {
		this.memberId = memberId;
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

	public int getIsOnline() {
		return isOnline;
	}

	public void setIsOnline(int isOnline) {
		this.isOnline = isOnline;
	}
	
	

}
