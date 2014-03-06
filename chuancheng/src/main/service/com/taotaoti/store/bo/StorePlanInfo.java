package com.taotaoti.store.bo;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;

@Table(db = "chuancheng_jianbao", name = "store_plan_info", keyColumn = StoreColumns.StorePlanInfoColumns.storePlanInfoId)
public class StorePlanInfo extends BaseObject<Integer> {
	private static final long serialVersionUID = 1L;
	@Column(value=StoreColumns.StorePlanInfoColumns.storeId)
	private int storeId;
	@Column(value=StoreColumns.StorePlanInfoColumns.time)
	private int time;
	@Column(value=StoreColumns.StorePlanInfoColumns.maxCount)
	private int maxCount;
	@Column(value=StoreColumns.StorePlanInfoColumns.storePlanId)
	private int storePlanId;
	@Column(value=StoreColumns.StorePlanInfoColumns.statu)
	private int statu;
	@Column(value=StoreColumns.StorePlanInfoColumns.title)
	private int title;
	@Column(value=StoreColumns.StorePlanInfoColumns.content)
	private int content;
	public StorePlanInfo() {
		super();
		}
	public StorePlanInfo(int storeId, int time, int maxCount, int storePlanId,
			int statu) {
		super();
		this.storeId = storeId;
		this.time = time;
		this.maxCount = maxCount;
		this.storePlanId = storePlanId;
		this.statu = statu;
	}
	public int getStoreId() {
		return storeId;
	}
	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}
	public int getTime() {
		return time;
	}
	public void setTime(int time) {
		this.time = time;
	}
	public int getMaxCount() {
		return maxCount;
	}
	public void setMaxCount(int maxCount) {
		this.maxCount = maxCount;
	}
	public int getStorePlanId() {
		return storePlanId;
	}
	public void setStorePlanId(int storePlanId) {
		this.storePlanId = storePlanId;
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
	public int getTitle() {
		return title;
	}
	public int getContent() {
		return content;
	}
	public void setTitle(int title) {
		this.title = title;
	}
	public void setContent(int content) {
		this.content = content;
	}
	
}
