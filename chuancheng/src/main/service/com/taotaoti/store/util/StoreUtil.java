package com.taotaoti.store.util;

import java.sql.Timestamp;

import com.taotaoti.common.utils.DateUtils;
import com.taotaoti.store.bo.Store;
import com.taotaoti.store.constant.StoreConstant;
import com.taotaoti.store.form.ActivityStoreForm;
import com.taotaoti.store.form.EntityStoreForm;
import com.taotaoti.store.vo.ActivityStoreVo;
import com.taotaoti.store.vo.EntityStoreVo;

public class StoreUtil {
	
	public static ActivityStoreVo transformActivityStoreFormToActivityStore(ActivityStoreForm activityStoreForm){
		ActivityStoreVo activityStoreVo=new ActivityStoreVo();
		activityStoreVo.setStoreName(activityStoreForm.getStoreName());
		activityStoreVo.setTitle(activityStoreForm.getTitle());
		activityStoreVo.setDescription(activityStoreForm.getDescription());
		activityStoreVo.setTelephone(activityStoreForm.getTelephone());
		activityStoreVo.setStartTime(activityStoreForm.getStartTime());
		activityStoreVo.setEndTime(activityStoreForm.getEndTime());
		activityStoreVo.setLocation(activityStoreForm.getLocation());
		activityStoreVo.setOrganizer(activityStoreForm.getOrganizer());
		activityStoreVo.setFollowCount(0);
		activityStoreVo.setEnterCount(0);
		activityStoreVo.setVisitorCount(0);
		activityStoreVo.setMaxEnterCount(activityStoreForm.getMaxEnterCount());
		return activityStoreVo;
	}
	public static Store transformActivityStoreToStore(ActivityStoreVo activityStoreVo){
	    Store store=new Store();
	    store.setId(activityStoreVo.getStoreId());
	    store.setStoreName(activityStoreVo.getStoreName());
	    store.setTitle(activityStoreVo.getTitle());
	    store.setStatu(activityStoreVo.getStatu());
	    store.setDescription(activityStoreVo.getDescription());
	    store.setCreateTime(activityStoreVo.getCreateTime());
	    store.setTelephone(activityStoreVo.getTelephone());
	    store.setKind(StoreConstant.STORE_ACTIVITY);
	    store.setStartTime(new Timestamp(DateUtils.parseDate(activityStoreVo.getStartTime()).getTime()));
	    store.setEndTime(new Timestamp(DateUtils.parseDate(activityStoreVo.getEndTime()).getTime()));
	    store.setLocation(activityStoreVo.getLocation());
	    store.setOrganizer(activityStoreVo.getOrganizer());
	    store.setFollowCount(activityStoreVo.getFollowCount());
	    store.setEnterCount(activityStoreVo.getEnterCount());
	    store.setVisitorCount(activityStoreVo.getVisitorCount());
	    store.setMaxEnterCount(activityStoreVo.getMaxEnterCount());
	    return store;
	}
	
	public static ActivityStoreVo transformStoreToActivityStore(Store store){
		ActivityStoreVo activityStoreVo=new ActivityStoreVo();
		activityStoreVo.setStoreId(store.getId());
		activityStoreVo.setStoreName(store.getStoreName());
		activityStoreVo.setTitle(store.getTitle());
		activityStoreVo.setStatu(store.getStatu());
		activityStoreVo.setDescription(store.getDescription());
		activityStoreVo.setCreateTime(store.getCreateTime());
		activityStoreVo.setTelephone(store.getTelephone());
		activityStoreVo.setStartTime(DateUtils.format(store.getStartTime()));
		activityStoreVo.setEndTime(DateUtils.format(store.getEndTime()));
		activityStoreVo.setLocation(store.getLocation());
		activityStoreVo.setOrganizer(store.getOrganizer());
		activityStoreVo.setFollowCount(store.getFollowCount());
		activityStoreVo.setEnterCount(store.getEnterCount());
		activityStoreVo.setVisitorCount(store.getVisitorCount());
		activityStoreVo.setMaxEnterCount(store.getMaxEnterCount());
	    return activityStoreVo;
	}
	public static EntityStoreVo transformEntityStoreFormToActivityStore(EntityStoreForm entityStoreForm){
		EntityStoreVo entityStoreVo=new EntityStoreVo();
		entityStoreVo.setStoreName(entityStoreForm.getStoreName());
		entityStoreVo.setTitle(entityStoreForm.getTitle());
		entityStoreVo.setDescription(entityStoreForm.getDescription());
		entityStoreVo.setTelephone(entityStoreForm.getTelephone());
		return entityStoreVo;
	}
	public static Store transformEntityStoreToStore(EntityStoreVo entityStoreVo){
	    Store store=new Store();
	    store.setId(entityStoreVo.getStoreId());
	    store.setStoreName(entityStoreVo.getStoreName());
	    store.setTitle(entityStoreVo.getTitle());
	    store.setStatu(entityStoreVo.getStatu());
	    store.setDescription(entityStoreVo.getDescription());
	    store.setCreateTime(entityStoreVo.getCreateTime());
	    store.setTelephone(entityStoreVo.getTelephone());
	    store.setKind(StoreConstant.STORE_ENTITY);
	    return store;
	}

	
	public static EntityStoreVo transformStoreToEntityStore(Store store){
		EntityStoreVo entityStoreVo=new EntityStoreVo();
		entityStoreVo.setStoreId(store.getId());
		entityStoreVo.setStoreName(store.getStoreName());
		entityStoreVo.setTitle(store.getTitle());
		entityStoreVo.setStatu(store.getStatu());
		entityStoreVo.setDescription(store.getDescription());
		entityStoreVo.setCreateTime(store.getCreateTime());
		entityStoreVo.setTelephone(store.getTelephone());
		entityStoreVo.setFollowCount(store.getFollowCount());
		entityStoreVo.setEnterCount(store.getEnterCount());
		entityStoreVo.setVisitorCount(store.getVisitorCount());
		return entityStoreVo;
	}

}
