package com.taotaoti.professor.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;

import com.taotaoti.common.dao.AbstractDao;
import com.taotaoti.common.generic.dao.operator.Match;
import com.taotaoti.common.generic.dao.operator.Modify;
import com.taotaoti.common.generic.dao.operator.Order;
import com.taotaoti.professor.bo.Professor;
import com.taotaoti.professor.bo.ProfessorColumns;
import com.taotaoti.professor.dao.ProfessorDao;
@Repository
public class ProfessorDaoImpl extends AbstractDao<Integer, Professor> implements ProfessorDao{
	 protected final static Log LOG = LogFactory.getLog(ProfessorDaoImpl.class);
	@Override
	public int modifyPhoto(int professorId,String photoPath) {
		List<Modify> modifies=new ArrayList<Modify>();
		modifies.add(modify(ProfessorColumns.photo, photoPath));
		return update(modifies, match(ProfessorColumns.professorid, professorId));
	}

	@Override
	public int modifyVistorCount(int professorId,int vistorCount) {
		return update(modify(ProfessorColumns.vistorCount, vistorCount), match(ProfessorColumns.professorid, professorId));
	}

	@Override
	public int modifyIdenifiedCount(int professorId, int identifiedCount) {
		// TODO Auto-generated method stub
		return update(modify(ProfessorColumns.identifiedCount, identifiedCount), match(ProfessorColumns.professorid, professorId));
	}

	@Override
	public int modifyIdenifyingCount(int professorId, int identifyingCount) {
		// TODO Auto-generated method stub
		return update(modify(ProfessorColumns.identifyingCount, identifyingCount), match(ProfessorColumns.professorid, professorId));
	}

	@Override
	public int modifyHotCount(int professorId, int hot) {
		// TODO Auto-generated method stub
		return update(modify(ProfessorColumns.hot, hot), match(ProfessorColumns.professorid, professorId));
	}

	@Override
	public int modifyFollowCount(int professorId, int followCount) {
		// TODO Auto-generated method stub
		return update(modify(ProfessorColumns.followCount, followCount), match(ProfessorColumns.professorid, professorId));
	}

	@Override
	public int modifyCount(int professorId, int vistorCount, int followCount,
			int hot, int identifiedCount, int identifyingCount) {
		List<Modify> modifies=new ArrayList<Modify>();
		modifies.add(modify(ProfessorColumns.vistorCount, vistorCount));
		modifies.add(modify(ProfessorColumns.followCount, followCount));
		modifies.add(modify(ProfessorColumns.hot, hot));
		modifies.add(modify(ProfessorColumns.identifiedCount, identifiedCount));
		modifies.add(modify(ProfessorColumns.identifyingCount, identifyingCount));
		return update(modifies, match(ProfessorColumns.professorid, professorId));
	}

	@Override
	public int modifyStatu(int professorId, int statu) {
		List<Modify> modifies=new ArrayList<Modify>();
		modifies.add(modify(ProfessorColumns.statu, statu));
		return update(modifies, match(ProfessorColumns.professorid, professorId));
	}

	@Override
	public List<Professor> findAllProfessorByStatu(int statu) {
		return find(match(ProfessorColumns.statu, statu));
	}

	@Override
	public List<Professor> findProfessorsByStatu(int statu,int curPage,int pageSize) {
		List<Match> matchs=new ArrayList<Match>();
		matchs.add(match(ProfessorColumns.statu, statu));
		List<Order> orders=new ArrayList<Order>();
		orders.add(order(ProfessorColumns.professorid, true));
		return page(matchs, orders, curPage, pageSize);
	}
}
