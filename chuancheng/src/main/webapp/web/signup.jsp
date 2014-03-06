<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/compiled/signup.css"/>" media="screen" />
 <div class="header">
        <a href="index">
            <img src="<c:url value="/resources/web/images/jianbaofang_logo.png"/>" class="logo" />
        </a>
    </div>
   <div class="row-fluid login-wrapper">
        <div class="box">
            <div class="content-wrap">
                <h6>注册</h6>
                <input class="span12" type="text" placeholder="电话号码" />
                <input class="span12" type="text" placeholder="邮箱" />
                <input class="span12" type="password" placeholder="密码" />
                <input class="span12" type="password" placeholder="确认密码" />
                <div class="action">
                    <a class="btn-glow primary signup" href="index">注册</a>
                </div>                
            </div>
        </div>

        <div class="span4 already">
            <p>已经拥有账号?</p>
            <a href="signin">登录</a>
        </div>
    </div>