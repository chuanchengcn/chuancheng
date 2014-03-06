<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/nav-header.css"/>" />
<!--  -->
<c:if test="${sessionScope.UserConstant_VISITOR == null}">
<div class="container nav-header-alert">
<!-- alert -->
<div class="alert alert-block">
<button class="close" data-dismiss="alert" type="button">x</button>
   <form class="form-inline alert-login-form" action="<c:url value="/memberLogin"/>" method="post">
   <p>登录或注册提醒----欢迎来到传承网！
       <span class="alert-login-form-content">
	    <input type="text" class="input-small span3"  name="email"  placeholder="邮箱 或 电话号码">
	    <input type="password" class="input-small span2"  name="password" placeholder="密码">
	    <label class="checkbox">
	    <input type="checkbox"> 记住密码
	    </label>
	    <button type="submit" class="btn  btn-primary">登录</button>
	    <a href="<c:url value="/registor"/>" class="btn  btn-primary">注册</a>
	    </span>
    </p>
    </form>
</div>
</div>
</c:if>
<c:if test="${sessionScope.UserConstant_VISITOR == null}">
<div class="container nav-header-alert">
<!-- alert -->
<div class="alert alert-block">
<button class="close" data-dismiss="alert" type="button">x</button>
   <p>欢迎来到传承鉴宝网！
                            我们正努力研发线上鉴宝系统中 ... 尽情期待
    </p>
</div>
</div>
</c:if>





<div class="navbar-header">
   <div class="navbar container">
         <a class="brand logo" href="<c:url value="/index"/>"> <img src="<c:url value="/resources/web/images/jianbaofang_logo.png"/>" alt="传承网" width="300px" class="nav-logo"></a>
        <div id="nav-search">
        <form class="form-search">
          <div class="tel">
          </div>
		  <div class="input-append">
		    <input type="text" class="span3 search-query search-content" placeholder="搜宝贝 、鉴宝专家">
		    <button type="submit" class="btn search_btn">搜索一下</button>
		  </div>
		 </form>
        </div>

        <div id="main-nav">
          <div class="nav-collapse collapse main-nav-top">
            <ul class="nav sf-js-enabled sf-shadow nav-title">
             <li class=""><a href="<c:url value="/index"/>">首页</a> </li>
              <li class=""><a href="<c:url value="/web/professors"/>">专家</a> </li>
              <li class=""><a href="<c:url value="/web/ganji.jsp"/>">寻宝贝</a> </li>
              <!-- 
              <li class=""><a href="<c:url value="/web/event.jsp"/>">鉴宝专场</a> </li>
               -->
              <li class=""><a href="<c:url value="/help/chuanchengshop"/>">商城</a> </li>
              <c:if test="${sessionScope.UserConstant_VISITOR == null}">
                 <li class=""><a href="<c:url value="/web/login"/>">登录</a> </li>
              </c:if>
              <c:if test="${sessionScope.UserConstant_VISITOR != null}">
                 <li class=""><a href="<c:url value="/logout"/>">退出</a> </li>
                 <li class=""><a href="<c:url value="/web/home"/>">${sessionScope.UserConstant_VISITOR.username}</a> </li>
              </c:if>
              <!-- 
                 <li class=""><a href="<c:url value="/index"/>">资讯</a> </li>
               -->
            </ul>
          </div>
        </div>
      </div>
</div>
