package com.taotaoti.treasure.bo;

import java.sql.Timestamp;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;

@Table(db = "chuancheng_jianbao", name = "treasure_pic", keyColumn = TreasureColumns.TreasurePicColumns.treasurePicId)
public class TreasurePic extends BaseObject<Integer>{
	@Column(value=TreasureColumns.TreasurePicColumns.treasureId,maybeModified=false)
	private int treasureId;
	@Column(value=TreasureColumns.TreasurePicColumns.memberId)
	private int memberId;
	@Column(value=TreasureColumns.TreasurePicColumns.createTime)
	private Timestamp createTime;
	@Column(value=TreasureColumns.TreasurePicColumns.updateTime)
	private Timestamp updateTime;
	@Column(value=TreasureColumns.TreasurePicColumns.path)
	private String path;
	@Column(value=TreasureColumns.TreasurePicColumns.comment)
	private String comment;
	@Column(value=TreasureColumns.TreasurePicColumns.statu)
	private int statu;
	
	public TreasurePic() {
		super();
	}
	public TreasurePic(int treasurePicId,int treasureId, int memberId, Timestamp createTime,
			Timestamp updateTime, String path, String comment, int statu) {
		this.id=treasurePicId;
		this.treasureId = treasureId;
		this.memberId = memberId;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.path = path;
		this.comment = comment;
		this.statu = statu;
	}

	public int getTreasureId() {
		return treasureId;
	}

	public void setTreasureId(int treasureId) {
		this.treasureId = treasureId;
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

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public int getStatu() {
		return statu;
	}

	public void setStatu(int statu) {
		this.statu = statu;
	}


}
