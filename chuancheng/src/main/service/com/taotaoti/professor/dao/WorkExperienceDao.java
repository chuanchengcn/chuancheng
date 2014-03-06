
package com.taotaoti.professor.dao;

import java.util.List;

import com.taotaoti.common.generic.dao.BaseDao;
import com.taotaoti.professor.bo.WorkExperience;

public interface WorkExperienceDao extends BaseDao<Integer, WorkExperience> {
	public List<WorkExperience> getWorkExperiencesByProfessorId(int professorId);
	public void updateWorkExperience(WorkExperience workExperience);
	public int modifyDescription(int professorId,int workExperienceId,String description);
	public int modifyStatu(int professorId,int workExperienceId,int statu);
}