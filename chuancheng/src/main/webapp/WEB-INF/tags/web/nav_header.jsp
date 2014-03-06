<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/nav-header.css"/>" />

<div class="navbar-header">
	<div class="topbar">
		<div class="container">
			<div class="container-fluid">
				<ul class="nav nav-pills">
					<li class="fl">您好，欢迎来到传承网！</li>
					<li class="dropdown fr" id="menuHelp"><a
						class="dropdown-toggle" data-toggle="dropdown" href="#menuHelp">
							帮助 <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">帮助中心</a></li>
							<li><a href="#">提交建议</a></li>
							<li class="divider"></li>
							<li><a href="<c:url value="/logout"/>">退出</a></li>
						</ul>
				    </li>
					<li class="dropdown fr" id="menuHome"><a
						class="dropdown-toggle" data-toggle="dropdown" href="#menuHome">
							设置 <b class="caret"></b>
					</a>
						<ul class="dropdown-menu">
							<li><a href="#">动作</a></li>
							<li><a href="#">另一个动作</a></li>
							<li><a href="#">其他</a></li>
							<li class="divider"></li>
							<li><a href="<c:url value="/logout"/>">退出</a></li>
						</ul>
				    </li>
					<c:if test="${sessionScope.UserConstant_VISITOR == null}">
						<li class="fr"><a href="<c:url value="/web/login"/>">登录</a></li>
						<li class="fr"><a href="<c:url value="/web/register"/>"
							rel="nofollow">注册</a></li>
					</c:if>

					<c:if test="${sessionScope.UserConstant_VISITOR != null}">
						<li class="fr"><a href="<c:url value="/web/member/portal"/>">${sessionScope.UserConstant_VISITOR.username}</a>
						</li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	<div class="navbar container">
		<div id="navbar-header-top" class="container-fluid">
			<a class="brand logo" href="<c:url value="/index"/>"> <img
				src="<c:url value="/resources/web/images/jianbaofang_logo.png"/>"
				alt="传承网" width="300px" class="nav-logo"></a>
			<div class="tel fr"></div>
 
        <div id="nav-search">
         <form class="form-search">
		  <div class="input-append">
		    <input type="text" class="span3 search-query search-content" placeholder="搜宝贝 、鉴宝专家">
		    <button type="submit" class="btn search_btn">搜索一下</button>
		  </div>
		 </form>
        </div>
        
        
		</div>
		<div id="main-nav" class="container-fluid">
			<div class="nav-collapse collapse">
				<ul class="nav  nav-title">
					<li class="active"><a href="<c:url value="/index"/>">首页</a></li>
					<li class=""><a href="<c:url value="/web/professors"/>">专家</a>
					</li>
					<li class=""><a href="<c:url value="/web/ganji"/>">寻宝贝</a></li>
					<!-- 
                     <li class=""><a href="<c:url value="/web/event.jsp"/>">鉴宝专场</a> </li>
                    -->
					<li class=""><a href="<c:url value="/help/chuanchengshop"/>"
						target="_blank">商城</a></li>
					<li class=""><a href="<c:url value="/web/news/index.jsp"/>">鉴宝资讯</a></li>
					<li class=""><a href="<c:url value="/index"/>">拍卖</a></li>
				</ul>
				<ul class="nav  nav-title nav-title-right">
					<li class=""><a href="<c:url value="/web/professors"/>">公司招聘</a>
					</li>
					<li class=""><a href="<c:url value="/web/service/aboutus.jsp"/>">关于我们</a></li>
				</ul>
			</div>
		</div>
	</div>

</div>
