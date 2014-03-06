<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/member/protal.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/date.css"/>" />
<div class="span12">
	<div id="main-right">
		<div id="m-r-top">
        	<h3 id="title">预约服务</h3>
   		</div>
   		<div id='m-r-center'>
   			<div id='choose'>
   				<p class='p1'><span>step 1</span>选择鉴宝方式</p>
   				<ul class='ul1' id='ul1'>
	   				<li>
	   					<dl>
	   						<dd>离线鉴宝</dd>
	   						<dt class='t2'><img src='../../resources/web/images/reservation/avatar2.jpg'/></dt>
	   					</dl>
	   				</li>
	   				<li>
	   					<dl>
	   						<dd>在线鉴宝</dd>
	   						<dt class='t2'><img src='../../resources/web/images/reservation/avatar2.jpg'/></dt>
	   					</dl>
	   				</li>
	   			</ul>
	   		<div class='clear'> </div>
	   		<div id='xia'>
	   			<a id="next" class="btn btn-primary">下一步</a>
			</div>
		</div>
		<div class='clear'> </div>
			<div id='address' style='display:none;'>
				<p class='p1'><span>step 2</span>选择鉴宝地</p>
				<ul class='ul2' id='ull'>
					<li class='t2'>
						<h3>首都鉴宝</h3> 
					</li>
					<li class='t2'>
						<h3>天津鉴宝</h3>
					</li>
				</ul>
				<div class='clear'> </div>
				<br/>
				<p class='p1'><span>step 3</span>选择鉴宝time</p>
				<ul class='ul3'>
					<li><input id="input1" style='height:35px;margin-bottom:0;' class="Wdate" type="text"/></li>
				</ul>
				
				<div class='clear'> </div>
				<div id='time' style='display:none;'>
					<p class='p1'><span>step 4</span>选择鉴宝time</p>
					<ul class='ul4'>
						<li class='t2'>
							<h3>10:00-11:00<span> </span></h3> 
						</li>
						<li class='t2'>
							<h3>11:00-12:00<span> </span></h3>
						</li>
						<li class='t2'>
							<h3>13:00-14:00<span> </span></h3>
						</li>
						<li class='t2'>
							<h3>14:00-15:00<span> </span></h3>
						</li>
						<li class='t2'>
							<h3>15:00-16:00<span> </span></h3>
						</li>
						<li class='t2'>
							<h3>16:00-17:00<span> </span></h3>
						</li>
					</ul>
				</div>
				<div id='xia2'>
	   				<a id="next2" class="btn btn-primary">下一步</a>
				</div>
				<div class='clear'> </div>
			</div>
			<div id='zaixian' style='display:none;'>
				<div id='pic'>
					<div id="well" style='margin-bottom:60px;'>
						<div style="margin:5px;text-align:center;">
							<p> </p><h2>上传图片</h2><p> </p>
							<p class="f14 gray">快来上传装修毕业照，或者设计作品，获得百万房主朋友的更多关注！</p>
						</div>
					</div>
					<p>
						
		           	<div class="pull-right" style='margin-top:-30px;margin-right:358px;'>
				        <div id="__upload_btn" style='height:32px;margin-bottom:10px;'>
				        	 <input type="file" id="btn_file" name="btn_file" value="test" style="display:none"> 
 							 <input type="button" name="btn_abc" id='btn_abc' value="上传本地图片" onclick="F_Open_dialog()"> 
				             
				             <a id="uploadfiles" href="javascript:;" class="btn btn-primary disabled" style="display:none;"><i class="icon-upload icon-white"> </i> 上传图片</a>
						</div>
						<script>
							function F_Open_dialog() 
								{ 
			      			  document.getElementById("btn_file").click(); 
								} 
						</script>
			        </div>
					</p>
					
				</div>
			</div>
		</div>
		<div id='essentialInf' style='display:none;'>
			 <p class='p1'><span>step 5</span>您的个人信息</p>
				<form id="myform" style='margin-left:30px;margin-top:20px;'>
					用户名：　<input type="text" name="user" id='inp1' class="required"/><br>
					Email：　 <input type="text" name="email" id='inp2' class="required email"/><br>
					手机号码：<input type="text" name="mobile" id='inp3' class="ismobile"/><br>
					</form>
        		<div id='xia2'>
        	
	   				<a id="next3" class="btn btn-primary">提交预约</a>
				</div>
	</div>
	
	</div>
</div>
	
<script src="<c:url value="/resources/web/js/order/order.js"/>" type="text/javascript" charset="UTF-8"></script>
