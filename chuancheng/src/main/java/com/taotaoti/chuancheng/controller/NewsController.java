package com.taotaoti.chuancheng.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.taotaoti.chuancheng.news.vo.ViewNew;
import com.taotaoti.common.controller.BaseController;
import com.taotaoti.common.vo.MatchMap;

@Controller
@RequestMapping(value="/web/news")
public class NewsController extends BaseController {
	private static final Logger LOG = LoggerFactory.getLogger(NewsController.class);
	@RequestMapping(value="/ajax/newLists") 
    public String getAjaxNewLists(ModelMap model,
    		@RequestParam(value="page",required=false) Integer curPage,
			@RequestParam(value="pageSize",required=false) Integer pageSize) {
		LOG.info("ajax get viewNewsList ");
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		if(curPage==null) curPage=1;
		if(pageSize==null) pageSize=12;
		List<ViewNew>  viewNews=new ArrayList<ViewNew>();
		ViewNew viewNew=new ViewNew();
		viewNew.setId(111111);
		viewNew.setTime("2013-12-26 10:26:00");
		viewNew.setTitle("【传承鉴宝】北京专场完美落幕 ");
		viewNew.setContent("12月20日，中国老牌摇滚乐队天堂乐队在北京举行了成立二十周年的纪念专场演出，为寒冷的冬日带来了躁动的热情，在2013的年末为广大摇滚乐迷奉上了一场视听觉的饕");
		viewNew.setImg("photo.jpg");
		viewNews.add(viewNew);
		viewNews.add(viewNew);
		viewNews.add(viewNew);
		viewNews.add(viewNew);
		viewNews.add(viewNew);
	    MatchMap newsList=new MatchMap("viewNews",viewNews);
		listMaps.add(newsList);
		LOG.info("ajax get viewNewsList end");
        return this.buildSuccess(model, "/newList", listMaps);
    }	
	@RequestMapping(value="/ajax/topLists") 
	public String getAjaxTops(ModelMap model,
			@RequestParam(value="page",required=false) Integer curPage,
			@RequestParam(value="pageSize",required=false) Integer pageSize) {
		LOG.info("ajax get viewNewsList ");
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		if(curPage==null) curPage=1;
		if(pageSize==null) pageSize=12;
		List<ViewNew>  viewNews=new ArrayList<ViewNew>();
		ViewNew viewNew=new ViewNew();
		viewNew.setId(111111);
		viewNew.setTime("2013-12-26 10:26:00");
		viewNew.setTitle("【传承鉴宝】北京专场完美落幕 ");
		viewNew.setContent("12月20日，中国老牌摇滚乐队天堂乐队在北京举行了成立二十周年的纪念专场演出，为寒冷的冬日带来了躁动的热情，在2013的年末为广大摇滚乐迷奉上了一场视听觉的饕");
		viewNew.setImg("photo.jpg");
		viewNews.add(viewNew);
		viewNews.add(viewNew);
		viewNews.add(viewNew);
		viewNews.add(viewNew);
		viewNews.add(viewNew);
		MatchMap newsList=new MatchMap("viewNews",viewNews);
		listMaps.add(newsList);
		LOG.info("ajax get viewNewsList end");
		return this.buildSuccess(model, "/topList", listMaps);
	}	
}
