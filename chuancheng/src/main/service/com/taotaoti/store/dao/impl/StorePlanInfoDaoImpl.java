package com.taotaoti.store.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.taotaoti.common.dao.AbstractDao;
import com.taotaoti.store.bo.StoreColumns.StorePlanInfoColumns;
import com.taotaoti.store.bo.StorePlanInfo;
import com.taotaoti.store.dao.StorePlanInfoDao;

@Repository
public class StorePlanInfoDaoImpl extends AbstractDao<Integer, StorePlanInfo>
		implements StorePlanInfoDao {
	@Override
	public List<StorePlanInfo> findStorePlanInfoByStoreIdAndStorePlanId(
			int storeId,int storePlanId) {
		return find(match(StorePlanInfoColumns.storeId, storeId),match(StorePlanInfoColumns.storePlanId, storePlanId));
	}
	
}
