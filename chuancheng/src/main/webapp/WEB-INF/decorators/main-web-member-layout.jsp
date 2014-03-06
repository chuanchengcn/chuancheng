<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-CN" class="">
<head>
  <c:import url="/WEB-INF/tags/web/header_title.jsp"/> 	
  <c:import url="/WEB-INF/tags/web/jsPlugin.jsp"/>
</head>

<body>
<c:import url="/WEB-INF/tags/web/nav_header.jsp" />
	<div class="container breadcrumbs">
		
	</div>
	<div class="container">
	  <div class="row">
	  <div class="span3">
			<div class="xm-box uc-nav-box">
				<div class="hd">
					<h3 class="title">鉴宝中心</h3>
				</div>
				<div class="bd">
					<ul class="uc-list">
						<li><a href="<c:url value="/web/member/currentAppointment"/>">我的预约</a></li>
						<li><a href="<c:url value="/web/member/historyAppointment"/>">历史订单</a></li>
						<!-- <li><a href="cart.jsp">鉴宝订单</a></li> 
						<li><a href="overorders.jsp">关闭订单</a></li>
						<li><a href="<c:url value="/web/member/currentAppointment"/>">关闭订单</a></li>
						-->
						<li>
						<a href="<c:url value="/web/member/followProfessors"/>">关注专家</a>
						</li>
						<li>
						<a href="<c:url value="/web/member/favorite"/>">我的宝贝</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="xm-box uc-nav-box">
				<div class="hd">
					<h3 class="title">个人信息</h3>
				</div>
				<div class="bd">
					<ul class="uc-list">
						<li><a href="<c:url value="/web/member/memberinfo"/>">基本信息</a></li>
						<li><a href="<c:url value="/web/member/modifyPassword"/>">修改密码</a></li>
					</ul>
				</div>

			</div>
		</div>
       <sitemesh:write property="body"/>
     </div>
     </div>
   <c:import url="/WEB-INF/tags/web/main_footer.jsp"/>
</body>
</html>
