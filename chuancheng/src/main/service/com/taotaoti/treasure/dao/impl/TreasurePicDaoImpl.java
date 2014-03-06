package com.taotaoti.treasure.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import com.taotaoti.common.dao.AbstractDao;
import com.taotaoti.common.generic.dao.operator.Modify;
import com.taotaoti.treasure.bo.TreasureColumns.TreasurePicColumns;
import com.taotaoti.treasure.bo.TreasurePic;
import com.taotaoti.treasure.dao.TreasurePicDao;
@Repository
public class TreasurePicDaoImpl extends AbstractDao<Integer, TreasurePic> implements TreasurePicDao{
	 protected final static Log LOG = LogFactory.getLog(TreasurePicDaoImpl.class);

	@Override
	public List<TreasurePic> getTreasurePicsByTreasureId(int treasureId) {
		return find(match(TreasurePicColumns.treasureId, treasureId));
	}

	@Override
	public void updateTreasurePic(TreasurePic treasurePic) {
		// TODO Auto-generated method stub
		update(treasurePic);
	}

	@Override
	public int modifyStatu(int treasureId, int treasurePicId, int statu) {
		// TODO Auto-generated method stub
		List<Modify> modifies=new ArrayList<Modify>();
		modifies.add(modify(TreasurePicColumns.statu, statu));
		return update(modifies, match(TreasurePicColumns.treasureId, treasureId),match(TreasurePicColumns.treasurePicId, treasurePicId));
	
	}
	
}
