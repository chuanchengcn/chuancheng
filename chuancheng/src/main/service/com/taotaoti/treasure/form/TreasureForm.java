package com.taotaoti.treasure.form;

import java.sql.Timestamp;

import com.taotaoti.treasure.bo.Treasure;

/**
 * 用于接收前端参数
 * 
 * @author liujie
 * @version 
 */
public class TreasureForm {
	private String name;
	private int category ;
	private Timestamp historyTime;
	private String author;
	private String telephone;
	private String story;
	private String description ;
	public Treasure getTreasureByTreasureForm(TreasureForm form){
		Treasure treasure=new Treasure();
		treasure.setName(form.getName());
		treasure.setHistoryTime(form.getHistoryTime());
		treasure.setAuthor(form.getAuthor());
		treasure.setTelephone(form.getTelephone());
		treasure.setTelephone(form.getTelephone());
		treasure.setStory(form.getStory());
		treasure.setDescription(form.getDescription());
		return treasure;
	}
	public Treasure getTreasureByTreasureForm(Treasure treasure,TreasureForm form){
		treasure.setNumber(form.getName());
		treasure.setHistoryTime(form.getHistoryTime());
		treasure.setAuthor(form.getAuthor());
		treasure.setTelephone(form.getTelephone());
		treasure.setTelephone(form.getTelephone());
		treasure.setStory(form.getStory());
		treasure.setDescription(form.getDescription());
		return treasure;
	}
	
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
