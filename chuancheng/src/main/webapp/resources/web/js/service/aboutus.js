/**
 * @author dell
 */
//城市切换
$(function(){
	$('.tabsTag li').click(function(){
		var index=$(this).index();
		$('#address_ul li').eq(index).show().siblings().hide();
	})
})
