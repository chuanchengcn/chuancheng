package com.taotaoti.treasure.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Component;

import com.taotaoti.common.dto.ErrorDTO;
import com.taotaoti.common.utils.MD5;
import com.taotaoti.common.utils.ObjToStringUtil;
import com.taotaoti.treasure.bo.Treasure;
import com.taotaoti.treasure.bo.TreasurePic;
import com.taotaoti.treasure.dao.TreasureDao;
import com.taotaoti.treasure.dao.TreasurePicDao;
import com.taotaoti.treasure.form.TreasureForm;
import com.taotaoti.treasure.service.TreasureMgr;
import com.taotaoti.treasure.vo.TreasureDetail;
@Component
public class TreasureMgrImpl implements TreasureMgr{

	protected final static Log LOG = LogFactory.getLog(TreasureMgrImpl.class);
	@Resource
	TreasureDao treasureDao;
	@Resource
	TreasurePicDao treasurePicDao;
	@Override
	public List<Treasure> getAllTreasures() {
		// TODO Auto-generated method stub
		return treasureDao.findAll();
	}
	@Override
	public List<Treasure> getPageTreasuresByMemberId(int memberId,int curPage,int pageSize){
		return treasureDao.findAllTreasuresByMemberId(memberId, curPage, pageSize);
	}
	@Override
	public List<Treasure> getPageTreasures(int curPage,int pageSize) {
		
		return treasureDao.pageTreasure(curPage, pageSize);
	}

	@Override
	public Treasure createTreasure(TreasureForm form,int memberId, List<ErrorDTO> errors) {
		Treasure treasure=form.getTreasureByTreasureForm(form);
			treasure.setStatu(0);
			Long addTime=System.currentTimeMillis();
			treasure.setCreateTime(new Timestamp(addTime));
			treasure.setUpdateTime(new Timestamp(System.currentTimeMillis()));
			treasure.setAddMemberTd(memberId);
			treasure.setMemberId(memberId);
			treasure.setNumber(MD5.getMd5(""+memberId+addTime));
			LOG.info(ObjToStringUtil.objToString(treasure));
        return treasureDao.create(treasure);
	}

	@Override
	public void updateTreasureByTreasureId(int treasureId,
			TreasureForm form, List<ErrorDTO> errors) {
		Treasure treasure=treasureDao.get(treasureId);
		treasure=form.getTreasureByTreasureForm(treasure,form);
		treasureDao.update(treasure);
	}

	@Override
	public TreasureDetail getTreasureView(int treasureId) {
		Treasure treasure=treasureDao.get(treasureId);
		 List<TreasurePic> treasurePics=treasurePicDao.getTreasurePicsByTreasureId(treasureId);
		 TreasureDetail treasureDetail=new TreasureDetail(treasure,treasurePics);
		 return treasureDetail;
	}

	@Override
	public void addTreasurePicByTreasureId(int treasureId,
			TreasurePic treasurePic) {
		treasurePic.setTreasureId(treasureId);
		treasurePicDao.create(treasurePic);
	}

	@Override
	public void updateTreasurePicByTreasureId(int treasureId,
			TreasurePic treasurePic) {
		treasurePic.setTreasureId(treasureId);
		treasurePicDao.update(treasurePic);
	}

	
	

}
