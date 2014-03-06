package com.taotaoti.order;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;

import com.taotaoti.common.BaseTestCase;
import com.taotaoti.common.utils.ObjToStringUtil;
import com.taotaoti.order.bo.JianbaoOrder;
import com.taotaoti.order.service.JianbaoOrderMgr;

public class OrderMgrTest extends BaseTestCase {
	
	@Resource
	private JianbaoOrderMgr jianbaoOrderMgr;
	@Test
	public void testCreateOrder(){
		jianbaoOrderMgr.createActivityOrder(4, 1);
	}
	@Test
	public void testfindOrder(){
	List<JianbaoOrder> jianbaoOrders=jianbaoOrderMgr.findOrdersByMemberId(3);
	System.out.println(ObjToStringUtil.objToString(jianbaoOrders));
	}
	
}
