package com.taotaoti.order.service;

import java.util.List;

import com.taotaoti.order.bo.JianbaoOrder;



public interface JianbaoOrderMgr{
	
	/**
	 * 选择专场参与 生成临时会场订单
	 * @param memberId
	 * @param storeId
	 */
	public void createActivityOrder(int memberId,int storeId);
	/**
	 * 选择专家参与 生成订单
	 * @param memberId
	 * @param storeId
	 */
	public void createProfessorOrder(int memberId,int professoerId);
	
	public List<JianbaoOrder> findOneTempOrderByMemberId(int memberId);
	/**
	 * 线上鉴宝或者线下鉴宝
	 * @param orderId
	 * @param isOnline
	 */
	public void updateisOnlineForOrder(int orderId,int isOnline);
	/**
	 * 添加鉴定宝贝图片
	 * @param orderId
	 * @param treasureId
	 */
	public void updateTreasureForOrder(int orderId,int treasureId);
	
	/**
	 * 获取用户下所有订单
	 * @param memberId
	 * @return
	 */
	public List<JianbaoOrder> findOrdersByMemberId(int memberId);
	/**
	 * 获取实体店的所有的订单
	 * @param storeId
	 * @return
	 */
	public List<JianbaoOrder> findOrdersByStoreId(int storeId);
	
	public JianbaoOrder findOrderByMemberIdAndOrderNumber(int memberId,String orderNumber);
	public List<JianbaoOrder> findOrders(int statu ,int progess);
	public List<JianbaoOrder> findOrders(int statu);
	
}
