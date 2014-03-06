package com.taotaoti.order.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.taotaoti.common.utils.DateUtils;
import com.taotaoti.common.utils.MD5;
import com.taotaoti.order.bo.JianbaoOrder;
import com.taotaoti.order.constant.OrderConstant;
import com.taotaoti.order.dao.JianbaoOrderDao;
import com.taotaoti.order.service.JianbaoOrderMgr;
import com.taotaoti.professor.bo.Professor;
import com.taotaoti.professor.dao.ProfessorDao;
@Repository
public class JianbaoOrderMgrImpl implements JianbaoOrderMgr {

	@Resource
	JianbaoOrderDao jianbaoOrderDao; 
	@Resource
	ProfessorDao professorDao;
	@Override
	public void createActivityOrder(int memberId, int storeId) {
		JianbaoOrder order=new JianbaoOrder();
		order.setMemberId(memberId);
		order.setStoreId(storeId);
		order.setProfessorId(0);
		order.setOrderKind(OrderConstant.ORDER_KIND_STORE);
		order.setCreateTime(new Timestamp(System.currentTimeMillis()));
		order.setProgress(0);
		order.setIsOnline(0);
		order.setPrice(0);
		order.setStatu(0);
		order.setOrderNumber(""+DateUtils.getHourStr()+DateUtils.getTimeInMillionSeconds()+memberId);
		order.setUpdateTime(order.getCreateTime());
		order.setTreasureId(0);
		
		jianbaoOrderDao.create(order);

	}
	@Override
	public void createProfessorOrder(int memberId, int professorId) {
		Professor professor=professorDao.get(professorId);
		if(professor!=null){
			JianbaoOrder order=new JianbaoOrder();
			order.setMemberId(memberId);
			order.setProfessorId(professorId);
			order.setStoreId(professor.getStoreId());
			order.setOrderKind(OrderConstant.ORDER_KIND_PROFESSOR);
			order.setCreateTime(new Timestamp(System.currentTimeMillis()));
			order.setProgress(0);
			order.setIsOnline(0);
			order.setPrice(0);
			order.setStatu(OrderConstant.ORDER_STATU_TEMP);
			order.setOrderNumber(""+DateUtils.getHourStr()+DateUtils.getTimeInMillionSeconds()+memberId);
			order.setUpdateTime(order.getCreateTime());
			order.setTreasureId(0);
			jianbaoOrderDao.create(order);
		}
		

	}
	@Override
	public void updateTreasureForOrder(int orderId, int treasureId) {
		jianbaoOrderDao.modifyTreasureId(orderId, treasureId);
	}

	@Override
	public void updateisOnlineForOrder(int orderId, int isOnline) {
		jianbaoOrderDao.modifyIsOnline(orderId, isOnline);
	}
	@Override
	public List<JianbaoOrder> findOrdersByMemberId(int memberId) {
		return jianbaoOrderDao.findOrderByMemberId(memberId);
	}
	@Override
	public List<JianbaoOrder> findOrdersByStoreId(int storeId) {
		return jianbaoOrderDao.findOrderByStoreId(storeId);
	}
	@Override
	public List<JianbaoOrder> findOrders(int statu,int progress) {
		return jianbaoOrderDao.findOrderByStatuAndProgress(statu, progress);
	}
	@Override
	public List<JianbaoOrder> findOrders(int statu) {
		return jianbaoOrderDao.findOrderByStatu(statu);
	}
	@Override
	public List<JianbaoOrder> findOneTempOrderByMemberId(int memberId) {
		return jianbaoOrderDao.findOneByMemberIdAndStatu(memberId, OrderConstant.ORDER_STATU_TEMP);
	}
	@Override
	public JianbaoOrder findOrderByMemberIdAndOrderNumber(int memberId,
			String orderNumber) {
		return jianbaoOrderDao.findOneByMemberIdAndOrderNumber(memberId, orderNumber);
	}
}
