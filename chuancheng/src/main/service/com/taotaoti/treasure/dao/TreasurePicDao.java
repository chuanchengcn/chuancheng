
package com.taotaoti.treasure.dao;

import java.util.List;

import com.taotaoti.common.generic.dao.BaseDao;
import com.taotaoti.treasure.bo.TreasurePic;

public interface TreasurePicDao extends BaseDao<Integer, TreasurePic> {
	public List<TreasurePic> getTreasurePicsByTreasureId(int treasureId);
	public void updateTreasurePic(TreasurePic treasurePic);
	public int modifyStatu(int treasureId,int treasurePicId,int statu);
}