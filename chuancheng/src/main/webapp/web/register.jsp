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
                    <form action="<c:url value="/register"/>" method="post">
                        <h2>注册--<span class="red"><strong>传承鉴宝</strong></span></h2>
                        
                        <div class="controls controls-row control-group">
                           <label for="firstname">登陆电话：</label>
                           <input type="text" id="firstname" name="phone" placeholder="电话号码：" class="span3">
						</div>
                        <div class="controls controls-row control-group">
                           <label for="lastname">邮箱地址</label>
                        <input type="text" id="lastname" name="email" placeholder="联系邮箱" class="span3">
						</div>
                        <div class="controls controls-row control-group">
                           <label for="username">昵称</label>
                           <input type="text" id="username" name="nickName" placeholder="昵称" class="span3">
						</div>
                        <div class="controls controls-row">
                            <label for="password">密码</label>
                            <input type="password" id="password" name="password" placeholder="密码" class="span3">
						</div>
                        <div class="controls controls-row control-group">
                           <button type="submit" value="提交"  class="btn btn-primary btn-large">提交</button> 
                         </div>
                          <div class="controls controls-row control-group">
                           <a href="login"><button type="button" value="提交"  class="btn btn-large">登录</button> </a>
						</div>
                    </form>
                </div>
            </div>
        </div>
        
		</div>
</div>

<script src="<c:url value="/resources/web/js/login/jquery.backstretch.min.js"/>" type="text/javascript" charset="utf-8"></script>
<script src="<c:url value="/resources/web/js/login/register.js"/>" type="text/javascript" charset="utf-8"></script>
