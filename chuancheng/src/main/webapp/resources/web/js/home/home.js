/**
 * @author dell
 */
//主页

$(function() {
	$.ajax({
		url : "../../resources/web/php/home.json",
		type : "post",
		dataType : "json",
		data : {
			data : ""
		},
		success : function(data) {
			$("#tx").html('<img class="uh-face" src="../../resources/web/images/' + data.data.head[0].headPic + '" />')
			$("#mz").html(data.data.head[0].nickName);
			$("#zhcontent h1").html(data.data.introduction[0].expertsName);
			$("#introduction").html(data.data.introduction[0].expertsIntroduction);
			$(".pic span").html('<img src="../../resources/web/images/' + data.data.introduction[0].expertsPic + '" />')
			$("#style").html(data.data.introduction[0].style);
			$("#store").html(data.data.introduction[0].gallery);
			$("#award").html(data.data.introduction[0].winning);
			$("#runGe").html(data.data.introduction[0].runge);
			$('.l').html('<img src="../../resources/web/images/' + data.data.album[0].album + '" />');
			$('.s').html('<img src="../../resources/web/images/' + data.data.collections[0].collections + '" />');
			$('#shouji #pic a').html('<img src="../../resources/web/images/' + data.data.album[0].album + '" />');
			$('#pic a').html('<img src="../../resources/web/images/' + data.data.album[0].album + '" />');
			$('#guanzhu .z').html('<img class="fl-face" src="../../resources/web/images/' + data.data.attention[0].attention + '" />')
			$('#guanzhu #a1').html('<img src="../../resources/web/images/' + data.data.attention[0].attention + '" />')
			$('#guanzhu #a2').html('<img src="../../resources/web/images/' + data.data.attention[0].attention + '" />')
			$('#guanzhu #a3').html('<img src="../../resources/web/images/' + data.data.attention[0].attention + '" />')
			$('#fensi .z').html('<img class="fl-face" src="../../resources/web/images/' + data.data.fans[0].fans + '" />')
			$('#fensi #a1').html('<img src="../../resources/web/images/' + data.data.fans[0].fans + '" />')
			$('#fensi #a2').html('<img src="../../resources/web/images/' + data.data.fans[0].fans + '" />')
			$('#fensi #a3').html('<img src="../../resources/web/images/' + data.data.fans[0].fans + '" />')
			$('#zan .l').html('<img src="../../resources/web/images/' + data.data.zan[0].zan + '" />');
			$('#zan .s').html('<img src="../../resources/web/images/' + data.data.zan[0].zan + '" />');

		}
	});
})
//关注 粉丝 赞过的人数

var attention = $('#guanzhu .item').size();
$(".var1").text(attention);
var fans = $('#fensi .item').size();
$(".var2").text(fans);
var zan = $('#zan .item').size();
$(".var3").text(zan);
//画册  收集数量
var hc = $('#huace .item').size();
$(".uh-menu li a span").eq(0).text(hc);
var sj = $('#shouji #pic a').size();
$(".uh-menu li a span").eq(1).text(sj);
$('#home #h p span').text(hc)
$('#home #s p span').text(sj)
$('#huace .sec-title p span').text(hc)
$('#shouji .uh-body p span').text(sj)
//浏览次数
if (localStorage.pagecount) {
	localStorage.pagecount = Number(localStorage.pagecount) + 1
} else {
	localStorage.pagecount = 1
}
$('.col_stat span:odd').text(localStorage.pagecount);
var k = $('#huace .item:first a p').size();
$('.col_stat span:even').text(k);

//个人主页，画册，收集click切换

$('.uh-menu li').click(function() {
	var index = $(this).index();
	$('#gu').hide()
	$('#ye').show()
	$(this).addClass('active').siblings().removeClass('active');
	$('#ye>div').eq(index).show().siblings().hide();
	if (index == 1) {
		$(function() {
			$.ajax({
				url : "../../resources/web/php/home.json",
				type : "post",
				dataType : "json",
				data : {
					data : ""
				},
				success : function(data) {
					$('#huace .l').html('<img src="../../resources/web/images/' + data.data.album[0].album + '" />');
					$('#huace .s').html('<img src="../../resources/web/images/' + data.data.album[0].album + '" />');
				}
			})
		})
	}
})
//关注，粉丝，赞click切换

$('.uh-stat li').click(function() {
	var index = $(this).index();
	$('#ye').hide()
	$('#gu').show()
	$('#gu>div').eq(index).show().siblings().hide();
})
//关注页   关注按钮click

$('#guanzhu .sec-title p span').text(attention)
$('#guanzhu #btn_follow_12314801').bind('mouseover', function(event) {
	var txt = $(this).text();
	if (txt == '已关注') {
		$(this).text('取消关注');
		$('#guanzhu #btn_follow_12314801').bind('click', function(event) {
			var txt = $(this).text();
						if (txt == '取消关注') {
							$(".var1").text(gz - 1);
							$('#guanzhu .sec-title p span').text(gz - 1)
							$(this).text('关注');
						}
		//
			var isRight=$(this).text();
				$.ajax({
					url:"",
					type:"",
					dataType:"",
		//传参
					data:{data:isRight},
					success:function(data){
						
					}
				})
		});
	} else if (txt == '关注') {
		$(this).text('关注');
		$('#guanzhu #btn_follow_12314801').bind('click', function(event) {
			var txt = $(this).text();
			if (txt == '关注') {
				$(this).text('已关注');

			}
			var isRight=$(this).text();
				$.ajax({
					url:"",
					type:"",
					dataType:"",
		//传参
					data:{data:isRight},
					success:function(data){
						
					}
				})
		});
	}
});

$('#guanzhu #btn_follow_12314801').bind('mouseout', function(event) {
	var txt = $(this).text();
	if (txt == '取消关注') {
		$(this).text('已关注');
	} else if (txt == '已关注') {
		$(this).text('已关注');
	}
	
});

//粉丝页  关注按钮click

$('#fensi .sec-title p span').text(fans)
$('#fensi #btn_follow_12314801').bind('mouseover', function(event) {
	var txt = $(this).text();
	if (txt == '关注我的') {
		$(this).text('相互关注');
		$('#fensi #btn_follow_12314801').bind('click', function(event) {
			var txt = $(this).text();
			if (txt == '相互关注') {
				$(this).text('已相互关注');
			}
			var isRight=$(this).text();
				$.ajax({
					url:"",
					type:"",
					dataType:"",
		//传参
					data:{data:isRight},
					success:function(data){
						
					}
				})
		});
	} else if (txt == '已相互关注') {
		$(this).text('取消关注');
		$('#fensi #btn_follow_12314801').bind('click', function(event) {
			var txt = $(this).text();
			if (txt == '取消关注') {
				$(this).text('关注我的');
			}
			var isRight=$(this).text();
				$.ajax({
					url:"",
					type:"",
					dataType:"",
		//传参
					data:{data:isRight},
					success:function(data){
						
					}
				})
		});
	}
});
$('#fensi #btn_follow_12314801').bind('mouseout', function(event) {
	var txt = $(this).text();
	if (txt == '相互关注') {
		$(this).text('关注我的');
	} else if (txt == '取消关注') {
		$(this).text('已相互关注');
	}
});

//赞过的人数
$('#zan .sec-title p span').text(zan)
