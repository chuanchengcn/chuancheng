package com.taotaoti.professor.validation;

import java.util.List;

import org.springframework.stereotype.Component;

import com.taotaoti.common.dto.ErrorDTO;
import com.taotaoti.professor.constant.ProfessorConstant;
import com.taotaoti.professor.error.ProfessorError;
import com.taotaoti.professor.form.ProfessorForm;

@Component
public class ProfessorValidator {
	
	protected boolean isNameValid(String name){
		if(name.length()>ProfessorConstant.PROFESSOR_NAME_MAX_SIZE){
			return false;
		}
		return true;
	}
	
	public boolean isValidAdd(ProfessorForm form,int index,List<ErrorDTO> errors){
		if(!isNameValid(form.getName())){
			errors.add(new ErrorDTO(ProfessorError.PROFESSOR_NAME_LIMT.getCode(), ProfessorError.PROFESSOR_NAME_LIMT.getMessage(), ProfessorError.PROFESSOR_NAME_LIMT.getResourceMessage()));
			return false;
		}
		return true;
	}

}
