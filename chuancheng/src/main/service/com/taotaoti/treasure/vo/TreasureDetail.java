package com.taotaoti.treasure.vo;

import java.sql.Timestamp;
import java.util.List;

import com.taotaoti.treasure.bo.Treasure;
import com.taotaoti.treasure.bo.TreasurePic;


public class TreasureDetail {
	private int treasureId;
	private String number ;
	private String name;
	private int addMemberTd;
	private int memberId;
	private int category ;
	private Timestamp createTime;
	private Timestamp updateTime;
	private Timestamp historyTime;
	private String author;
	private int statu;
	private String telephone;
	private String story;
	private String description ;
	private int visitCount ;
	private int followCount ;
	private int commentCount;
	
	private List<TreasurePic> treasurePics;
    public TreasureDetail(Treasure treasure,List<TreasurePic>  treasurePics){
    	this.treasureId = treasure.getId();
		this.number = treasure.getNumber();
		this.name=treasure.getName();
		this.addMemberTd = treasure.getAddMemberTd();
		this.memberId = treasure.getMemberId();
		this.category = treasure.getCategory();
		this.createTime = treasure.getCreateTime();
		this.updateTime = treasure.getUpdateTime();
		this.historyTime = treasure.getHistoryTime();
		this.author = treasure.getAuthor();
		this.statu = treasure.getStatu();
		this.telephone = treasure.getTelephone();
		this.story = treasure.getStory();
		this.description =treasure.getDescription();
		this.visitCount = treasure.getVisitCount();
		this.followCount = treasure.getFollowCount();
		this.commentCount = treasure.getCommentCount();
		this.treasurePics = treasurePics;
     }
    public TreasureDetail(int treasureId, String number, int addMemberTd,
			int memberId, int category, Timestamp createTime,
			Timestamp updateTime, Timestamp historyTime, String author,
			int statu, String telephone, String story, String description,
			int visitCount, int followCount, int commentCount,
			List<TreasurePic> treasurePics) {
		super();
		this.treasureId = treasureId;
		this.number = number;
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
		this.treasurePics = treasurePics;
	}
	public int getTreasureId() {
		return treasureId;
	}
	public void setTreasureId(int treasureId) {
		this.treasureId = treasureId;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public List<TreasurePic> getTreasurePics() {
		return treasurePics;
	}
	public void setTreasurePics(List<TreasurePic> treasurePics) {
		this.treasurePics = treasurePics;
	}
  

}
