<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/member/member-home.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/member/protal.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/historyAppointment.css"/>" />
<!-- 这里写你们的内容 -->
<div class="span12">
	<div class="xm-box uc-box">
		<div class="hd">
			<h3 class="title">当前预约</h3>
			<p class="tip">
				<span class="separator">|</span> 由于数据同步可能带来订单信息及订单状态显示滞后，请稍等一会儿。
			</p>
		</div>
		<div class="bd">
			<ul class="uc-order-list uc-order-overall-list">
			  <c:if test="${orders!= null}">
			   <c:forEach var="order" varStatus="status" items="${orders}">
				<li class="uc-order-item clearfix">
					<div class="order-item">
						<img width="60" height="60"
							src="http://img08.mifile.cn/v1/MI_18455B3E4DA706226CF7535A58E875F0267/T1QUJTBTVT1RXrhCrK.jpg?width=60&height=60">
					</div>
					<div class="order-info">
						<span class="order-info-title"> <a
							href="http://order.xiaomi.com/user/orderView/1140117298001875"
							target="_blank">订单号：${order.orderNumber}</a>
						</span>
					</div>
					<div class="order-delivery">等待付款</div>
					<div class="order-pay">
						<span class="order-pay-total">¥69.00</span> <span
							class="order-pay-type"> 在线支付 </span>
					</div>
					<div class="order-date">
						<fmt:formatDate value="${order.createTime}" pattern="yyyy/MM/dd" />
						 <span class="order-time"><fmt:formatDate value="${order.createTime}" pattern="HH点mm分" /></span>
					</div>
					<div class="order-action">
						<a class="order-action-detail"
							href="orderView?orderNumber=${order.orderNumber}"
							target="_blank">订单详情></a> 
							<a class="btn btn-primary btn-small"
							target="_blank"
							href="buy/confirm/${order.orderNumber}">确认预约</a>
					</div>
				</li>
				</c:forEach>
			  </c:if>
			</ul>
		</div>
</div>
</div>	
