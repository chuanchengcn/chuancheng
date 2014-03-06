
package com.taotaoti.store.dao;

import java.util.List;

import com.taotaoti.common.generic.dao.BaseDao;
import com.taotaoti.store.bo.StorePlan;


public interface StorePlanDao extends BaseDao<Integer, StorePlan> {
	public List<StorePlan> findFromCurDatePlanByStoreId(int storeId);
	public List<StorePlan> findAllStorePlanByStoreId(int storeId);
}