package com.taotaoti.treasure;

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
import com.taotaoti.treasure.bo.TreasurePic;
import com.taotaoti.treasure.dao.impl.TreasureDaoImpl;
import com.taotaoti.treasure.form.TreasureForm;
import com.taotaoti.treasure.service.TreasureMgr;
import com.taotaoti.treasure.vo.TreasureDetail;

public class TreasureMgrTest extends BaseTestCase {
	
	@Resource
	private TreasureMgr treasureMgr;
	@Test
	public void testGetTreasureDetail(){
		TreasureDetail treasureDetail=		treasureMgr.getTreasureView(1);
     System.out.println(ObjToStringUtil.objToString(treasureDetail));
	}
	@Test
	public void testSaveTreasureForm(){
		TreasureForm form=new TreasureForm();
		form.setAuthor("liujie");
		form.setName("蒙娜丽莎");
		form.setCategory(1);
		form.setDescription("verygood");
		form.setHistoryTime(new Timestamp(System.currentTimeMillis()));
		form.setStory("story");
		form.setTelephone("11111111111111");
		List<ErrorDTO> errors=new ArrayList<ErrorDTO>();
		for(int i=0;i<20;i++)
		treasureMgr.createTreasure(form, 1, errors);
		System.out.println(errors.size());
	}
	@Test
	public void testAddPic(){
		int treasureId=1;
		TreasurePic treasurePic=new TreasurePic();
		treasurePic.setComment("1111111111111");
		treasurePic.setMemberId(1);
		treasurePic.setPath("//dadfasf/asdfasdf");
		treasurePic.setStatu(0);
		treasurePic.setTreasureId(1);
		
		treasureMgr.addTreasurePicByTreasureId(treasureId, treasurePic);
	}
}
