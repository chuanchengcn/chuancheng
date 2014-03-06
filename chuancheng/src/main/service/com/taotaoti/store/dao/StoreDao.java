
package com.taotaoti.store.dao;

import java.util.List;

import com.taotaoti.common.generic.dao.BaseDao;
import com.taotaoti.store.bo.Store;


public interface StoreDao extends BaseDao<Integer, Store> {
	public List<Store> findStoreByKind(int kind);
}