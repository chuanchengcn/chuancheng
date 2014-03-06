<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/register.css"/>" media="screen" />

	 <div class="container">
        <div class="container-fluid">
        
         <div class="register-container">
            <div class="row">
                <div class="iphone span5">
                    <img src="<c:url value="/resources/web/img/iphone.png"/>" alt="">
                </div>
                <div class="register span4">
                    <form action="<c:url value="/memberLogin"/>" method="post">
                        <h2>欢迎登陆<span class="red"><strong>传承鉴宝</strong></span></h2>
                        <div class="controls controls-row control-group">
                        <label for="email">电话号码或者邮箱</label>
                        <input type="text" id="email" name="email" placeholder="电话号码或者邮箱" class="span3">
                        </div>
                        
                        <div class="controls controls-row control-group">
                         <label for="password" >密码</label>
                          <input type="password" id="password" name="password" placeholder="密码" class="span3">
						</div>
                        <div class="controls controls-row control-group">
                           <button type="submit" value="提交"  class="btn btn-primary btn-large">登录</button> 
                         </div>
                          <div class="controls controls-row control-group">
                           <a href="register"><button type="button"  class="btn btn-large">注册</button> </a>
						</div>
                        
                    </form>
                </div>
            </div>
        </div>
        
		</div>
</div>

<script src="<c:url value="/resources/web/js/login/jquery.backstretch.min.js"/>" type="text/javascript" charset="utf-8"></script>
<script src="<c:url value="/resources/web/js/login/login.js"/>" type="text/javascript" charset="utf-8"></script>
