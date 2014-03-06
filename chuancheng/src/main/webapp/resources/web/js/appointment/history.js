/**
 * @author dell
 */

$(function() {
	$.ajax({
		url : "ajax/historyOrders",
		type : "post",
		dataType : "json",
		success : function(data) {
			for (var i = 0; i <= data.data.jianbaoOrders.length - 1; i++) {
				$('tbody').append('<tr></tr>')
				$('tbody tr').eq(i).html('<td>' + data.data.jianbaoOrders[i].orderNumber + '</td><td>'
						+ data.data.jianbaoOrders[i].storeId + '</td><td>'
						+ data.data.jianbaoOrders[i].memberId + '</td><td>'
						+data.data.jianbaoOrders[i].createTime+'</td><td><span class="red">' 
						+ data.data.jianbaoOrders[i].statu + '</span></td><td style="display:none">' 
						+ data.data.jianbaoOrders[i].price + '</td><td style="display:none">' 
						+ data.data.jianbaoOrders[i].isOnline + '</td><td style="display:none">' 
						+ data.data.jianbaoOrders[i].treasureId + '</td><td class="td1"><a class="a_op" onclick="Details();">详情</a></td>')
				$('#tbody tr:eq(3) td:eq(1) span').text(data.data.jianbaoOrders[i].updateTime);
			}

		},
		error : function(e) {
			//alert(2);
		}
	});

});
function Details() {
	$('tbody tr .td1').click(function(){
		var num=$(this).siblings('td').eq(0).html(),
			add=$(this).siblings('td').eq(1).html(),
			name=$(this).siblings('td').eq(2).html(),
			status=$(this).siblings('td').eq(4).html();
			type=$(this).siblings('td').eq(5).html();
			phoneNumber=$(this).siblings('td').eq(6).html();
			remarks=$(this).siblings('td').eq(7).html();
			
			$('#tbody tr:eq(0) td span').text(num);
			$('#tbody tr:eq(1) td:eq(0) span').text(add);
			$('#tbody tr:eq(1) td:eq(1) span').text(type);
			$('#tbody tr:eq(3) td:eq(0) span').text(name);
			$('#tbody tr:eq(2) td:eq(2) span').text(status);
			$('#tbody tr:eq(3) td:eq(1) span').text(phoneNumber);
			$('.details').show();

			
	})
};
$('#span').click(function(){
	$('.details').hide();

})
