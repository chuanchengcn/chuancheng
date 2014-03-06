/**
 * @author dell
 */
//页面默认加载    信息list  排行榜list
$(function() {
	$.ajax({
		url : "ajax/newLists",
		type : "post",
		dataType : "html",
		data:{
			initial:0,
			page:1,
			pageSize:10
		},
		success : function(data) {
		$('.in_article ul').html(data); 
				
		},
			error : function(e) {
				alert("错误");
		}
	});
	$.ajax({
		url : "ajax/topLists",
		type : "post",
		dataType : "html",
		data:{
			initial:0,
			page:1,
			pageSize:10
		},
		success : function(data) {
		//alert (data);
		$('.in_info_list').html(data); 
		
		},error : function(e) {
				alert("错误");
		}
	});
});




//翻页1 2 3.。。。click
$('#pageNav a').click(function(){
	var pageNum=$(this).text();
		$.ajax({
			url:"",
			type:"post",
			dataType:"json",
			data:{
				page:pageNum,
				pageSize:10
			},
			success:function(data){
				
			}
		})
	})
//
