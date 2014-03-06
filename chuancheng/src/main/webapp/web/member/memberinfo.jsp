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
				<form class="form-horizontal">
					<div class="control-group">
						<label class="control-label" for="inputEmail">Email</label>
						<div class="controls">
							<input type="text" id="inputEmail" placeholder="Email">
						</div>
					</div>
					
					
					
					<div class="control-group">
						<label class="control-label" for="inputPassword">Password</label>
						<div class="controls">
							<input type="password" id="inputPassword" placeholder="Password">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPassword">Password</label>
						<div class="controls">
							<input type="password" id="inputPassword" placeholder="Password">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="inputPassword">Password</label>
						<div class="controls">
							<input type="password" id="inputPassword" placeholder="Password">
						</div>
					</div>
					
					<div class="control-group">
						<div class="controls">
							<label class="checkbox"> <input type="checkbox">
								Remember me
							</label>
							<button type="submit" class="btn">Sign in</button>
						</div>
					</div>
				</form>

				<div class="panel panel-default panel-col">
			     <div class="panel-heading">基础信息</div>
			     <div class="panel-body">
					<form id="user-profile-form" class="form-horizontal" method="post">


						<div class="form-group">
							<label class="col-md-2 control-label">昵称</label>
							<div class="col-md-7 controls">
								<div class="control-text">
									sbsb <a href="nickname.jsp">修改</a>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="col-md-2 control-label" for="profile_truename">姓名</label>
							<div class="col-md-7 controls">

								<input type="text" id="profile_truename"
									name="profile[truename]" class="form-control" />
							</div>
						</div>

						<div class="help-block approval">
							<label class="col-md-2 control-label"></label>
							<p class="text-warning">
								您尚未实名认证，<strong><a href="/settings/approval/submit">点此认证</a>。
								</strong>
							</p>
						</div>

						<div class="form-group">
							<div class="col-md-2 control-label">
								<label class="required">性别</label>
							</div>
							<div class="col-md-7 controls radios">
								<div id="profile_gender">
									<input type="radio" id="profile_gender_0"
										name="profile[gender]" required="required" value="male" /><label
										for="profile_gender_0" class="required">男</label><input
										type="radio" id="profile_gender_1" name="profile[gender]"
										required="required" value="female" /><label
										for="profile_gender_1" class="required">女</label>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-2 control-label">
								<label for="profile_company">公司</label>
							</div>
							<div class="col-md-7 controls">
								<input type="text" id="profile_company" name="profile[company]"
									class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-2 control-label">
								<label for="profile_job">职业</label>
							</div>
							<div class="col-md-7 controls">
								<input type="text" id="profile_job" name="profile[job]"
									class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-2 control-label">
								<label for="profile_title">头衔</label>
							</div>
							<div class="col-md-7 controls">
								<input type="text" id="profile_title" name="profile[title]"
									class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-2 control-label">
								<label for="profile_signature">个人签名</label>
							</div>
							<div class="col-md-7 controls">
								<input type="text" id="profile_signature"
									name="profile[signature]" class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-2 control-label">
								<label for="profile_about">自我介绍</label>
							</div>
							<div class="col-md-7 controls">
								<textarea id="profile_about" name="profile[about]"
									class="form-control"></textarea>
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-2 control-label">
								<label for="profile_site">个人主页</label>
							</div>
							<div class="col-md-7 controls">
								<input type="text" id="profile_site" name="profile[site]"
									class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-2 control-label">
								<label for="profile_weibo">微博</label>
							</div>
							<div class="col-md-7 controls">
								<input type="text" id="profile_weibo" name="profile[weibo]"
									class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-2 control-label">
								<label for="profile_weixin">微信</label>
							</div>
							<div class="col-md-7 controls">
								<input type="text" id="profile_weixin" name="profile[weixin]"
									class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-2 control-label">
								<label for="profile_qq">QQ</label>
							</div>
							<div class="col-md-7 controls">
								<input type="text" id="profile_qq" name="profile[qq]"
									class="form-control" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-md-2 control-label">
								<label for="profile_mobile">手机</label>
							</div>
							<div class="col-md-7 controls">
								<input type="text" id="profile_mobile" name="profile[mobile]"
									class="form-control" />
							</div>
						</div>

						<div class="row">
							<div class="col-md-7 col-md-offset-2">
								<input type="hidden" id="profile__token" name="profile[_token]"
									value="a038bb52643745355e903084ae4e70558d3761c7" />
								<button type="submit" class="btn btn-primary">保存</button>
							</div>
						</div>

						<input type="hidden" name="_csrf_token"
							value="5ecd77f7b2416b573faa519e6622362a87b0ecd8">
					</form>



				</div>
			</div>
			</div>
		</div>
	</div>
</div>