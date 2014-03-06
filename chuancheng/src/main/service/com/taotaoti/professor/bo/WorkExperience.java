package com.taotaoti.professor.bo;

import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.generic.annotation.Table;
import com.taotaoti.common.generic.bo.BaseObject;
@Table(db = "chuancheng_jianbao", name = "work_experience", keyColumn = WorkExperienceColumns.workExperienceId)
public class WorkExperience extends BaseObject<Integer> {

	private static final long serialVersionUID = -9041083396321120961L;
	@Column(value=WorkExperienceColumns.yearName)
	private String yearName;
	@Column(value=WorkExperienceColumns.description)
	private String description;
	@Column(maybeModified=false, value=WorkExperienceColumns.professorId)
	private int professorId;
	@Column(value=WorkExperienceColumns.statu)
	private int statu;
	
	public WorkExperience(){
		
	}
	public WorkExperience(int workExperienceId, String yearName,
			String description, int professorId, int statu) {
		this.id = workExperienceId;
		this.yearName = yearName;
		this.description = description;
		this.professorId = professorId;
		this.statu = statu;
	}
	
	public String getYearName() {
		return yearName;
	}
	public void setYearName(String yearName) {
		this.yearName = yearName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getProfessorId() {
		return professorId;
	}
	public void setProfessorId(int professorId) {
		this.professorId = professorId;
	}
	public int getStatu() {
		return statu;
	}
	public void setStatu(int statu) {
		this.statu = statu;
	}
	
	
	
}
