package com.taotaoti.treasure.bo;

/**
 * 
 * @author liulxiang
 * 
 */

public class TreasureColumns {
	public final static String treasureId = "id";
	public final static String number = "number";
	public final static String name = "name";
	public final static String addMemberTd = "add_member_id";
	public final static String memberId = "member_id";
	public final static String category = "category_id";
	public final static String createTime = "create_time";
	public final static String updateTime = "update_time";
	public final static String historyTime = "history_time";
	public final static String author = "author";
	public final static String statu = "statu";
	public final static String telephone = "telephone";
	public final static String story = "story";
	public final static String description = "description";
	public final static String visitCount = "visit_count";
	public final static String followCount = "follow_count";
	public final static String commentCount = "comment_count";
	public final static String oriPrice = "ori_price";
	public final static String professorPrice = "professor_price";
	public class  TreasurePicColumns{
		public final static String treasurePicId = "id";
		public final static String treasureId = "treasure_id";
		public final static String memberId = "member_id";
		public final static String createTime = "create_time";
		public final static String updateTime = "update_time";
		public final static String path = "path";
		public final static String comment = "comment";
		public final static String statu = "statu";
	}
	public static String getTreasureid() {
		return treasureId;
	}
	public static String getNumber() {
		return number;
	}
	public static String getAddmembertd() {
		return addMemberTd;
	}
	public static String getMemberid() {
		return memberId;
	}
	public static String getCategory() {
		return category;
	}
	public static String getCreatetime() {
		return createTime;
	}
	public static String getUpdatetime() {
		return updateTime;
	}
	public static String getHistorytime() {
		return historyTime;
	}
	public static String getAuthor() {
		return author;
	}
	public static String getStatu() {
		return statu;
	}
	public static String getTelephone() {
		return telephone;
	}
	public static String getStory() {
		return story;
	}
	public static String getDescription() {
		return description;
	}
	public static String getVisitcount() {
		return visitCount;
	}
	public static String getFollowcount() {
		return followCount;
	}
	public static String getCommentcount() {
		return commentCount;
	}
}
