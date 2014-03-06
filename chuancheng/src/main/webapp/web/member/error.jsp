<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-home.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/protal.css"/>" />
<div class="span12">
	<div class="xm-box uc-box">
		<div class="hd">
			<h3 class="title">消息提示</h3>
			<a class="more-link" href="<c:url value="/web/member/currentAppointment"/>">查看全部></a>
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
							href="<c:url value="/web/member/orderView"/>?orderNumber=${order.orderNumber}"
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
							href="<c:url value="/web/member/orderView"/>?orderNumber=${order.orderNumber}"
							target="_blank">订单详情></a> 
							<a class="btn btn-primary btn-small"
							target="_blank"
							href="buy/confirm/1140117298001875">确认预约</a>
					</div>
				</li>
				</c:forEach>
			  </c:if>
			</ul>
		</div>
	</div>

</div>
