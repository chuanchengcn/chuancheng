<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/baofang-index.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/index/index.css"/>" />
<!--  -->
<div class="content-head-ad">
<div class="row-fluid ">
   
   <div id="myCarousel" class="carousel slide">
                <div class="loginForm"> 
                    <form action="">
                        
                    </form>
                </div>
                <div class="carousel-inner">
                  <div class="item active">
                    <img src="<c:url value="/resources/web/images/ad/0.jpg"/>" alt="">
                  </div>
                  <div class="item">
                    <img src="<c:url value="/resources/web/images/ad/1.jpg"/>" alt="">
                  </div>
                  <div class="item">
                    <img src="<c:url value="/resources/web/images/ad/2.jpg"/>" alt="">
                  </div>
                  <div class="item">
                    <img src="<c:url value="/resources/web/images/ad/3.jpg"/>" alt="">
                  </div>
                  <div class="item">
                    <img src="<c:url value="/resources/web/images/ad/1.jpg"/>" alt="">
                  </div>
                </div>
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                  <li data-target="#myCarousel" data-slide-to="3"></li>
                  <li data-target="#myCarousel" data-slide-to="4"></li>
                </ol>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
              </div>
</div>
</div>

   
<link rel="stylesheet" href="<c:url value="/resources/web/css/lib/jquery.jscrollpane.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/index-carousel.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/index-scrollpic.css"/>"/>
<!-- the jScrollPane script -->
<script src="<c:url value="/resources/web/js/jquery.contentcarousel.js"/>" type="text/javascript"></script> 
<script src="<c:url value="/resources/web/js/jquery.scrollpic.js"/>" type="text/javascript"></script> 



<script type="text/javascript">
$(function(){
  $('.scrollpic-index').hhScrollpic({
 			scrollPicMth:7,  //每页显示个数
			defaultSpeed : 1000,   //默认滚动时间  点击按钮滚动时间
			speed : 5000   //自动播放滚动时间
 	});
});
</script>