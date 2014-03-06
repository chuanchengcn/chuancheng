<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-home.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/home-form.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/modifyInformation.css"/>" />


<!-- 这里写你们的内容 -->
<div class="span12">
	<div id='wrapper'>
		<h2>信息修改</h2>
		<div id='content'>
			<ul id='ul1'>
				<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名：<span>《未设置》</span><a
					href='#'>修改?</a>
				</li>
				<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码：<span>《未设置》</span><a
					href='#'>修改?</a>
				</li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;电子邮箱：<span>《未设置》</span><a href='#'>修改?</a>
				</li>
				<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;手机：<span>《未设置》</span><a
					href='#'>修改?</a>
				</li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;联系电话：<span>《未设置》</span><a href='#'>修改?</a>
				</li>
				<li>手机或电话：<span>《未设置》</span><a href='#'>修改?</a>
				</li>
				<li>&nbsp;&nbsp;&nbsp;&nbsp;宝贝描述：<span>《未设置》</span><a href='#'>修改?</a>
				</li>
			</ul>
			<ul id='ul2'>
				<li>
					<h3>请设置您的姓名</h3> <br /> 当前姓名：<span class='zuo'>（未设置）</span> <br />
					<br /> 新姓名 <input class='input' type='text' /> <br /> <input
					type='button' id='inpt' value='确定' />
				</li>
				<li>
					<h3>请设置您的密码</h3> <br /> 当前密码：<span>（未设置）</span> <br /> <br /> 新密码 <input
					class='input' type='text' /> <br /> <input type='button' id='inpt'
					value='确定' />
				</li>
				<li>
					<h3>请设置您的邮箱</h3> <br /> 当前邮箱：<span>（未设置）</span> <br /> <br /> 新邮箱 <input
					class='input' type='text' /> <br /> <input type='button' id='inpt'
					value='确定' />
				</li>
				<li>
					<h3>请设置您的手机</h3> <br /> 当前手机：<span>（未设置）</span> <br /> <br /> 新手机 <input
					class='input' type='text' /> <br /> <input type='button' id='inpt'
					value='确定' />
				</li>
				<li>
					<h3>请设置您的电话</h3> <br /> 当前电话：<span>（未设置）</span> <br /> <br /> 新电话 <input
					class='input' type='text' /> <br /> <input type='button' id='inpt'
					value='确定' />
				</li>
				<li>
					<h3>请设置您的手机或电话</h3> <br /> 当前手机或电话：<span>（未设置）</span> <br /> <br />
					新手机或电话 <input class='input' type='text' /> <br /> <input
					type='button' id='inpt' value='确定' />
				</li>
				<li>
					<h3>请设置您的描述</h3> <br /> 当前描述：<span>（未设置）</span> <br /> <br /> 新描述 <textarea
						id="ms" name="ms" cols="50" rows="7"> </textarea> <br /> <input
					type='button' id='inpt' value='确定' />
				</li>
			</ul>
			<div id='determine'>
				<input type="button" name="button" id="button"
					class="btn btn-primary" value="确认">
			</div>
		</div>
	</div>
</div>

	<!-- 这里放你自己的js  -->
<script type="text/javascript" src="<c:url value="/resources/web/js/json2.js"/>" charset="UTF-8"></script>
<script src="<c:url value="/resources/web/js/basicPersonalInformation/modifyInformation.js"/>" type="text/javascript" charset="UTF-8"></script>

