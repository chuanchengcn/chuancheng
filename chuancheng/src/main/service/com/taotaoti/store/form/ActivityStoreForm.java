package com.taotaoti.store.form;



public class ActivityStoreForm {
	
	private String storeName;
	private String title;
	private String description;
	private String telephone;
	/**
	 * yyyy-mm-dd hh:ss
	 */
	private String startTime;
	/**
	 * yyyy-mm-dd hh:ss
	 */
	private String endTime;
	private String location;
	private String organizer;
	private int maxEnterCount;
	
	
	
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
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
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
	public int getMaxEnterCount() {
		return maxEnterCount;
	}
	public void setMaxEnterCount(int maxEnterCount) {
		this.maxEnterCount = maxEnterCount;
	}
	
	
}
