package com.taotaoti.commonFile.dao;

import java.util.List;

import com.taotaoti.common.generic.dao.BaseDao;
import com.taotaoti.commonFile.bo.CommonFile;

public interface CommonFileDao extends BaseDao<Integer, CommonFile>{
	/**
	 * 
	 * @param memberId 用户id 系统默认 为0
	 * @param kind 类型 0 图片 1 文件
	 * @param productKind 产品线
	 * @param productId  产品线对应的id
	 * @return
	 */
	public List<CommonFile> findCommonFilesByProduct(int memberId,int kind,int productKind,int productId);
	/**
	 * 
	 * @param memberId 用户id
	 * @param kind 类型 0 图片 1 文件
	 * @param productKind 产品线
	 * @param productId  产品线对应的id
	 * @return
	 */
	public CommonFile findOneCommonFilesByProduct(int memberId, int kind,int productKind, int productId);
	/**
	 * 
	 * @param memberId 用户id
	 * @param kind 类型 0 图片 1 文件
	 * @param productKind 产品线
	 * @param productId  产品线对应的id
	 * @param path 文件路径
	 * @param comment 注释
	 * @return
	 */
	public CommonFile creatCommonFilesByProduct(int memberId,int kind,int productKind,int productId,String path,String title,String comment);
	/**
	 * 
	 * @param memberId 用户id
	 * @param kind 类型 0 图片 1 文件
	 * @param productKind 产品线
	 * @param productId  产品线对应的id
	 * @param path 文件路径
	 * @param comment 注释
	 * @return
	 */
    public void updateCommonFilesByProduct(int commonFileId,int memberId,int kind,int productKind,int productId,String path,String title,String comment,int statu);
}
