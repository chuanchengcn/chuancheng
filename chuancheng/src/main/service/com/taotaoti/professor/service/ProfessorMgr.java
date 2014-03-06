package com.taotaoti.professor.service;

import java.util.List;

import com.taotaoti.common.dto.ErrorDTO;
import com.taotaoti.professor.bo.Professor;
import com.taotaoti.professor.bo.WorkExperience;
import com.taotaoti.professor.form.ProfessorForm;
import com.taotaoti.professor.vo.ProfessorDetail;

public interface ProfessorMgr {
	public List<Professor> getAllProfessors();
	public List<Professor> getPageProfessors(int curPage,int pageSize);
	public Professor createProfessor(int memberId,ProfessorForm form,List<ErrorDTO> errors);
	public void updateProfessorByProfessorId(int professorId,ProfessorForm professorForm,List<ErrorDTO> errors);
	public void deleteProfessorByProfessorId(int professorId);
	public ProfessorDetail getProfessorView(int professorId);
	public Professor getProfessor(int professorId);
	public void addWorkExperienceByProfessorId(int professorId,WorkExperience workExperience);
	public void updateWorkExperienceByProfessorId(int professorId,WorkExperience workExperience);
	
	
}
