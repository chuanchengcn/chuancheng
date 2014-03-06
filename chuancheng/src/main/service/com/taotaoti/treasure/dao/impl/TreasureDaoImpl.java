package com.taotaoti.treasure.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import com.taotaoti.common.dao.AbstractDao;
import com.taotaoti.common.generic.dao.operator.Match;
import com.taotaoti.common.generic.dao.operator.Order;
import com.taotaoti.order.bo.OrderColumns;
import com.taotaoti.treasure.bo.Treasure;
import com.taotaoti.treasure.bo.TreasureColumns;
import com.taotaoti.treasure.dao.TreasureDao;
@Repository
public class TreasureDaoImpl extends AbstractDao<Integer, Treasure> implements TreasureDao{
	 protected final static Log LOG = LogFactory.getLog(TreasureDaoImpl.class);

	@Override
	public List<Treasure> pageTreasure(int curPage,int pageSize) {
		List<Match> matchs=new ArrayList<Match>();
		List<Order> orders=new ArrayList<Order>();
		orders.add(order(TreasureColumns.treasureId, false));
		matchs.add(match(TreasureColumns.statu, 0));
		return this.findPage(matchs,orders, curPage, pageSize);
	}

	@Override
	public List<Treasure> findAllTreasuresByMemberId(int memberId, int curPage,
			int pageSize) {
		List<Match> matchs=new ArrayList<Match>();
		List<Order> orders=new ArrayList<Order>();
		orders.add(order(TreasureColumns.treasureId, false));
		matchs.add(match(TreasureColumns.memberId, memberId));
		matchs.add(match(TreasureColumns.statu, 0));
		return this.findPage(matchs,orders, curPage, pageSize);
	}
}
