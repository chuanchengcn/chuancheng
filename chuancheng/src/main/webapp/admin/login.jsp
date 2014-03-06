<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="<c:url value="/resources/admin/css/compiled/unicorn.login.css"/>" />


        <div id="logo">
            <img src="<c:url value="/resources/admin/img/logo.png"/>" alt="" />
        </div>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical" action="<c:url value="/admin/memberLogin"/>" method="post"/>
				<p>输入管理员用户名与密码</p>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-user"></i></span><input type="text" placeholder="email"  name="email"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-lock"></i></span><input type="password" placeholder="password"  name="password"/>
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link" id="to-recover">忘记密码</a></span>
                    <span class="pull-right"><input type="submit" class="btn btn-inverse" value="登陆" /></span>
                </div>
            </form>
            <form id="recoverform" action="#" class="form-vertical" />
				<p>输入你注册是的邮箱</p>
				<div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link" id="to-login">&lt; 返回登陆</a></span>
                    <span class="pull-right"><input type="submit" class="btn btn-inverse" value="提交" /></span>
                </div>
            </form>
        </div>
        
        <script src="<c:url value="/resources/admin/js/compiled/unicorn.login.js"/>"></script> 

