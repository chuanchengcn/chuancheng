<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/ganji/center.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/ganji/pbl.css"/>" />
<script src="<c:url value="/resources/web/js/jquery.imagesloaded.js"/>"></script>
<script src="<c:url value="/resources/web/js/ganji/jquery.masonry.min.js"/>"></script>
<script src="<c:url value="/resources/web/js/ganji/jquery.infinitescroll.min.js"/>"></script>
<script type="text/javascript">
function item_masonry(){ 
	$('.item img').load(function(){ 
		$('.infinite_scroll').masonry({ 
			itemSelector: '.masonry_brick',
			gutterWidth: 15,
            columnWidth: 222,
		});		
	});
  //columnWidth 函数递增控制div左边距
	$('.infinite_scroll').masonry({ 
		itemSelector: '.masonry_brick',
		 gutterWidth: 15,
         columnWidth: 222,							
	});	
}
$(function(){
//滚动条下拉事件
	function item_callback(){
		$('.item').mouseover(function(){
			$(this).css('box-shadow', '0 1px 5px rgba(35,25,25,0.5)');
			// alert(1);
			$('.btns',this).show();
		}).mouseout(function(){
			$(this).css('box-shadow', '0 1px 3px rgba(34,25,25,0.2)');
			$('.btns',this).hide();		 	
		});
		item_masonry();	
	}
	item_callback();  
	$('.item').fadeIn();
	var sp = 1;
	$(".infinite_scroll").infinitescroll({
		navSelector  	: "#more",
		nextSelector 	: "#more a",
		itemSelector 	: ".item",
		loading:{
			img: "../resources/web/images/masonry_loading_1.gif",
			msgText: '正在加载中....',
			finishedMsg: '木有了,看看下一页',
			finished: function(){
				sp++;
				if(sp>=10){ //到第10页结束事件
					$("#more").remove();
					$("#infscr-loading").hide();
					$("#pagebox").show();
					$(window).unbind('.infscr');
				}
			}	
		},errorCallback:function(){ 
			$("#pagebox").show();
		}
	},function(newElements){
		var $newElems = $(newElements);
		$('.infinite_scroll').masonry('appended', $newElems, false);
		$newElems.fadeIn();
		item_callback();
		return;
	});
});
</script>
 <div class="container">
	<div class="ml10">
<!--瀑布流 start-->
<div class="pbl_container">
  <div class="pblCon">
    <div class="demo clearfix">
      <div class="item_list infinite_scroll">
        <c:if test="${treasures!= null}">
  <c:forEach var="treasure" varStatus="status" items="${treasures}">
     <div class="item masonry_brick">
          <div class="item_t">
            <div class="img"> <a href="#" target="_blank"><img  alt="谷歌风格扁平化图标PSD素材" src="../resources/web/testimage/9.jpg" /></a>
              <div class="btns">
			    <a href="#" data-id="1092" class="Button2 Button11 WhiteButton ContrastButton  repin_link  notlogin">
			    <em></em>点赞<span class="num">(${treasure.visitCount})</span></a>
                <div class="f-r"> <a href="#" data-id="1092" class="Button2 Button11 WhiteButton ContrastButton likebuttonnotlogin"> 
                <em></em><span class="text">收藏</span><span class="num">(${treasure.followCount})</span> </a> </div>
              </div>
            </div>
            <div class="title"><em>T:</em><span><a href="#" target="_blank">${treasure.name}</a></span></div>
          </div>
          <div class="item_b clearfix">
            <div class="items_likes fl"> <span>标签: <a href="#">${treasure.number}</a> <a href="#">${treasure.professorPrice}</a> </span> </div>
      </div>
  </div>
  
</c:forEach>
 </c:if>     
   
        
      </div>
    </div>
  </div>
</div>
<!--回到顶部-->
<button id="ScrollToTop" class="btnimg Button2 WhiteButton" type="button">返回<br>顶部</button>
<div id="content" style="display:none">
        
        <div class="item masonry_brick">
          <div class="item_t">
            <div class="img"> <a href="#" target="_blank"><img  alt="psd时钟和邮箱网页图标素材下载" src="../resources/web/testimage/7.jpg" /></a>
              <div class="btns">
			     <a href="#" data-id="1092" class="Button2 Button11 WhiteButton ContrastButton  repin_link  notlogin"><em></em>转采<span class="num">(102)</span></a>
                <div class="f-r"> <a href="#" data-id="1092" class="Button2 Button11 WhiteButton ContrastButton likebuttonnotlogin"> <em></em><span class="text">收藏</span><span class="num">(0)</span> </a> </div>
                <!-- 收藏 攒一个  结束-->
              </div>
            </div>
            <div class="title"><em>T:</em><span><a href="#" target="_blank"></a></span></div>
          </div>
          <div class="item_b clearfix">
            <div class="items_likes fl"> <span>标签: <a href="#"></a> <a href="#"></a> </span> </div>
          </div>
        </div>
        <!--item end-->
        
         <div id="more"><a href="/chuancheng-jianbao/ajax/findTreasure?page=1"></a></div>
</div>
        
        
        
        
   
</div>
</div>



<script type="text/javascript">
//回话顶部JS，最下面还有一段代码
var ScrollToTop=ScrollToTop||{
	setup:function(){
		
		var a=$(window).height()/2;
		$(window).scroll(function(){
			(window.innerWidth?window.pageYOffset:document.documentElement.scrollTop)>=a?$("#ScrollToTop").removeClass("Offscreen"):$("#ScrollToTop").addClass("Offscreen")
		});
		$("#ScrollToTop").click(function(){
			$("html, body").animate({scrollTop:"0px"},400);
			return false
		})
	}
};
$(document).ready(function(){
	ScrollToTop.setup();
});
</script>
