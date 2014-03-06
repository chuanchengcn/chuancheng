package com.taotaoti.store.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.taotaoti.common.dao.AbstractDao;
import com.taotaoti.store.bo.Store;
import com.taotaoti.store.bo.StoreColumns;
import com.taotaoti.store.dao.StoreDao;

@Repository
public class StoreDaoImpl extends AbstractDao<Integer, Store>
		implements StoreDao {
	@Override
	public List<Store> findStoreByKind(int kind) {
		if(kind==0) return find(match(StoreColumns.statu, 0));
		return find(match(StoreColumns.kind, kind),match(StoreColumns.statu, 0));
	}
	
}
