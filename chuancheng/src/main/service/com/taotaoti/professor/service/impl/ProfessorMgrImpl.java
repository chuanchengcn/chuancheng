package com.taotaoti.professor.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.taotaoti.common.dto.ErrorDTO;
import com.taotaoti.professor.bo.Professor;
import com.taotaoti.professor.bo.WorkExperience;
import com.taotaoti.professor.constant.ProfessorConstant;
import com.taotaoti.professor.dao.ProfessorDao;
import com.taotaoti.professor.dao.WorkExperienceDao;
import com.taotaoti.professor.form.ProfessorForm;
import com.taotaoti.professor.service.ProfessorMgr;
import com.taotaoti.professor.validation.ProfessorValidator;
import com.taotaoti.professor.vo.ProfessorDetail;
@Component
public class ProfessorMgrImpl implements ProfessorMgr{

	@Resource 
	ProfessorDao professorDao;
	@Resource
	WorkExperienceDao workExperienceDao;
	@Resource
	private ProfessorValidator professorValidator;
	@Override
	public Professor createProfessor(int memberId,ProfessorForm form, List<ErrorDTO> errors) {
		 if (!professorValidator.isValidAdd(form, 0, errors)) {
				return null;
			}
		 Professor professor=form.getProfessorByProfessorForm(form);
				   professor.setStatu(0);
				   professor.setCreateTime(new Timestamp(System.currentTimeMillis()));
				   professor.setUpdateTime(new Timestamp(System.currentTimeMillis()));
				   professor.setCreateMemberId(0);
				   professor.setMemberId(memberId);
				   
	    return professorDao.create(professor);
	}
	@Override
	public void deleteProfessorByProfessorId(int professorId) {
		professorDao.modifyStatu(professorId, ProfessorConstant.PROFESSOR_STATU_DELETE);
	}


	@Override
	public ProfessorDetail getProfessorView(int professorId) {
		 Professor professor=professorDao.get(professorId);
		 ProfessorDetail professorDetail=new ProfessorDetail(professor);
		 List<WorkExperience> workExperiences=workExperienceDao.getWorkExperiencesByProfessorId(professorId);
		 professorDetail.setWorkExperiences(workExperiences);
		 return professorDetail;
	}

	@Override
	public void addWorkExperienceByProfessorId(int professorId,
			WorkExperience workExperience) {
		workExperience.setProfessorId(professorId);
		workExperienceDao.create(workExperience);
	}

	@Override
	public void updateWorkExperienceByProfessorId(int professorId,
			WorkExperience workExperience) {
		workExperience.setProfessorId(professorId);
		workExperienceDao.update(workExperience);
	}

	@Override
	public void updateProfessorByProfessorId(int professorId, ProfessorForm professorForm,List<ErrorDTO> errors) {
		if (!professorValidator.isValidAdd(professorForm, 0, errors)) {
			return;
		}
	 Professor professor=professorForm.getProfessorByProfessorForm(professorForm);
	 professor.setUpdateTime(new Timestamp(System.currentTimeMillis()));
     professorDao.update(professor);
     return;
	}

	@Override
	public List<Professor> getAllProfessors() {
		return professorDao.findAllProfessorByStatu(ProfessorConstant.PROFESSOR_STATU_OK);
	}
	@Override
	public List<Professor> getPageProfessors(int curPage, int pageSize) {
		return professorDao.findProfessorsByStatu(ProfessorConstant.PROFESSOR_STATU_OK, curPage, pageSize);
	}

	public ProfessorDao getProfessorDao() {
		return professorDao;
	}

	public void setProfessorDao(ProfessorDao professorDao) {
		this.professorDao = professorDao;
	}

	public WorkExperienceDao getWorkExperienceDao() {
		return workExperienceDao;
	}

	public void setWorkExperienceDao(WorkExperienceDao workExperienceDao) {
		this.workExperienceDao = workExperienceDao;
	}

	public ProfessorValidator getProfessorValidator() {
		return professorValidator;
	}

	public void setProfessorValidator(ProfessorValidator professorValidator) {
		this.professorValidator = professorValidator;
	}
	@Override
	public Professor getProfessor(int professorId) {
		// TODO Auto-generated method stub
		return professorDao.get(professorId);
	}
	

	
}
