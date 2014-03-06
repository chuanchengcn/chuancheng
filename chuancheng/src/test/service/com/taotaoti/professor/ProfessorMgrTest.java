package com.taotaoti.professor;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;

import com.taotaoti.common.BaseTestCase;
import com.taotaoti.common.dto.ErrorDTO;
import com.taotaoti.common.utils.ObjToStringUtil;
import com.taotaoti.professor.bo.Professor;
import com.taotaoti.professor.form.ProfessorForm;
import com.taotaoti.professor.service.ProfessorMgr;
import com.taotaoti.professor.vo.ProfessorDetail;

public class ProfessorMgrTest extends BaseTestCase {
	
	@Resource
	private ProfessorMgr professorMgr;
	@Test
	public void testGetProfessorDetail(){
     ProfessorDetail professorDetail=		professorMgr.getProfessorView(1);
     System.out.println(ObjToStringUtil.objToString(professorDetail));
	}
	@Test
	public void testSaveProfessorForm(){
		ProfessorForm form=new ProfessorForm();
		form.setName("刘洁");
		form.setNickName("sabrina");
		form.setPhoto("/sources/professors/default.jpg");
		form.setTelephone("1862222");
		form.setIphone("11111");
		form.setSex("");
		form.setNation("china");
		form.setProvince("hebei");
		form.setCity("衡水");
		form.setCountry("景县");
		form.setAddress("xxxxx 街道 sb201号");
		List<ErrorDTO> errors=new ArrayList<ErrorDTO>();
				
		professorMgr.createProfessor(1,form, errors);
		System.out.println(errors.size());
	}
	
	//@Test
	public void testSaveProfessor(){
		Professor professor =new Professor();
		professor.setId(null);
		professor.setName("刘洁");
		professor.setNickName("sabrina");
		professor.setPhoto("/sources/professors/default.jpg");
		professor.setTelephone("1862222");
		professor.setIphone("11111");
		professor.setSex("");
		professor.setBirthday(new Timestamp(System.currentTimeMillis()));

		professor.setNation("china");
		professor.setProvince("hebei");
		professor.setCity("衡水");
		professor.setCountry("景县");
		professor.setAddress("xxxxx 街道 sb201号");
		professor.setCreateTime(new Timestamp(System.currentTimeMillis()));
		professor.setUpdateTime(new Timestamp(System.currentTimeMillis()));
		professor.setCreateMemberId(1);
		professor.setStatu(1);
		//professorDao.create(professor);
	}
}
