package com.taotaoti.store.dao.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.taotaoti.common.dao.AbstractDao;
import com.taotaoti.store.bo.StoreColumns;
import com.taotaoti.store.bo.StorePlan;
import com.taotaoti.store.dao.StorePlanDao;

@Repository
public class StorePlanDaoImpl extends AbstractDao<Integer, StorePlan>
		implements StorePlanDao {

	@Override
	public List<StorePlan> findFromCurDatePlanByStoreId(int storeId) {
		return find(match(StoreColumns.StorePlanColumns.statu, 0),match(StoreColumns.StorePlanColumns.storeId, storeId),match(StoreColumns.StorePlanColumns.date, greaterThan(new Date(System.currentTimeMillis()))));
	}
	@Override
	public List<StorePlan> findAllStorePlanByStoreId(int storeId) {
		return find(match(StoreColumns.StorePlanColumns.statu, 0),match(StoreColumns.StorePlanColumns.storeId, storeId));
	}
	
}
