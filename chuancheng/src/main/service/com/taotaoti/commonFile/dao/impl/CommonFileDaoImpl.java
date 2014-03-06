package com.taotaoti.commonFile.dao.impl;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.taotaoti.common.dao.AbstractDao;
import com.taotaoti.commonFile.bo.CommonFile;
import com.taotaoti.commonFile.bo.CommonFileColumns;
import com.taotaoti.commonFile.dao.CommonFileDao;
@Repository
public class CommonFileDaoImpl extends AbstractDao<Integer, CommonFile> implements
		CommonFileDao {

	@Override
	public List<CommonFile> findCommonFilesByProduct(int memberId, int kind,
			int productKind, int productId) {
		return find(
				match(CommonFileColumns.memberId, memberId),
				match(CommonFileColumns.kind, kind),
				match(CommonFileColumns.productKind,productKind),
				match(CommonFileColumns.productId, productId),
				match(CommonFileColumns.statu, 0));
	}
	@Override
	public CommonFile findOneCommonFilesByProduct(int memberId, int kind,
			int productKind, int productId) {
		return findOne(
				match(CommonFileColumns.memberId, memberId),
				match(CommonFileColumns.kind, kind),
				match(CommonFileColumns.productKind,productKind),
				match(CommonFileColumns.productId, productId),
				match(CommonFileColumns.statu, 0));
	}
	@Override
	public CommonFile creatCommonFilesByProduct(int memberId, int kind,
			int productKind, int productId, String path,String title,String comment) {
		CommonFile commonFile=new CommonFile();
		commonFile.setComment(comment);
		commonFile.setTitle(title);
		commonFile.setCreateTime(new Timestamp(System.currentTimeMillis()));
		commonFile.setKind(kind);
		commonFile.setProductId(productId);
		commonFile.setProductKind(productKind);
		commonFile.setPath(path);
		commonFile.setMemberId(memberId);
		return create(commonFile);
	}
	@Override
	public void updateCommonFilesByProduct(int commonFileId, int memberId,
			int kind, int productKind, int productId, String path,
			String title, String comment, int statu) {
		CommonFile commonFile=get(commonFileId);
		commonFile.setComment(comment);
		commonFile.setTitle(title);
		commonFile.setKind(kind);
		commonFile.setMemberId(memberId);
		commonFile.setProductId(productId);
		commonFile.setProductKind(productKind);
		commonFile.setPath(path);
		commonFile.setStatu(statu);
		update(commonFile);
	}
}
