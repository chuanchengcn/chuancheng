package com.taotaoti.systemmessage.bo;


import java.sql.Timestamp;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;
import com.taotaoti.common.generic.constant.DBGlobalConstant;
import com.taotaoti.systemmessage.dao.SysContactMessageColumns;
// db 默认就采用 db_url中的db
@Table(db = DBGlobalConstant.SYSCOMMON, name = "contact_message", keyColumn = SysContactMessageColumns.id) 
public class SysContactMessage  extends BaseObject<Integer>  implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	public   Integer id;
	public   String firstname;
	public   String lastname;
	public   String email;
	public   String title;
	public   String message;
	public   Timestamp addTime;
	public   Integer statu ;
	public   Integer isReply ;
	@Column(maybeModified=false, value=SysContactMessageColumns.replyContent)
	public   String replyContent;
	@Column(maybeModified=false, value=SysContactMessageColumns.replyTime)
	public   Timestamp replyTime;
	
	
	

	// Constructors

	/** default constructor */
	public SysContactMessage() {
		super();
	}
	public SysContactMessage(String firstname,String lastname,String email,String title,String message,int statu){
		super();
		this.firstname=firstname;
		this.lastname=lastname;
		this.email=email;
		this.title=title;
		this.message=message;
		this.statu=statu;
		this.addTime=new Timestamp(System.currentTimeMillis());
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Timestamp getAddTime() {
		return addTime;
	}
	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}
	public Integer getStatu() {
		return statu;
	}
	public void setStatu(Integer statu) {
		this.statu = statu;
	}
	public Integer getIsReply() {
		return isReply;
	}
	public void setIsReply(Integer isReply) {
		this.isReply = isReply;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public Timestamp getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(Timestamp replyTime) {
		this.replyTime = replyTime;
	}
	

}