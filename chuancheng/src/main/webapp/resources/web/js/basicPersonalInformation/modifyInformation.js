/**
 * @author dell
 */

//基本信息获取
$(function() {
	$.ajax({
		url : "../../resources/web/php/modifyInformation.json",
		type : "post",
		dataType : "json",
		data : {
			data : ""
		},
		success : function(data) {
			//
			var person = data.data.personalInformation[0];
			$('#ul1 li').eq(0).children('span').text(person.name);
			$('#ul1 li').eq(1).children('span').text(person.password);
			$('#ul1 li').eq(2).children('span').text(person.postbox);
			$('#ul1 li').eq(3).children('span').text(person.phoneNumber);
			$('#ul1 li').eq(4).children('span').text(person.telephone);
			$('#ul1 li').eq(5).children('span').text(person.phoneORTele);
			$('#ul1 li').eq(6).children('span').text(person.description);
			//修改页的信息
			$('#ul2 li span').eq(0).text(person.name);
			$('#ul2 li span').eq(1).text(person.password);
			$('#ul2 li span').eq(2).text(person.postbox);
			$('#ul2 li span').eq(3).text(person.phoneNumber);
			$('#ul2 li span').eq(4).text(person.telephone);
			$('#ul2 li span').eq(5).text(person.phoneORTele);
			$('#ul2 li span').eq(6).text(person.description);
		},
		error : function(e) {
			//alert(2);
		}
	});
});
//修改click
$("#ul1 li a").click(function() {
	var index = $(this).parent().index();
	$('#ul2').show();
	$('#ul2 li').eq(index).show().siblings().hide();
	$('#ul1').hide();
	$('#button').hide();
})
//点击修改后的确定按钮click判断
$('#ul2 #inpt').click(function() {
	var val = $(this).parent().children('.input').val();
	var index = $(this).parent().index();
	if (val != '') {
		$(this).parent().children('span').text(val);
		$('#ul1 li').eq(index).children('span').text(val)
		var timer = function() {
			$('#ul2').hide();
			$('#ul1').show();
			$('#button').show();
		}
		setTimeout(timer, 1000);
	} else {
		alert('您未做任何修改')
	}
})
//信息修改完毕之后确定按钮click
$('#button').click(function() {
	var timer = function() {
		alert('信息修改完成');
		$('#ul1 li a').hide();
	}
	setTimeout(timer, 1000);
})
