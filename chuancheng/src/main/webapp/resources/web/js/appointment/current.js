/**
 * @author dell
 */
//订单数据获取
$(function() {
	$.ajax({
		url : "../../resources/web/php/appointment.json",
		type : "post",
		dataType : "json",
		success : function(data) {
			$('tbody tr td').eq(0).text(data.data.current[0].orderNum);
			$('tbody tr td').eq(1).text(data.data.current[0].address);
			$('tbody tr td').eq(2).text(data.data.current[0].name);
			$('tbody tr td').eq(4).text(data.data.current[0].state);
		},
		error : function(e) {
			//alert(2);
		}
	});

});
//订单详情详情click
$('.a_op').click(function() {
	$('#detailed').show('slow');
	$.ajax({
		url : "../../resources/web/php/appointment.json",
		type : "post",
		dataType : "json",
		success : function(data) {
			$('#ord1 span').text(data.data.current[0].state);
			$('.add').text(data.data.current[0].address);
			$('.name').text(data.data.current[0].name);
			$('.phone').text(data.data.current[0].phoneNumber);
			$('.mailbox').text(data.data.current[0].mailbox);
			$('.orderNum').text(data.data.current[0].orderNum);
			$('.nameB').text(data.data.current[0].nameB);
			$('#detailed-right dl dd span').html('<img src="../../resources/web/images/' + data.data.current[0].uploadPic + '" />')
		},
		error : function(e) {
			//alert(2);
		}
	});

})
//修改信息
//修改信息弹出框内容
$('#ord2 a').click(function() {
	$('#page_overlay').show();
	$('.popup').show().css({
		'top' : '200px'
	}).html("<ul class='popupInf'><span onclick='closeDiv();'>X</span><li>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<input class='nameInp' type='text'></li><li>联系方式：<input class='phoneInp' type='text'></li><li>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<input class='mailInp' type='text'></li><li>宝贝名称：<input class='nameBInp' type='text'></li><input type='button' onclick='popupInp();' class='btn btn-primary' id='popupInp' value='确定'></ul>")
});
$('#ord3 a').click(function() {
	$('#page_overlay').show();
	$('.popup').show().css({
		'top' : '200px'
	}).html("<ul class='popupInftime'><span onclick='closeDiv();'>X</span><li>时间：<input class='timeInp' type='text'></li><li>地点：<input class='addInp' type='text'></li><input type='button' onclick='popupInftime();' class='btn btn-primary' id='popupInp' value='确定'></ul>")

});
//更改信息判断
var late = function() {
	$('.popup').hide();
	$('#page_overlay').hide();
}
function closeDiv() {
	$('.popup').hide();
	$('#page_overlay').hide();
}

//鉴宝人信息修改区
function popupInp() {
	var nameval = $('.nameInp').val(), phval = $('.phoneInp').val(), mailval = $('.mailInp').val(), nameBval = $('.nameBInp').val();

	$.ajax({
		url : "../../resources/web/php/appointment.json",
		type : "post",
		dataType : "json",
		data : {
			name : nameval,
			phoneNumber : phval,
			mailbox : mailval,
			nameB : nameBval

		},
		success : function(data) {

			if (nameval != '' && phval != '' && mailval != '' && nameBval != '') {
				$(".name").text(nameval);
				$(".phone").text(phval);
				$(".mailbox").text(mailval);
				$(".nameB").text(nameBval);
				if (data == 1) {
					alert('信息保存成功！');
					$('#modify').show();
					$('tbody td input').attr("disabled", true);
				} else if (data == 0) {
					alert('信息保存失败')
				}
			} else {
				alert('确定不要修改')
				
			}

			setTimeout(late, 500);

		}
	})

}

//鉴宝时间地点修改区
function popupInftime() {
	var timeVal = $('.timeInp').val(), addval = $('.addInp').val();
	$.ajax({
		url : "../../resources/web/php/appointment.json",
		type : "post",
		dataType : "json",
		data : {
			time : timeVal,
			address : addval
		},
		success : function(data) {
			if (timeVal != '' && addval != '') {
				$(".timer").text(timeVal);
				$(".add").text(addval);
			} else {
				alert('确定不要修改')
			}

			setTimeout(late, 500);
		}
	})
}

//点击  X  关闭 详细内容
$('.close').click(function() {
	$('#detailed').hide();
})
