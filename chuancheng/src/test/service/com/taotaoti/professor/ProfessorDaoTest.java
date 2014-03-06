package com.taotaoti.professor;

import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;

import com.taotaoti.common.BaseTestCase;
import com.taotaoti.common.generic.annotation.Column;
import com.taotaoti.common.utils.ObjToStringUtil;
import com.taotaoti.member.bo.Auth;
import com.taotaoti.member.dao.AuthDao;
import com.taotaoti.professor.bo.Professor;
import com.taotaoti.professor.bo.ProfessorColumns;
import com.taotaoti.professor.bo.WorkExperience;
import com.taotaoti.professor.dao.ProfessorDao;
import com.taotaoti.professor.dao.WorkExperienceDao;

public class ProfessorDaoTest extends BaseTestCase {
	
	@Resource
	private ProfessorDao professorDao;
	@Resource
	private WorkExperienceDao workExperienceDao;
	
	@Test
	public void testfindAll(){
		//List<Professor> list= professorDao.findAll();
		//System.out.println(list.size());
		List<WorkExperience> lists=workExperienceDao.findAll();
		System.out.println(lists.size());
		//workExperienceDao.create(new WorkExperience(2, "ss", "ddd", 2, 0));
	}
	@Test
	public void testModifyPhoto(){
		//professorDao.modifyPhoto(1, "/modify/photo");
		workExperienceDao.modifyStatu(1, 1, 3);
	}
	@Test
	public void testGetByid(){
		Professor professor=professorDao.get(1);
		System.out.println(ObjToStringUtil.objToString(professor));
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
		professorDao.create(professor);
	}
}
