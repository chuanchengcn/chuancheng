
package com.taotaoti.store.dao;

import java.util.List;

import com.taotaoti.common.generic.dao.BaseDao;
import com.taotaoti.store.bo.StorePlanInfo;


public interface StorePlanInfoDao extends BaseDao<Integer, StorePlanInfo> {
	public List<StorePlanInfo> findStorePlanInfoByStoreIdAndStorePlanId(int storeId,int storePlanId);
	
	
}