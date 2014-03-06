<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-home.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/home-form.css"/>" />
<div class="span12">
	<div class="xm-box uc-box">
		<div class="hd">
			<h3 class="title">修改密码</h3>
			<p class="tip">
				<span class="separator">|</span> 由于忘记密码？
			</p>
		</div>
		<div class="bd">
			<div class="uc-password-section">
				<form class="uc-password-form" action="<c:url value="/web/member/modify/password"/>" method="post">
					<fieldset class="form-section item">
						<label for="password">原密码：<span>*</span>
						</label> <input id="oldPassword" class="input" type="password" value=""
							placeholder="原密码" name="oldPassword">
						<p id="oldPasswordTip" class="oldPassword-tip"></p>
						<p class="tip-msg tipMsg"></p>
					</fieldset>

					<fieldset class="form-section item">
						<label for="newPassword"> 新密码：<span>*</span>
						</label> <input id="newPassword" class="input" type="password" value=""
							placeholder="新密码" name="newPassword">
						<p id="newPasswordTip" class="newPassword-tip"></p>
						<p class="tip-msg tipMsg"></p>
					</fieldset>
					<fieldset class="form-section item">
						<label for="confirmPassword"> 确认密码： <span>*</span>
						</label> <input id="confirmPassword" class="input" type="password"
							value="" placeholder="确认密码" name="confirmPassword">
						<p id="confirmPasswordTip" class="confirmPassword-tip"></p>
						<p class="tip-msg tipMsg"></p>
					</fieldset>
					<fieldset class="form-section submit item">
						<button class="btn btn-primary btn-small" type="submit">确认</button>
						<button class="btn btn-small" type="button">取消</button>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
</div>
