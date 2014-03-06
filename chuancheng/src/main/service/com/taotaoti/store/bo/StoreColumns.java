package com.taotaoti.store.bo;

/**
 * 
 * @author liulxiang
 * 
 */

public class StoreColumns {
	public final static String storeId = "id";
	public final static String storeName = "store_name";
	public final static String title = "title";
	public final static String description = "description";
	public final static String createTime = "create_time";
	public final static String statu = "statu";
	public final static String updateTime = "update_time";
	public final static String telephone = "telephone";
	public final static String kind = "kind";
	public final static String startTime = "startTime";
	public final static String endTime = "endTime";
	public final static String location = "location";
	public final static String organizer = "organizer";
	public final static String followCount = "follow_count";
	public final static String enterCount = "enter_count";
	public final static String visitorCount = "visitor_count";
	public final static String maxEnterCount = "max_enter_count";
	
	public class  StorePlanColumns{
		public final static String storePlanId = "id";
		public final static String storeId = "store_id";
		public final static String date = "date";
		public final static String statu = "statu";
	}
	public class  StorePlanInfoColumns{
		public final static String storePlanInfoId = "id";
		public final static String storeId = "store_id";
		public final static String time = "time";
		public final static String maxCount = "max_count";
		public final static String storePlanId = "store_plan_id";
		public final static String statu = "statu";
		public final static String title = "title";
		public final static String content = "content";
	}
}
