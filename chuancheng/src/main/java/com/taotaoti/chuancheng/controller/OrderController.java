package com.taotaoti.chuancheng.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.taotaoti.chuancheng.news.vo.ViewNew;
import com.taotaoti.common.controller.BaseController;
import com.taotaoti.common.utils.ObjToStringUtil;
import com.taotaoti.common.vo.JsonObject;
import com.taotaoti.common.vo.MatchMap;
import com.taotaoti.common.web.session.SessionProvider;
import com.taotaoti.order.bo.JianbaoOrder;
import com.taotaoti.order.form.JianbaoOrderForm;
import com.taotaoti.order.service.JianbaoOrderMgr;

@Controller
@RequestMapping(value="/web/member")
public class OrderController extends BaseController {
	private static final Logger LOG = LoggerFactory.getLogger(OrderController.class);
	@Autowired
	private SessionProvider session;
	@Resource
	private JianbaoOrderMgr jianbaoOrderMgr;
	
	@RequestMapping(value="/ajax/historyOrders") 
	@ResponseBody
	public JsonObject historyOrders(HttpServletRequest request,ModelMap model,
    		@RequestParam(value="page",required=false) Integer curPage,
			@RequestParam(value="pageSize",required=false) Integer pageSize) {
		LOG.info("ajax get viewNewsList ");
		this.visitor=session.getSessionVisitor(request);
		int memberId=visitor.getUserid();
	    List<JianbaoOrder> jianbaoOrders=jianbaoOrderMgr.findOrdersByMemberId(memberId);
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		if(curPage==null) curPage=1;
		if(pageSize==null) pageSize=12;
	    MatchMap orders=new MatchMap("jianbaoOrders",jianbaoOrders);
		listMaps.add(orders);
		LOG.info("ajax get viewNewsList end");
		return this.buildSuccess(listMaps);
    }	
	@RequestMapping(value="/ajax/orderDetail") 
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
	@RequestMapping(value="/orderView") 
	public String orderView(ModelMap model,HttpServletRequest request,
			@RequestParam(value="orderNumber",required=false) String orderNumber) {
		List<MatchMap> listMaps=new ArrayList<MatchMap>();
		 this.visitor=session.getSessionVisitor(request);
		 int memberId=visitor.getUserid();
		MatchMap order=new MatchMap("order",jianbaoOrderMgr.findOrderByMemberIdAndOrderNumber(memberId, orderNumber));
		listMaps.add(order);
		return this.buildSuccess(model, "/web/member/orderView", listMaps);
	}
	@RequestMapping(value="/addOrderForm") 
	public ModelAndView addOrderForm(ModelMap model,HttpServletRequest request,
			JianbaoOrderForm orderForm) {
		
		 LOG.info(ObjToStringUtil.objToString(orderForm));
		return this.buildSuccessByRedirectOnlyUrl("/web/member/currentAppointment");
	}
	@RequestMapping(value="/ajax/addOrderTest") 
	@ResponseBody
	public JsonObject addOrderTest(ModelMap model,
			HttpServletRequest request,
			JianbaoOrderForm orderForm) {
		 System.out.println(request.getParameter("orderNemberNO"));
		 LOG.info(ObjToStringUtil.objToString(orderForm));
		 
		return this.buildSuccess();
    }
	
}
