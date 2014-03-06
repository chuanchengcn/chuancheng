package com.taotaoti.treasure.service;

import java.util.List;

import com.taotaoti.common.dto.ErrorDTO;
import com.taotaoti.treasure.bo.Treasure;
import com.taotaoti.treasure.bo.TreasurePic;
import com.taotaoti.treasure.form.TreasureForm;
import com.taotaoti.treasure.vo.TreasureDetail;

public interface TreasureMgr {
	public List<Treasure> getAllTreasures();
	public List<Treasure> getPageTreasuresByMemberId(int memberId,int curPage,int pageSize);
	public List<Treasure> getPageTreasures(int curPage,int pageSize);
	public Treasure createTreasure(TreasureForm form,int memberId,List<ErrorDTO> errors);
	public void updateTreasureByTreasureId(int treasureId,TreasureForm form,List<ErrorDTO> errors);
	public TreasureDetail getTreasureView(int treasureId);
	public void addTreasurePicByTreasureId(int treasureId,TreasurePic treasurePic);
	public void updateTreasurePicByTreasureId(int treasureId,TreasurePic treasurePic);
}
