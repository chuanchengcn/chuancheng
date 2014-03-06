package com.taotaoti.treasure.bo;

import java.sql.Timestamp;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;

@Table(db = "chuancheng_jianbao", name = "treasure", keyColumn = TreasureColumns.treasureId)
public class Treasure  extends BaseObject<Integer>{
	@Column(value=TreasureColumns.number)
	private String number ;
	@Column(value=TreasureColumns.name)
	private String name ;
	@Column(value=TreasureColumns.addMemberTd)
	private int addMemberTd;
	@Column(value=TreasureColumns.memberId)
	private int memberId;
	@Column(value=TreasureColumns.category)
	private int category ;
	@Column(value=TreasureColumns.createTime)
	private Timestamp createTime;
	@Column(value=TreasureColumns.updateTime)
	private Timestamp updateTime;
	@Column(value=TreasureColumns.historyTime)
	private Timestamp historyTime;
	@Column(value=TreasureColumns.author)
	private String author;
	@Column(value=TreasureColumns.statu)
	private int statu;
	@Column(value=TreasureColumns.telephone)
	private String telephone;
	@Column(value=TreasureColumns.story)
	private String story;
	@Column(value=TreasureColumns.description)
	private String description ;
	@Column(value=TreasureColumns.visitCount)
	private int visitCount ;
	@Column(value=TreasureColumns.followCount)
	private int followCount ;
	@Column(value=TreasureColumns.commentCount)
	private int commentCount;
	@Column(value=TreasureColumns.oriPrice)
	private int oriPrice;
	@Column(value=TreasureColumns.professorPrice)
	private int professorPrice;
	
	public Treasure() {
		super();
	}
	public Treasure(int treasureId, String number,String name, int addMemberTd,
			int memberId, int category, Timestamp createTime,
			Timestamp updateTime, Timestamp historyTime, String author,
			int statu, String telephone, String story, String description,
			int visitCount, int followCount, int commentCount) {
		this.id = treasureId;
		this.number = number;
		this.name=name;
		this.addMemberTd = addMemberTd;
		this.memberId = memberId;
		this.category = category;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.historyTime = historyTime;
		this.author = author;
		this.statu = statu;
		this.telephone = telephone;
		this.story = story;
		this.description = description;
		this.visitCount = visitCount;
		this.followCount = followCount;
		this.commentCount = commentCount;
	}
	
	public int getAddMemberTd() {
		return addMemberTd;
	}
	public void setAddMemberTd(int addMemberTd) {
		this.addMemberTd = addMemberTd;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
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
	public Timestamp getHistoryTime() {
		return historyTime;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setHistoryTime(Timestamp historyTime) {
		this.historyTime = historyTime;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
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
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getVisitCount() {
		return visitCount;
	}
	public int getOriPrice() {
		return oriPrice;
	}
	public int getProfessorPrice() {
		return professorPrice;
	}
	public void setOriPrice(int oriPrice) {
		this.oriPrice = oriPrice;
	}
	public void setProfessorPrice(int professorPrice) {
		this.professorPrice = professorPrice;
	}
	public void setVisitCount(int visitCount) {
		this.visitCount = visitCount;
	}
	public int getFollowCount() {
		return followCount;
	}
	public void setFollowCount(int followCount) {
		this.followCount = followCount;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}


}
