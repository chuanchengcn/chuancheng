/**
 * @author dell
 */
//获取预约订单数据
function tx(index){
	   $.ajax({
		   method:"post",
		   url:"../../resources/web/php/order.php",
		   data:{
			  index:index
		   },
		   success:function (data){
		   	var json=JSON.parse(data);
		   		$('.col1 a').text(json.oR1);
		   		$('.col2 a').text(json.oR2);
		   		$('.col5 a').text(json.oR3);
		   		$('.col3 a').text(json.oR4);
		   		$('.col4 a').text(json.oR5);
			}
	 });
	}
		tx(0);
//取消预约按钮	
$('#btn').click(function(){
	if(window.confirm('你确定要取消交易吗？')){
               //alert("确定");
         $('#btn').text('正在处理');      
	     var  timer=function(){
			$('.col1 a').text("");
			$('.col2 a').text("");
			$('.col5 a').text("");
			$('.col3 a').text("");
			$('.col4 a').text("");
			$('.shop-cart-goods').hide();
			
			$('#btn').hide();
			$('#detailed').hide();
			$('#emp').show();
			alert('操作已成功')
		}
		setTimeout(timer,1500);
      }else{
                 //alert("取消");
                 return false;
    }
})
//详细信息
$('.col6').click(function(){
	if($('#detailed').hide){
		$('#detailed').slideDown();
	}else{
		$('#detailed').slideUp();	
		}
})
//
function detailed(index){
	   $.ajax({
		   method:"post",
		   url:"../../resources/web/php/order.php",
		   data:{
			  index:index
		   },
		   success:function (data){
		   	var json=JSON.parse(data);
		   		$('#ord1 span').text(json.oR6);
		   		$('.inf li').eq(0).children('span').text(json.oR2);
		   		$('.inf li').eq(1).children('span').text(json.oR5);
		   		$('.inf li').eq(2).children('span').text(json.oR8);
		   		$('.timer').text(json.oR3);
		   		$('.add').text(json.oR4);
		   		$('#detailed-right dl dd span').html('<img src="../../resources/web/images/'+json.oR7+'" />');
			}
	 });
	}
		detailed(0);