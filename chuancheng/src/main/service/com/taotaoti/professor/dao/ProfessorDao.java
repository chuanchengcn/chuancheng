
package com.taotaoti.professor.dao;

import java.util.List;

import com.taotaoti.common.generic.dao.BaseDao;
import com.taotaoti.professor.bo.Professor;

public interface ProfessorDao extends BaseDao<Integer, Professor> {
	public List<Professor> findAllProfessorByStatu(int statu);
	public List<Professor> findProfessorsByStatu(int statu,int curPage,int pageSize);
	public int modifyPhoto(int professorId,String photoPath);
	public int modifyStatu(int professorId,int statu);
	public int modifyVistorCount(int professorId,int vistorCount);
	public int modifyIdenifiedCount(int professorId,int identifiedCount);
	public int modifyIdenifyingCount(int professorId,int identifyingCount);
	public int modifyHotCount(int professorId,int hot);
	public int modifyFollowCount(int professorId,int followCount);
	public int modifyCount(int professorId,int vistorCount,int followCount,int hot,int identifiedCount,int identifyingCount);
	
	
}