package com.taotaoti.store.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Component;

import com.taotaoti.common.constant.CommonFileConstant;
import com.taotaoti.common.utils.ObjToStringUtil;
import com.taotaoti.commonFile.bo.CommonFile;
import com.taotaoti.commonFile.dao.CommonFileDao;
import com.taotaoti.store.bo.Store;
import com.taotaoti.store.bo.StorePlan;
import com.taotaoti.store.bo.StorePlanInfo;
import com.taotaoti.store.constant.StoreConstant;
import com.taotaoti.store.dao.StoreDao;
import com.taotaoti.store.dao.StorePlanDao;
import com.taotaoti.store.dao.StorePlanInfoDao;
import com.taotaoti.store.form.ActivityStoreForm;
import com.taotaoti.store.form.EntityStoreForm;
import com.taotaoti.store.service.StoreMgr;
import com.taotaoti.store.util.StoreUtil;
import com.taotaoti.store.vo.ActivityStoreVo;
import com.taotaoti.store.vo.EntityStoreVo;
@Component
public class StoreMgrImpl implements StoreMgr{

	protected final static Log LOG = LogFactory.getLog(StoreMgrImpl.class);
	@Resource
	StoreDao storeDao;
	@Resource
	StorePlanDao storePlanDao;
	@Resource
	StorePlanInfoDao storePlanInfoDao;
	@Resource 
	CommonFileDao commonFileDao;
	@Override
	public ActivityStoreVo createActivityStore(ActivityStoreForm activityStoreForm) {
		ActivityStoreVo activityStoreVo=StoreUtil.transformActivityStoreFormToActivityStore(activityStoreForm);
		LOG.info(ObjToStringUtil.objToString(activityStoreVo));
		Store store=StoreUtil.transformActivityStoreToStore(activityStoreVo);
		ActivityStoreVo storeVo=StoreUtil.transformStoreToActivityStore(storeDao.create(store));
		return storeVo;
	}
	@Override
	public EntityStoreVo createEntityStore(EntityStoreForm entityStoreForm) {
		EntityStoreVo entityStoreVo=StoreUtil.transformEntityStoreFormToActivityStore(entityStoreForm);
		LOG.info(ObjToStringUtil.objToString(entityStoreVo));
		Store store=StoreUtil.transformEntityStoreToStore(entityStoreVo);
		EntityStoreVo storeVo=StoreUtil.transformStoreToEntityStore(storeDao.create(store));
		return storeVo;
	}
	
	@Override
	public ActivityStoreVo updateActivityStore(ActivityStoreVo activityStoreVo) {
		Store store=StoreUtil.transformActivityStoreToStore(activityStoreVo);
		storeDao.update(store);
		return activityStoreVo;
	}
	@Override
	public EntityStoreVo updateEntityStore(EntityStoreVo entityStoreVo) {
		Store store=StoreUtil.transformEntityStoreToStore(entityStoreVo);
		storeDao.update(store);
		return entityStoreVo;
	}
	@Override
	public ActivityStoreVo createCoomonFileForStore(int storeId,
			int kind, String path, String title,String comment ) {
		commonFileDao.creatCommonFilesByProduct(
				CommonFileConstant.COMMONT_FILE_MEMBER_ID_DEFAULT, 
				kind, 
				CommonFileConstant.COMMONT_FILE_PRODUCT_KIND_STORE, 
				storeId,
				path, 
				title, 
				comment);
		return findActivityStore(storeId);
	}
	@Override
	public ActivityStoreVo updateCoomonFileForStore(int storeId,
			int commonFileId, int kind, String path, String comment,
			String title, int statu) {
		commonFileDao.updateCommonFilesByProduct(commonFileId,
				CommonFileConstant.COMMONT_FILE_MEMBER_ID_DEFAULT, 
				kind, CommonFileConstant.COMMONT_FILE_PRODUCT_KIND_STORE, storeId, path, title,comment,statu);
		return findActivityStore(storeId);
	}
	@Override
	public ActivityStoreVo findActivityStore(int storeId) {
		Store store=storeDao.get(storeId);
		ActivityStoreVo activityStoreVo=StoreUtil.transformStoreToActivityStore(store);
		List<CommonFile> storeImgs=commonFileDao.findCommonFilesByProduct(CommonFileConstant.COMMONT_FILE_MEMBER_ID_DEFAULT,CommonFileConstant.COMMONT_FILE_KIND_IMG, CommonFileConstant.COMMONT_FILE_PRODUCT_KIND_STORE,activityStoreVo.getStoreId());
		activityStoreVo.setStoreImgs(storeImgs);
		return activityStoreVo;
	}
	@Override
	public List<Store> findAllStore() {
		List<Store> stores=storeDao.findStoreByKind(0);
		return stores;
	}
	@Override
	public EntityStoreVo findEntityStore(int storeId) {
		Store store=storeDao.get(storeId);
		EntityStoreVo entityStoreVo=StoreUtil.transformStoreToEntityStore(store);
		List<CommonFile> storeImgs=commonFileDao.findCommonFilesByProduct(CommonFileConstant.COMMONT_FILE_MEMBER_ID_DEFAULT,CommonFileConstant.COMMONT_FILE_KIND_IMG, CommonFileConstant.COMMONT_FILE_PRODUCT_KIND_STORE,entityStoreVo.getStoreId());
		entityStoreVo.setStoreImgs(storeImgs);
		return entityStoreVo;
	}
	
	@Override
	public List<ActivityStoreVo> findActivityStores() {
		List<Store> stores=storeDao.findStoreByKind(StoreConstant.STORE_ACTIVITY);
		List<ActivityStoreVo> activityStoreVos=new ArrayList<ActivityStoreVo>();
		for(Store store:stores){
			ActivityStoreVo activityStoreVo=StoreUtil.transformStoreToActivityStore(store);
			List<CommonFile> storeImgs=commonFileDao.findCommonFilesByProduct(CommonFileConstant.COMMONT_FILE_MEMBER_ID_DEFAULT,CommonFileConstant.COMMONT_FILE_KIND_IMG, CommonFileConstant.COMMONT_FILE_PRODUCT_KIND_STORE,activityStoreVo.getStoreId());
			activityStoreVo.setStoreImgs(storeImgs);
			activityStoreVos.add(activityStoreVo);
		}
		return activityStoreVos;
	}
	@Override
	public List<EntityStoreVo> findEntityStore() {
		List<Store> stores=storeDao.findStoreByKind(StoreConstant.STORE_ENTITY);
		List<EntityStoreVo> entityStoreVos=new ArrayList<EntityStoreVo>();
		for(Store store:stores){
			EntityStoreVo entityStoreVo=StoreUtil.transformStoreToEntityStore(store);
			List<CommonFile> storeImgs=commonFileDao.findCommonFilesByProduct(CommonFileConstant.COMMONT_FILE_MEMBER_ID_DEFAULT,CommonFileConstant.COMMONT_FILE_KIND_IMG, CommonFileConstant.COMMONT_FILE_PRODUCT_KIND_STORE,entityStoreVo.getStoreId());
			entityStoreVo.setStoreImgs(storeImgs);
			entityStoreVos.add(entityStoreVo);
		}
		return entityStoreVos;
	}
	@Override
	public List<StorePlan> findStorePlanByStoreId(int storeId) {
		return storePlanDao.findAllStorePlanByStoreId(storeId);
	}
	@Override
	public List<StorePlanInfo> findStorePlanInfoByStoreIdAndStorePlanId(
			int storeId, int storePlanId) {
		return storePlanInfoDao.findStorePlanInfoByStoreIdAndStorePlanId(storeId, storePlanId);
	}
	@Override
	public void createStorePlan(StorePlan storePlan) {
		storePlanDao.create(storePlan);
	}
	@Override
	public void createStorePlanInfo(List<StorePlanInfo> storePlanInfos) {
		storePlanInfoDao.create(storePlanInfos);
	}
}
