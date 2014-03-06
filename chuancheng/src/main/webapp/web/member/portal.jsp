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
	<div class="xm-box uc-info-box">
		<div class="bd clearfix">
			<h3 class="uc-welcome">
				<span class="user-name">${sessionScope.UserConstant_VISITOR.username}</span> ${welcome}
			</h3>
			<img class="uc-avatar" alt=""
				src="<c:url value="/resources/web/images/member/photo.jpg"/>">
				
			<div class="uc-notice-list">
				账户安全级别： <span class="icon-common icon-safe-level icon-safe-level-1"></span>
				一般 <span class="separator">|</span> <span
					class="icon-common icon-safe-closed"></span> <a target="_blank"
					href="#">绑定手机</a> <span class="separator">|</span> <span
					class="icon-common icon-safe-closed"></span> <a target="_blank"
					href="#">绑定邮箱</a> <span class="separator">|</span>
				<div class="notice-safe-tip uc-tooltip">
					如何提高安全级别？
					<div class="uc-tooltip-popup hide">
						<ol>
							<li><a target="_blank" href="#">绑定手机</a> ，确保您本人登陆</li>
							<li><a target="_blank" href="#">绑定邮箱</a> ，密码、账户找回必备</li>
						</ol>
						<span class="arrow"></span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="xm-box uc-box">
		<div class="hd">
			<h3 class="title">未付款订单</h3>
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

    <div class="row">
       <div class="span9 uc-narrow-box">
        <div class="xm-box uc-box uc-fav-box">
				<div class="xm-box uc-box uc-fav-box">
					<div class="hd">
						<h3 class="title">收藏夹</h3>
						<a class="more-link" href="<c:url value="/web/member/followProfessors"/>">查看全部></a>
					</div>
					<div class="bd">
						<ul class="uc-item-list clearfix">
							<c:if test="${professores!= null}">
								<c:forEach var="professor" varStatus="status"
									items="${professores}">
									<li>
									<a title="${professor.nickName } "
										href="<c:url value="/web/member/professorInfo"/>?professorId=${professor.id }" target="_blank">
											<img alt="${professor.nickName } "
											src="<c:url value="${professor.photo }"/>">
									</a>
									</li>
								</c:forEach>
							</c:if>
						</ul>
					</div>
				</div>
				<!--  -->
        </div>
       </div>

		<div class="span3">
			<div class="xm-box uc-box uc-recharge-box">
				<div class="hd">
					<h3 class="title">最新动态</h3>
				</div>
				<div class="bd">
					<form class="xm-recharge-form" action="#">
						<fieldset class="xm-recharge-submit">
							<input id="rechargeBtn" class="btn disabled btn-recharge-submit"
								type="submit" disabled="" value="预定消息">
						</fieldset>
					</form>
				</div>
			</div>
		</div>

	</div>
</div>
