<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/compiled/signin.css"/>" media="screen" />
<!-- background switcher -->
    <div class="bg-switch visible-desktop">
        <div class="bgs">
            <a href="#" data-img="landscape.jpg" class="bg active">
                <img src="<c:url value="/resources/web/img/bgs/landscape.jpg"/>" />
            </a>
            <a href="#" data-img="blueish.jpg" class="bg">
                <img src="<c:url value="/resources/web/img/bgs/blueish.jpg"/>" />
            </a>            
            <a href="#" data-img="7.jpg" class="bg">
                <img src="<c:url value="/resources/web/img/bgs/7.jpg"/>" />
            </a>
            <a href="#" data-img="8.jpg" class="bg">
                <img src="<c:url value="/resources/web/img/bgs/8.jpg"/>" />
            </a>
            <a href="#" data-img="9.jpg" class="bg">
                <img src="<c:url value="/resources/web/img/bgs/9.jpg"/>" />
            </a>
            <a href="#" data-img="10.jpg" class="bg">
                <img src="<c:url value="/resources/web/img/bgs/10.jpg"/>" />
            </a>
            <a href="#" data-img="11.jpg" class="bg">
                <img src="<c:url value="/resources/web/img/bgs/11.jpg"/>" />
            </a>
        </div>
    </div>


    <div class="row-fluid login-wrapper">
        <a href="index">
            <img class="logo" src="<c:url value="/resources/web/images/jianbaofang_logo.png"/>" />
        </a>

        <div class="span4 box">
            <div class="content-wrap">
                <h6>登录</h6>
                <input class="span12" type="text" placeholder="邮箱     或 手机号" />
                <input class="span12" type="password" placeholder="密码" />
                <a href="#" class="forgot">忘记密码?</a>
                <div class="remember">
                    <input id="remember-me" type="checkbox" />
                    <label for="remember-me">记住密码</label>
                </div>
                <a class="btn-glow primary login" href="index">登录</a>
            </div>
        </div>

        <div class="span4 no-account">
            <p>注册新账号?</p>
            <a href="signup">新注册</a>
        </div>
    </div>
 <!-- pre load bg imgs -->
   <script type="text/javascript">
       $(function () {
    	   var bg=$(".bg-switch .bg.active").data("img");
    	   $("html").addClass("login-bg");
    	   $("html").css("background-image", "url('resources/web/img/bgs/" + bg + "')");
           // bg switcher
           var $btns = $(".bg-switch .bg");
           
           $btns.click(function (e) {
               e.preventDefault();
               $btns.removeClass("active");
               $(this).addClass("active");
               var bg = $(this).data("img");
               $("html").css("background-image", "url('resources/web/img/bgs/" + bg + "')");
           });

       });
   </script>