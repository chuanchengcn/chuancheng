<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-home.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/follow.css"/>" />
<div class="span12">
	<div class="xm-box uc-box">
		<div class="hd">
			<h3 class="title">未付款订单</h3>
			<p class="tip">
				<span class="separator">|</span> 由于数据同步可能带来订单信息及订单状态显示滞后，请稍等一会儿。
			</p>
		</div>
		<div class="bd">
			<div class="xm-goods-list-wrap">
				<ul class="xm-goods-list clearfix">
					<li>
						<div class="xm-goods-item">
							<div class="item-thumb">
								<a target="_blank" href="/item/1135200013"> <img
									src="http://img08.mifile.cn/v1/MI_18455B3E4DA706226CF7535A58E875F0267/T1LUhTB7xT1RXrhCrK.jpg?width=180&height=180">
								</a>
							</div>
							<h3 class="item-name">
								<a target="_blank" href="/item/1135200013">财神米兔小 红色 </a>
							</h3>
							<div class="item-action">
								<a id="1135200013_favorite" class="confirmation"
									href="/user/favoritedrop/1135200013"> <span
									class="icon-common icon-common-closehover"></span> 删除
								</a>
							</div>
						</div>
					</li>
					 <c:if test="${professores!= null}">
							<c:forEach var="professor" varStatus="status" items="${professores}">
					<li>
						<div class="xm-goods-item">
							<div class="item-thumb">
								<a target="_blank" href="<c:url value="/web/member/professorInfo"/>?professorId=${professor.id }"> <img
									src="<c:url value="${professor.photo }"/>">
								</a>
							</div>
							<h3 class="item-name">
								<a target="_blank" href="/item/1135200013">${professor.nickName } </a>
							</h3>
							<div class="item-action">
								<a id="1135200013_favorite" class="confirmation"
									href="/user/favoritedrop/1135200013"> <span
									class="icon-common icon-common-closehover"></span> 删除
								</a>
							</div>
						</div>
					</li>	
									</c:forEach>
					</c:if>
					
				</ul>
			</div>
		</div>

	</div>
</div>
