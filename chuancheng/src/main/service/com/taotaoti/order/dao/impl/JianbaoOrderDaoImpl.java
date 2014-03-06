package com.taotaoti.order.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import com.taotaoti.common.dao.AbstractDao;
import com.taotaoti.common.generic.dao.operator.Match;
import com.taotaoti.common.generic.dao.operator.Modify;
import com.taotaoti.common.generic.dao.operator.Order;
import com.taotaoti.order.bo.JianbaoOrder;
import com.taotaoti.order.bo.OrderColumns;
import com.taotaoti.order.dao.JianbaoOrderDao;
@Repository
public class JianbaoOrderDaoImpl extends AbstractDao<Integer, JianbaoOrder> implements JianbaoOrderDao{
	 protected final static Log LOG = LogFactory.getLog(JianbaoOrderDaoImpl.class);

	@Override
	public void modifyTreasureId(int orderId, int treasureId) {
		List<Modify> modifies=new ArrayList<Modify>();
		modifies.add(modify(OrderColumns.treasureId, treasureId));
		update(modifies, match(OrderColumns.orderId, orderId));
	}
	@Override
	public void modifyIsOnline(int orderId, int isOnline) {
		List<Modify> modifies=new ArrayList<Modify>();
		modifies.add(modify(OrderColumns.isOnline, isOnline));
		update(modifies, match(OrderColumns.orderId, orderId));
	}
	@Override
	public List<JianbaoOrder> findOrderByMemberId(int memberId) {
		List<Match> matchs=new ArrayList<Match>();
		matchs.add(match(OrderColumns.memberId, memberId));
		List<Order> orders=new ArrayList<Order>();
		orders.add(order(OrderColumns.orderId, false));
		return find(matchs,orders);
	}
	@Override
	public List<JianbaoOrder> findOrderByStoreId(int storeId) {
		List<Match> matchs=new ArrayList<Match>();
		matchs.add(match(OrderColumns.storeId, storeId));
		List<Order> orders=new ArrayList<Order>();
		orders.add(order(OrderColumns.orderId, false));
		return find(matchs,orders);
	}
	@Override
	public List<JianbaoOrder> findOneByMemberIdAndStatu(int memberId, int statu) {
		List<Match> matchs=new ArrayList<Match>();
		matchs.add(match(OrderColumns.memberId, memberId));
		matchs.add(match(OrderColumns.statu, statu));
		List<Order> orders=new ArrayList<Order>();
		orders.add(order(OrderColumns.orderId, false));
		return find(matchs,orders);
	}
	@Override
	public void modifyProgress(int orderId, int progress) {
		List<Modify> modifies=new ArrayList<Modify>();
		modifies.add(modify(OrderColumns.progress, progress));
		update(modifies, match(OrderColumns.orderId, orderId));
		
	}
	@Override
	public List<JianbaoOrder> findOrderByMemberIdAndStatuAndProgress(
			int memberId, int statu, int progress) {
		List<Match> matchs=new ArrayList<Match>();
		matchs.add(match(OrderColumns.memberId, memberId));
		matchs.add(match(OrderColumns.statu, statu));
		matchs.add(match(OrderColumns.progress, progress));
		List<Order> orders=new ArrayList<Order>();
		orders.add(order(OrderColumns.orderId, false));
		return find(matchs,orders);
	}
	@Override
	public List<JianbaoOrder> findOrderByStatuAndProgress(int statu,
			int progress) {
				List<Match> matchs=new ArrayList<Match>();
				matchs.add(match(OrderColumns.statu, statu));
				matchs.add(match(OrderColumns.progress, progress));
				List<Order> orders=new ArrayList<Order>();
				orders.add(order(OrderColumns.orderId, false));
				return find(matchs,orders);
	}
	@Override
	public List<JianbaoOrder> findOrderByStatu(int statu) {
		List<Match> matchs=new ArrayList<Match>();
		matchs.add(match(OrderColumns.statu, statu));
		List<Order> orders=new ArrayList<Order>();
		orders.add(order(OrderColumns.orderId, false));
		return find(matchs,orders);
	}
	@Override
	public JianbaoOrder findOneByMemberIdAndOrderNumber(int memberId,
			String orderNumber) {
		return findOne(match(OrderColumns.memberId, memberId),match(OrderColumns.orderNumber, orderNumber));
	}

}
