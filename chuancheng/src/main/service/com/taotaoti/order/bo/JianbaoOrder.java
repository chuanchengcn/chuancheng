package com.taotaoti.order.bo;

import java.sql.Timestamp;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;
import com.taotaoti.store.bo.StoreColumns;

@Table(db = "chuancheng_jianbao", name = "jianbao_order", keyColumn = OrderColumns.orderId)
public class JianbaoOrder extends BaseObject<Integer> {
	private static final long serialVersionUID = 1L;
	@Column(value=OrderColumns.orderNumber)
	private String orderNumber;
	@Column(value=OrderColumns.memberId)
	private int memberId;
	@Column(value=OrderColumns.orderKind)
	private int orderKind;
	@Column(value=OrderColumns.storeId)
	private int storeId;
	@Column(value=OrderColumns.professorId)
	private int professorId;
	@Column(value=OrderColumns.treasureId)
	private int treasureId;
	@Column(value=OrderColumns.statu)
	private int statu;
	@Column(value=OrderColumns.price)
	private int price;
	@Column(value=OrderColumns.progress)
	private int progress;
	@Column(value=OrderColumns.createTime)
	private Timestamp createTime;
	@Column(value=OrderColumns.updateTime)
	private Timestamp updateTime;
	@Column(value=OrderColumns.isOnline)
	private int isOnline;
	
	public JianbaoOrder() {
	}

	public JianbaoOrder(int orderId,String orderNumber, int orderKind, int storeId,
			int professorId, int treasureId, int statu, int price,
			int progress, Timestamp createTime, Timestamp updateTime) {
		this.id=orderId;
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
