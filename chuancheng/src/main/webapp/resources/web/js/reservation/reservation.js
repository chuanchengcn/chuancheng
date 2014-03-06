/**
 * @author dell
 */
//鉴宝方式选择判断click
$('#ul1 li dl dt').click(function() {
	$(this).addClass('t3').parent().parent().siblings().children().children('dt').removeClass('t3');
});
//按钮   下一步click判断
$("#next").click(function() {
	var dt1 = $('#ul1 li:eq(0) dl dt').hasClass('t3');
	dt2 = $('#ul1 li:eq(1) dl dt').hasClass('t3');
	if (dt1) {
		$('#address').fadeIn();

		$('#zaixian').hide();
		//鉴宝地点选择判断
		$('.ul2 li').click(function() {
			$(this).addClass('t3').siblings().removeClass('t3');
			$('#essentialInf').fadeIn();
		})
	} else if (dt2) {
		$('#essentialInf').fadeIn();
		$('#address').hide();
		$('#zaixian').hide();
	}
});
//信息表单验证
$(function() {
	$("#myform").validate({
		debug : true,
		success : function(label) {
			label.html("<span style=\"color:green\">填写正确！</span>").addClass("success");
		}
	});
});
//获取表单input value值

//提交预约按钮click
$("#next3").click(function() {
	var nameVal = $('.required').val();
				var photoVal = $('.ismobile').val();
				var description = $('#ms').html();
				var add = $('#ull .t3 h3').html();
	$.ajax({
		url : "",
		type : "post",
		datatype : "json",
		//传递参数（用户信息）
		data : {
			name : nameVal,
			photo : photoVal,
			description : description
		},
		success : function(data) {
			
		if (nameVal != '' && photoVal != '' && description != '') {
				$(function() {
						var handler = function() {
							$('#main-right').hide().siblings('#preOrder').show();
							$('#ulInfor li').eq(1).children('span').html(nameVal);
							$('#ulInfor li').eq(2).children('span').html(photoVal);
							$('#ulInfor li').eq(3).children('span').html(description);
						//
							if (add == '首都鉴宝') {
								$('#address2').show();
							} else {
								$('#address3').show();
							}
					//预约号获取
						$.ajax({
							url:"",
							type:"",
							dataType:"",
							data:{},
							success:function(){
						//		$('#ulInfor li').eq(0).children('span').html(data.);
							}
						})	
						
							
						}
	//延迟加载
						var timer = setTimeout(handler, 2000);
					})
				} else {
					alert("请重新填写")
				}
			}
		
	})
})
//上传图片
function F_Open_dialog() {
	document.getElementById("btn_file").click();
}

$('#btn_abc').click(function() {
	F_Open_dialog();
})
//
// var picVal=$('#upload').val();
// $('#picture').html('<img src=""/>')
	