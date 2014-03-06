/**
 * @author dell
 */
$(function() {
	$.ajax({
		url : "myTreasures",
		type : "post",
		dataType : "json",
		data : {
			data : ""
		},
		success : function(data) {
			$('.pin_cols').append('<div class="item"></div>');
			$('.pin_cols .item').html('<a href="#" class="f14 black"> <p class="l"><img src="' + data.data.treasures[0].name + '" /> </p> <p class="s"><img src="../../resources/web/images/' + data.data.treasures[0].number + '" /> </p> <p class="s"><img src="../../resources/web/images/' + data.data.pic[0].pic + '" /> </p> </a><div class="clear"> </div>');
			},
		error : function(e) {
			//alert(2);
		}
	});

});
//上传我的收藏click
function F_Open_dialog() {
	document.getElementById("btn_file").click();
}
