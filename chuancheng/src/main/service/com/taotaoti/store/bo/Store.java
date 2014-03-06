package com.taotaoti.store.bo;

import java.sql.Timestamp;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;

@Table(db = "chuancheng_jianbao", name = "store", keyColumn = StoreColumns.storeId)
public class Store extends BaseObject<Integer> {
	private static final long serialVersionUID = 1L;
	@Column(value=StoreColumns.storeName)
	private String storeName;
	private String title;
	private String description;
	@Column(value=StoreColumns.createTime)
	private Timestamp createTime;
	private int statu;
	private String telephone;
	private int kind;
	@Column(value=StoreColumns.startTime)
	private Timestamp startTime;
	@Column(value=StoreColumns.endTime)
	private Timestamp endTime;
	@Column(value=StoreColumns.location)
	private String location;
	@Column(value=StoreColumns.organizer)
	private String organizer;
	@Column(value=StoreColumns.followCount)
	private int followCount;
	@Column(value=StoreColumns.enterCount)
	private int enterCount;
	@Column(value=StoreColumns.visitorCount)
	private int visitorCount;
	
	@Column(value=StoreColumns.maxEnterCount)
	private int maxEnterCount;
	
	
	public Store() {
		super();
	}
	
	public Store(String storeName, String title, String description,
			Timestamp createTime, int statu,
			String telephone, int kind) {
		super();
		this.storeName = storeName;
		this.title = title;
		this.description = description;
		this.createTime = createTime;
		this.statu = statu;
		this.telephone = telephone;
		this.kind = kind;
	}

	public String getStoreName() {
		return storeName;
	}
	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Timestamp getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	public int getStatu() {
		return statu;
	}
	public void setStatu(int statu) {
		this.statu = statu;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public int getKind() {
		return kind;
	}
	public void setKind(int kind) {
		this.kind = kind;
	}

	public Timestamp getStartTime() {
		return startTime;
	}

	public void setStartTime(Timestamp startTime) {
		this.startTime = startTime;
	}

	public Timestamp getEndTime() {
		return endTime;
	}

	public void setEndTime(Timestamp endTime) {
		this.endTime = endTime;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getOrganizer() {
		return organizer;
	}

	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}

	public int getFollowCount() {
		return followCount;
	}

	public void setFollowCount(int followCount) {
		this.followCount = followCount;
	}

	public int getEnterCount() {
		return enterCount;
	}

	public void setEnterCount(int enterCount) {
		this.enterCount = enterCount;
	}

	public int getVisitorCount() {
		return visitorCount;
	}

	public int getMaxEnterCount() {
		return maxEnterCount;
	}

	public void setMaxEnterCount(int maxEnterCount) {
		this.maxEnterCount = maxEnterCount;
	}

	public void setVisitorCount(int visitorCount) {
		this.visitorCount = visitorCount;
	}

}
