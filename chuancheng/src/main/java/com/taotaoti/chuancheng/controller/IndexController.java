package com.taotaoti.chuancheng.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.taotaoti.chuancheng.news.vo.ViewNew;
import com.taotaoti.common.controller.BaseController;
import com.taotaoti.common.vo.MatchMap;
import com.taotaoti.professor.service.ProfessorMgr;
import com.taotaoti.store.service.StoreMgr;
import com.taotaoti.treasure.service.TreasureMgr;

@Controller
public class IndexController extends BaseController {
	private static final Logger LOG = LoggerFactory.getLogger(IndexController.class);
	@Resource
	StoreMgr storeMgr;
	@Resource
	ProfessorMgr professorMgr;
	@Resource 
	TreasureMgr treasureMgr;
	
	@RequestMapping(value = "/index")
	public String initAll(ModelMap model ){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
	 	MatchMap stores=new MatchMap("stores", storeMgr.findAllStore());
	 	MatchMap professores=new MatchMap("professores", professorMgr.getPageProfessors(0, 10));
	 	MatchMap treasures=new MatchMap("treasures", treasureMgr.getPageTreasures(0, 18));
		listMaps.add(stores);
		listMaps.add(professores);
		listMaps.add(treasures);
		return this.buildSuccess(model, "/index", listMaps);
	}
	@RequestMapping(value = "/web/professors")
	public String professors(ModelMap model ){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		MatchMap professores=new MatchMap("professores", professorMgr.getAllProfessors());
		listMaps.add(professores);
		return this.buildSuccess(model, "/web/professors", listMaps);
	}
	@RequestMapping(value = "/web/join")
	public String showStore(ModelMap model,
			@RequestParam(value="storeId") Integer storeId,
			@RequestParam(value="storeKind") Integer storeKind
			){
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		if(storeKind==1){
			MatchMap store=new MatchMap("store", storeMgr.findEntityStore(storeId));
			listMaps.add(store);
		}else if(storeKind==2){
			MatchMap store=new MatchMap("store", storeMgr.findActivityStore(storeId));
			listMaps.add(store);
		}
		MatchMap kind=new MatchMap("storeKind",storeKind);
		listMaps.add(kind);
		return this.buildSuccess(model, "/web/join", listMaps);
	}
	@RequestMapping(value="/web/ganji") 
    public String getFirstPage(ModelMap model,
    		@RequestParam(value="page",required=false) Integer curPage,
			@RequestParam(value="pageSize",required=false) Integer pageSize) {
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		if(curPage==null) curPage=1;
		if(pageSize==null) pageSize=12;
	    MatchMap treasures=new MatchMap("treasures", treasureMgr.getPageTreasures(curPage-1, pageSize));
		listMaps.add(treasures);
        return this.buildSuccess(model, "/web/ganji", listMaps);
    }
	@RequestMapping(value="/ajax/findTreasure") 
    public String getAjaxFindTreasure(ModelMap model,
    		@RequestParam(value="page",required=false) Integer curPage,
			@RequestParam(value="pageSize",required=false) Integer pageSize) {
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		if(curPage==null) curPage=1;
		if(pageSize==null) pageSize=12;
	    MatchMap treasures=new MatchMap("treasures", treasureMgr.getPageTreasures(curPage-1, pageSize));
		listMaps.add(treasures);
        return this.buildSuccess(model, "/find", listMaps);
    }	
}
