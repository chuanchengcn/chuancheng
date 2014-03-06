
package com.taotaoti.order.dao;

import java.util.List;

import com.taotaoti.common.generic.dao.BaseDao;
import com.taotaoti.order.bo.JianbaoOrder;

public interface JianbaoOrderDao extends BaseDao<Integer, JianbaoOrder> {
	
	public void modifyTreasureId(int orderId,int treasureId);
	public void modifyIsOnline(int orderId,int isOnline);
	public void modifyProgress(int orderId,int progress);
	public List<JianbaoOrder> findOrderByMemberId(int memberId);
	public List<JianbaoOrder> findOrderByStoreId(int storeId);
	public JianbaoOrder findOneByMemberIdAndOrderNumber(int memberId,String orderNumber);
	public List<JianbaoOrder> findOneByMemberIdAndStatu(int memberId,int statu);
	public List<JianbaoOrder> findOrderByMemberIdAndStatuAndProgress(int memberId,int statu,int progress);
	public List<JianbaoOrder> findOrderByStatuAndProgress(int statu,int progress);
	public List<JianbaoOrder> findOrderByStatu(int statu);
	
}