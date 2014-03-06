/**
 * @author dell
 */
//点击切换按钮透明度
var leftButton = $('#ul1').position().left;
if (leftButton == 0) {
	$('.prev').css({
		'opacity' : '0.6'
	})
} else if (l > 0) {
	$('.prev').css({
		'opacity' : '1'
	})
}

//图片切换
var i = 0;
$('.next').click(function() {
	var liWidth = $('#ul1 li').outerWidth();
	var ulliLength = $('#ul1 li').size();

	if (i >= ulliLength) {
		$('#ul1').animate({
			left : '-0px'
		});
		$('.prev').css({
			'opacity' : '0.6'
		})
	} else {
		i++;
		$('#ul1').animate({
			left : -liWidth * i + 'px'
		});
		$('.prev').css({
			'opacity' : '1'
		})
	}
});
var j = 0;
$('.prev').click(function() {
	var liWidth = $('#ul1 li').outerWidth();
	j++;
	$('#ul1').animate({
		left : liWidth * j + 'px'
	});
	$('.prev').css({
		'opacity' : '1'
	})

})
//
//切换大图
function ulClick() {
	$('#ul1 li').click(function() {
		var ulN = $(this).html();
		$('#main-l-l a').html(ulN);
	});
};
ulClick();

//默认初始化页面
$(function() {
	function ulSwitching(index) {
		$.ajax({
			method : "post",
			url : "../resources/web/php/json.php",
			dataType : "json",
			data : {
				index : index
			},
			success : function(data) {
				for (var i = 0; i < data.length; i++) {
					$("#ul1").append("<li></li>")
					$("#ul1 li").eq(i).html('<img onclick="ulClick();" src="../resources/web/images/' + data[i] + '"/>')
				}

			}
		});
	}

	ulSwitching();
	function other(index) {
		$.ajax({
			method : "post",
			url : "../resources/web/php/home.php",
			dataType : "json",
			data : {
				index : index
			},
			success : function(data) {
				$('.item .l').html('<img style="width:152px;height:152px;" src="../resources/web/images/' + data[2] + '" />')
				$('.item .s').html('<img style="width:74px;height:74px;" src="../resources/web/images/' + data[2] + '" />')
				$('.name1').html(data[1]);
			}
		});
	}

	other();
	function bigPic(index) {
		$.ajax({
			method : "post",
			url : "../resources/web/php/home.php",
			dataType : "json",
			data : {
				index : index
			},
			success : function(data) {
				$('#main-l-l a').html('<img src="../resources/web/images/' + data[0] + '" />');
			}
		});
	}

	bigPic();
	function information(index) {
		$.ajax({
			method : "post",
			url : "../resources/web/php/home.php",
			dataType : "json",
			data : {
				index : index
			},
			success : function(data) {
				$('#picDetails-intr h3').html(data[4])
				$('#introduction-ul .n').html(data[5])
				$('#introduction-ul .y').html(data[6])
				$('#introduction-ul .h').html(data[7])
				$('#introduction-ul .a').html(data[8])
				$('#introduction-ul .t').html(data[9])
			}
		});
	}

	information();

	function details(index) {
		$.ajax({
			method : "post",
			url : "../resources/web/php/home.php",
			dataType : "json",
			data : {
				index : index
			},
			success : function(data) {
				$('#jieshao .p1').html(data[3])
			}
		});
	}

	details();
})	