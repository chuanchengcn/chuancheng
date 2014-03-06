package com.taotaoti.store.service;

import java.util.List;

import com.taotaoti.store.bo.Store;
import com.taotaoti.store.bo.StorePlan;
import com.taotaoti.store.bo.StorePlanInfo;
import com.taotaoti.store.form.ActivityStoreForm;
import com.taotaoti.store.form.EntityStoreForm;
import com.taotaoti.store.vo.ActivityStoreVo;
import com.taotaoti.store.vo.EntityStoreVo;

public interface StoreMgr {
	/**
	 * 
	 * @param activityStoreForm
	 * @return
	 */
	public ActivityStoreVo createActivityStore(ActivityStoreForm activityStoreForm);
	public EntityStoreVo createEntityStore(EntityStoreForm entityStoreForm);
	public ActivityStoreVo updateActivityStore(ActivityStoreVo activityStoreVo);
	public EntityStoreVo updateEntityStore(EntityStoreVo entityStoreVo);
	/**
	 * 
	 * @param storeId 活动名称
	 * @param kind 0 图片 1 文件
	 * @param path 路径
	 * @param commont  描述
	 * @param title 标题
	 * @return
	 */
	public ActivityStoreVo createCoomonFileForStore(int storeId,int kind,String path,String title,String comment);
	/**
	 * 
	 * @param storeId
	 * @param commonFileId
	 * @param kind
	 * @param path
	 * @param comment
	 * @param title
	 * @param statu
	 * @return
	 */
	public ActivityStoreVo updateCoomonFileForStore(int storeId,int commonFileId,int kind,String path,String comment,String title,int statu);
	/**
	 * 查询所有活动专场
	 * @return
	 */
	public List<ActivityStoreVo> findActivityStores();
	/**
	 * 
	 * @param storeId
	 * @return
	 */
	public ActivityStoreVo findActivityStore(int storeId);
	public EntityStoreVo findEntityStore(int storeId);
	public List<Store> findAllStore();
	
	/**
	 * 查询所有的实体店铺
	 * @return
	 */
	public List<EntityStoreVo> findEntityStore();
	public List<StorePlan> findStorePlanByStoreId(int storeId);
	public List<StorePlanInfo> findStorePlanInfoByStoreIdAndStorePlanId(int storeId,int storePlanId);
	public void createStorePlan(StorePlan storePlan);
	public void createStorePlanInfo(List<StorePlanInfo> storePlanInfos);
	
}
