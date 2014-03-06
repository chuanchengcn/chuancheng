
package com.taotaoti.treasure.dao;

import java.util.List;

import com.taotaoti.common.generic.dao.BaseDao;
import com.taotaoti.treasure.bo.Treasure;

public interface TreasureDao extends BaseDao<Integer, Treasure> {
	public List<Treasure> pageTreasure(int curPage,int pageSize);
	public List<Treasure> findAllTreasuresByMemberId(int memberId,int curPage,int pageSize);
}