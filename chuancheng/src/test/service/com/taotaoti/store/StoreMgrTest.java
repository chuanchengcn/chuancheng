package com.taotaoti.store;

import javax.annotation.Resource;

import org.junit.Test;

import com.taotaoti.common.BaseTestCase;
import com.taotaoti.common.utils.ObjToStringUtil;
import com.taotaoti.store.form.ActivityStoreForm;
import com.taotaoti.store.service.StoreMgr;
import com.taotaoti.store.vo.ActivityStoreVo;

public class StoreMgrTest extends BaseTestCase {
	
	@Resource
	private StoreMgr storeMgr;
	@Test
	public void testCreateActivityStore(){
	ActivityStoreForm activityStoreVo=new ActivityStoreForm();
	activityStoreVo.setStoreName("2013年首都鉴宝活动");
	activityStoreVo.setTitle("hello");
	activityStoreVo.setDescription("dddddddddddddddddddddddddddddddd");
	activityStoreVo.setTelephone("11111");
	activityStoreVo.setEndTime("2013-12-12");
	activityStoreVo.setLocation("33333");
	activityStoreVo.setMaxEnterCount(120);
	activityStoreVo.setOrganizer("ddd");
	activityStoreVo.setStartTime("2013-12-11");
	activityStoreVo= storeMgr.createActivityStore(activityStoreVo);
    System.out.println(ObjToStringUtil.objToString(activityStoreVo));
	}
	
	@Test
	public void testCreateActivityImgStore(){
		ActivityStoreVo activityStoreVo=new ActivityStoreVo();
		activityStoreVo= storeMgr.createCoomonFileForStore(3, 0, "/img/soure", "ddd", "ddd");
		System.out.println(ObjToStringUtil.objToString(activityStoreVo));
	}
	
}
