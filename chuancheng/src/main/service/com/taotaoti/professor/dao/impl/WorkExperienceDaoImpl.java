package com.taotaoti.professor.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import com.taotaoti.common.dao.AbstractDao;
import com.taotaoti.common.generic.dao.operator.Modify;
import com.taotaoti.professor.bo.WorkExperience;
import com.taotaoti.professor.bo.WorkExperienceColumns;
import com.taotaoti.professor.dao.WorkExperienceDao;
@Repository
public class WorkExperienceDaoImpl extends AbstractDao<Integer, WorkExperience> implements WorkExperienceDao{
	 protected final static Log LOG = LogFactory.getLog(WorkExperienceDaoImpl.class);
	@Override
	public List<WorkExperience> getWorkExperiencesByProfessorId(int professorId) {
		return find(match(WorkExperienceColumns.professorId, professorId));
	}

	@Override
	public void updateWorkExperience(WorkExperience workExperience) {
	   update(workExperience);	
	}

	@Override
	public int modifyDescription(int professorId, int workExperienceId,
			String description) {
		List<Modify> modifies=new ArrayList<Modify>();
		modifies.add(modify(WorkExperienceColumns.description, description));
		return update(modifies, match(WorkExperienceColumns.workExperienceId, workExperienceId),match(WorkExperienceColumns.professorId, professorId));
	}

	@Override
	public int modifyStatu(int professorId, int workExperienceId, int statu) {
		List<Modify> modifies=new ArrayList<Modify>();
		modifies.add(modify(WorkExperienceColumns.statu, statu));
		return update(modifies, match(WorkExperienceColumns.workExperienceId, workExperienceId),match(WorkExperienceColumns.professorId, professorId));
	}
}
