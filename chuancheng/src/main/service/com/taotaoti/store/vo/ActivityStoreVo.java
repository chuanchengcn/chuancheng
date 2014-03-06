package com.taotaoti.store.vo;

import java.sql.Timestamp;
import java.util.List;

import com.taotaoti.commonFile.bo.CommonFile;
import com.taotaoti.store.form.ActivityStoreForm;


public class ActivityStoreVo extends ActivityStoreForm{
	private static final long serialVersionUID = 1L;
	private int storeId;
	private Timestamp createTime;
	private int statu;
	private int followCount;
	private int enterCount;
	private int visitorCount;
	private List<CommonFile> storeImgs;
	public int getStoreId() {
		return storeId;
	}
	public void setStoreId(int storeId) {
		this.storeId = storeId;
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
	public void setVisitorCount(int visitorCount) {
		this.visitorCount = visitorCount;
	}

	public List<CommonFile> getStoreImgs() {
		return storeImgs;
	}

	public void setStoreImgs(List<CommonFile> storeImgs) {
		this.storeImgs = storeImgs;
	}

}
