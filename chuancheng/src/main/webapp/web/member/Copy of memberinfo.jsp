<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-home.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/home-form.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/xiugai.css"/>" />
<!-- 这里写你们的内容 -->
<div class="span12">
	<div class="xm-box uc-box">
		<div class="hd">
			<h3 class="title">修改信息</h3>
			<p class="tip">
				<span class="separator">|</span> 由于忘记密码？
			</p>
		</div>
		<div class="bd">
			<div class="uc-password-section">
				<div class="list_box">
					<ul>
						<li>
							<div class="div1">
								<font color="black">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</font>
								<input type="text" disabled="disabled" value="${member.name }" id="userName" />
								<div id="div2" class="xg">
									<a href="#"><img src="../../resources/web/images/xg.png" />
									</a>
								</div>
								<div id="div3" class="bc">
									<a href="#"><img src="../../resources/web/images/bc.png" />
									</a>
								</div>

							</div>
						</li>
						<li>
							<div class="div1">
								<font color="black">妮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</font>
								<input type="text" disabled="disabled" value="${member.memberinfo.country }" id="niCheng" />
								<div id="div2" class="xg">
									<a href="#"><img src="../../resources/web/images/xg.png" />
									</a>
								</div>
								<div id="div3" class="bc">
									<a href="#"><img src="../../resources/web/images/bc.png" />
									</a>
								</div>

							</div>
						</li>
						<li>
							<div class="div1">
								<font color="black">英&nbsp;&nbsp;文&nbsp;名：</font> <input
									type="text" disabled="disabled" value="xiaoming" />
								<div id="div2" class="xg">
									<a href="#"><img src="../../resources/web/images/xg.png" />
									</a>
								</div>
								<div id="div3" class="bc">
									<a href="#"><img src="../../resources/web/images/bc.png" />
									</a>
								</div>

							</div>
						</li>
						<li>
							<div class="div1">
								<font color="black">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业：</font>
								<input type="text" disabled="disabled" value="${member.memberinfo.degree }" />
								<div id="div2" class="xg">
									<a href="#"><img src="../../resources/web/images/xg.png" />
									</a>
								</div>
								<div id="div3" class="bc">
									<a href="#"><img src="../../resources/web/images/bc.png" />
									</a>
								</div>

							</div>
						</li>
						<li>
							<div class="div1">
								<font color="black">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</font>
								<input type="text" disabled="disabled" value="${member.email }" />
								
							<!-- 
							    <div id="div2" class="xg">
									<a href="#"><img src="../../resources/web/images/xg.png" />
									</a>
								</div>
								<div id="div3" class="bc">
									<a href="#"><img src="../../resources/web/images/bc.png" />
									</a>
								</div>
								 -->	

							</div>
						</li>
						<li>
							<div class="div1">
								<font color="black">住&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</font>
								<input type="text" disabled="disabled" value="${member.memberinfo.address }" />
								<div id="div2" class="xg">
									<a href="#"><img src="../../resources/web/images/xg.png" />
									</a>
								</div>
								<div id="div3" class="bc">
									<a href="#"><img src="../../resources/web/images/bc.png" />
									</a>
								</div>

							</div>
						</li>
						<li>
							<div class="div1">
								<font color="black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
							</div>

						</li>
						<li>
							<div class="div1">
								<font color="black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font>
							</div>

						</li>
					</ul>

				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
		$(function() {
			xg();
			bc();
		});
		//修改
		function xg() {
			$(".xg").click(function() {
				var parent = $(this).parent().parent();
				parent.find("input").attr("disabled", false);
				parent.find("div:eq(1)").attr({
					style : "display:none"
				});
				parent.find("div:eq(2)").attr({
					style : "display:block"
				});
			});
		}
		//保存
		function bc() {
			$(".bc").click(
					function() {
						var name = $(this).parent().parent().find("input").val();
						var b = $(this).parent().parent().index();

						var rootPath = "../resources/web/php/"
						var urls = [ "modifyName","modifynickName","modifyenglishName", "modifyProfession", "modifyEmail","modifyAddress" ];
						if(b==0){
							$.ajax({
								url : rootPath + urls[0],
								dataType : 'json',
								data : {
									modifyName : name
								},
								type : 'post',
								success : function(data) {
								}
							});
							var parent = $(this).parent().parent();
							parent.find("input").attr("disabled", true);
							parent.find("div:eq(2)").attr({
								style : "display:none"
							});
							parent.find("div:eq(1)").attr({
								style : "display:block"
							});

						}
						if(b==1){
							$.ajax({
								url : rootPath + urls[1],
								dataType : 'json',
								data : {
									modifynickName : name
								},
								type : 'post',
								success : function(data) {
								}
							});
							var parent = $(this).parent().parent();
							parent.find("input").attr("disabled", true);
							parent.find("div:eq(2)").attr({
								style : "display:none"
							});
							parent.find("div:eq(1)").attr({
								style : "display:block"
							});

						}
						if(b==2){
							$.ajax({
								url : rootPath + urls[2],
								dataType : 'json',
								data : {
									modifyenglishName : name
								},
								type : 'post',
								success : function(data) {
								}
							});
							var parent = $(this).parent().parent();
							parent.find("input").attr("disabled", true);
							parent.find("div:eq(2)").attr({
								style : "display:none"
							});
							parent.find("div:eq(1)").attr({
								style : "display:block"
							});

						}
						if(b==3){
							$.ajax({
								url : rootPath + urls[3],
								dataType : 'json',
								data : {
									modifyProfession : name
								},
								type : 'post',
								success : function(data) {
								}
							});
							var parent = $(this).parent().parent();
							parent.find("input").attr("disabled", true);
							parent.find("div:eq(2)").attr({
								style : "display:none"
							});
							parent.find("div:eq(1)").attr({
								style : "display:block"
							});

						}
						if(b==4){
							$.ajax({
								url : rootPath + urls[4],
								dataType : 'json',
								data : {
									modifyEmail : name
								},
								type : 'post',
								success : function(data) {
								}
							});
							var parent = $(this).parent().parent();
							parent.find("input").attr("disabled", true);
							parent.find("div:eq(2)").attr({
								style : "display:none"
							});
							parent.find("div:eq(1)").attr({
								style : "display:block"
							});

						}
						if(b==5){
							$.ajax({
								url : rootPath + urls[5],
								dataType : 'json',
								data : {
									modifyAddress : name
								},
								type : 'post',
								success : function(data) {
								}
							});
							var parent = $(this).parent().parent();
							parent.find("input").attr("disabled", true);
							parent.find("div:eq(2)").attr({
								style : "display:none"
							});
							parent.find("div:eq(1)").attr({
								style : "display:block"
							});

						}
						
					});

		}
	</script>