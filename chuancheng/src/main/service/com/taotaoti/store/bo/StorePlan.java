package com.taotaoti.store.bo;

import java.sql.Timestamp;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;

@Table(db = "chuancheng_jianbao", name = "store_plan", keyColumn = StoreColumns.StorePlanColumns.storePlanId)
public class StorePlan extends BaseObject<Integer> {
	private static final long serialVersionUID = 1L;
	@Column(value=StoreColumns.StorePlanColumns.storeId)
	private int storeId;
	@Column(value=StoreColumns.StorePlanColumns.date)
	private Timestamp date;
	@Column(value=StoreColumns.StorePlanColumns.statu)
	private int statu;
	
	public StorePlan() {
		super();
		}
	
	public StorePlan(int storeId, Timestamp date, int statu) {
		super();
		this.storeId = storeId;
		this.date = date;
		this.statu = statu;
	}

	public int getStoreId() {
		return storeId;
	}

	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	public int getStatu() {
		return statu;
	}

	public void setStatu(int statu) {
		this.statu = statu;
	}
	
}
