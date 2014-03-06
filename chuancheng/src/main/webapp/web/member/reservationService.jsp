<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/member/member-home.css"/>" />
<link rel="stylesheet"	href="<c:url value="/resources/web/css/member/reservationService.css"/>" />
<link rel="stylesheet"	href="<c:url value="/resources/web/css/member/manhuaDate.1.0.css"/>" />
<link rel="stylesheet"	href="<c:url value="/resources/web/css/member/order.css"/>" />
<link rel="stylesheet"	href="<c:url value="/resources/web/css/member/jquery_validate.css"/>" />

<div class="container">
	<div class="row">
		<div class="span3">
			<div class="info">
				<img src="<c:url value="${professor.photo }"/>" alt="">
				<strong>${professor.name}</strong>
				<p>${professor.nickName}</p>
				<a class="btn" href="<c:url value="/web/professors"/>">重新选择专家</a>
			</div>
		</div>
		<!-- 这里写你们的内容 -->
		<div class="span12">
			<div id="main-right">
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
	   		<div id='address'>
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
			</div>
				
				<div id='essentialInf'>
			 <p class='p1'><span>step 5</span>您的个人信息</p>
				<form id="myform" action="<c:url value="/web/member/addOrderForm"/>">
						用&nbsp;&nbsp;户&nbsp;名：<input type="text" name="user" class="required" /><br/>
						手机号码：<input type="text" name="mobile" class="ismobile"/><br/>
						宝贝描述：<textarea id="ms" name="ms" cols="50" rows="7"> </textarea>
						<div id='picture'> </div>
						<input type='file' id='upload'>
				  </form>
   				  <div id='xia2'>
        			<a id="next3" href="<c:url value="/web/member/addOrder"/>" class="btn btn-primary">提交预约</a>
				</div>
			</div>
	   		<div id='xia'>
	   			<a id="next" class="btn btn-primary">下一步</a>
			</div>
		</div>
		<div class='clear'> </div>
			
		</div>
	<div id='zaixian'>
				<div id='pic'>
					<div id="well">
						<div>
							<p> </p><h2>上传图片</h2><p> </p>
							<p class="f14 gray">快来上传装修毕业照，或者设计作品，获得百万房主朋友的更多关注！</p>
						</div>
					</div>
					<p>
						
		           	<div class="pull-right">
				        <div id="__upload_btn">
				        	 <input type="file" id="btn_file" name="btn_file" value="test"> 
 							 <input type="button" class="btn btn-primary" name="btn_abc" id='btn_abc' value="上传本地图片"> 
				             <a id="uploadfiles" href="javascript:;" class="btn btn-primary disabled"><i class="icon-upload icon-white"> </i> 上传图片</a>
						</div>
						
			        </div>
					</p>
					
				</div>
			</div>
</div>
	<div class='clear'></div>
	<div id='preOrder'>
			<h2>预约成功！</h2>
			<ul id='ulInfor'>
				<li>预约号：<span></span></li>
				<li>预约人：<span></span></li>
				<li>手机号：<span></span></li>
				<li>温馨提示：为了节省您的时间，请您准时到店。</li>
			</ul>
			<div id='perPic'>
				<img src='../../resources/web/images/reservation/u=2079528219,2763639054&fm=23&gp=0.jpg'/>
			</div>
			<div id='address2'>
				<h3>首都鉴宝</h3>
				<div id='xinxi'>
					<p>	电话：135986905</p>	
						<p>地址：丹阳大厦</p>	
						<p>交通：10号十里河站</p>	
				</div>
			</div>
			<div id='address3'>
				<h3>天津鉴宝</h3>
				<div id='xinxi'>
				<p>	电话：2322452454</p>	
					<p>	地址：丹阳大厦</p>	
					<p>	交通：10号十里河站</p>	
				</div>
			</div>
			<a class='back' href='../../index.html'>回到首页看看...</a>
		</div>
		</div>
	</div>
</div>


<!-- 你们的代码  end -->




<script src="<c:url value="/resources/web/js/json2.js"/>" type="text/javascript" charset="UTF-8"></script>
<script src="<c:url value="/resources/web/js/reservation/jquery.validate.js"/>" type="text/javascript" charset="UTF-8"></script>
<script src="<c:url value="/resources/web/js/reservation/jquery.validate.messages_cn.js"/>" type="text/javascript" charset="UTF-8"></script>
<script src="<c:url value="/resources/web/js/reservation/jquery.validatePlugin.js"/>" type="text/javascript" charset="UTF-8"></script>
<script src="<c:url value="/resources/web/js/reservation/reservation.js"/>" type="text/javascript" charset="UTF-8"></script>

