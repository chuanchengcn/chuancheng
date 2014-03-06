package com.taotaoti.commonFile.bo;

import java.sql.Timestamp;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;

@Table(db = "", name = "common_file", keyColumn = CommonFileColumns.commonFileId)
public class CommonFile extends BaseObject<Integer>{
	private static final long serialVersionUID = 1L;
	@Column(value=CommonFileColumns.kind)
	private int kind;
	@Column(value=CommonFileColumns.productKind)
	private int productKind;
	@Column(value=CommonFileColumns.productId)
	private int productId;
	@Column(value=CommonFileColumns.memberId)
	private int memberId ;
	@Column(value=CommonFileColumns.title)
	private String title ;
	@Column(value=CommonFileColumns.path)
	private String path ;
	@Column(value=CommonFileColumns.comment)
	private String comment;
	@Column(value=CommonFileColumns.createTime)
	private Timestamp createTime;
	@Column(value=CommonFileColumns.updateTime)
	private Timestamp updateTime;
	@Column(value=CommonFileColumns.statu)
	private int statu ;
	
	public CommonFile(int commonFileId ,int kind, int productKind, int productId, int memberId,
			String title,String path, String comment, Timestamp createTime,
			Timestamp updateTime, int statu) {
        this.id=commonFileId;
		this.kind = kind;
		this.productKind = productKind;
		this.productId = productId;
		this.memberId = memberId;
		this.title = title;
		this.path = path;
		this.comment = comment;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.statu = statu;
	}
	
	public CommonFile() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getKind() {
		return kind;
	}
	public void setKind(int kind) {
		this.kind = kind;
	}
	public int getProductKind() {
		return productKind;
	}
	public void setProductKind(int productKind) {
		this.productKind = productKind;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
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
	public int getStatu() {
		return statu;
	}
	public void setStatu(int statu) {
		this.statu = statu;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}
	
}
