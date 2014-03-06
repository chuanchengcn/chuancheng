package com.taotaoti.order.constant;


/**
 * @author leon
 *
 * 2013-12-5
 */
public class OrderConstant {

	public static final int ORDER_KIND_STORE	= 1;  //活动或者是实体店
	public static final int ORDER_KIND_PROFESSOR=2;  //专家
	public static final int ORDER_STATU_TEMP=0;  //临时
	public static final int ORDER_STATU_VALID=1;  //有效
	public static final int ORDER_STATU_DELETE=2;  //删除
	public static final int ORDER_PROGRESS_TEMP=0;  //生成临时订单状态
	public static final int ORDER_PROGRESS_ISONLINE=1;  //生成临时订单状态
	public static final int ORDER_PROGRESS_ORDERINFO=2;  //已提交图片
	public static final int ORDER_PROGRESS_IMAGE=3;  //已提交图片
	public static final int ORDER_PROGRESS_SUBMIT =4;  //已提交
	
	
	//public static final int ORDER_PROGRESS_DEAlING =5;  //等待管理处理
	public static final int ORDER_PROGRESS_DEAlED =5;  //处理完成
	
}
