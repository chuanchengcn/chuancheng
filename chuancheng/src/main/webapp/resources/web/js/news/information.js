/**
 * @author dell
 */
$('#DB_gallery').DB_gallery({

	thumWidth : 110,

	thumGap : 8,

	thumMoveStep : 4,

	moveSpeed : 300,

	fadeSpeed : 500

});
//焦点图数据抽取
$(function() {
	$.ajax({
		url : "../resources/web/php/information.json",
		type : "post",
		dataType : "json",
		success : function(data) {
			for (var i = 0; i <= data.data.beijing.length-1; i++) {
				 	$('#beijing').append('<li></li>');
					$('#beijing li').eq(i).html('<span class="in_point">•</span><a href="#">'+data.data.beijing[i].title+'</a>')
			}
			for (var i = 0; i <= data.data.tianjin.length-1; i++) {
				 	$('#tianjin').append('<li></li>');
					$('#tianjin li').eq(i).html('<span class="in_point">•</span><a href="#">'+data.data.tianjin[i].title+'</a>')
			}
		
		},
		error : function(e) {
			//alert(2);
		}
	});
}); 