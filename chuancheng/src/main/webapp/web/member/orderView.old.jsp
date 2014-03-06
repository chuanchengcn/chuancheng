<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/member/member-home.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/historyAppointment.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/orderView.css"/>" />
<!-- 这里写你们的内容 -->
<div class="span12">
	<div class="xm-box uc-box">
			<div class="hd">
			<h3 class="title">订单号：1140117298001875</h3>
			<a class="btn btn-primary btn-small" target="_blank" href="http://my.xiaomi.com/buy/confirm/1140117298001875">立即支付</a>
		</div>
		<div class="m_table m_order_list" id='m_order_list'>
							<table>
								<thead>
									<tr>
										<td>预约号</td><td>鉴宝地点</td><td>服务类型</td><td>到店时间</td><td>状态</td><td>操作</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>120275</td>
										<td>北京鉴宝</td>
										<td>鉴宝</td>
										<td>2013-12-19 </td>
										<td><span class="red">未鉴定</span></td>
										<td class='td'><a class="a_op" href="#">详情</a></td>
									</tr>
								</tbody>
							</table>
			   </div>

				<div id='detailed'>
					<div id='detailed-left'>
						<span class='close'>x</span>
						<h2 class='on' id='ord1'>订单状态:&nbsp;<span></span></h2>
						<h3 class='on' id='ord2'>鉴宝人信息[<a href='#'>修改</a>]</h3>
						
						<ul class='inf'>
							<li>订&nbsp;&nbsp;单&nbsp;&nbsp;号：<span class='orderNum'></span></li>
							<li>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<span class='name'></span></li>
							<li>联系方式：<span class='phone'></span></li>
							<li>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<span class='mailbox'></span></li>
							<li>宝贝名称：<span class='nameB'></span></li>
							
						</ul>
						<h2 class='on' id='ord3'>鉴宝时间、地点[<a href='#'>修改</a>]</h2>
						<p class='timer'></p>
						<p class='add'></p>
						
					</div>
					<div id='detailed-right'>
						<dl>
							<dt><h2 class='on' id='ord4'>宝贝详情</h2></dt>
							<dd><span> </span></dd>
						</dl>
					</div>
					
					<div class='clear'></div>
					
			</div>

					</div>
						<div id='modify'>
							<div class="popup">
                        	</div>
						</div>
</div>
<div id="page_overlay" class="overlay" style="display: none; opacity: 0.7;"></div>	
<script src="<c:url value="/resources/web/js/appointment/current.js"/>" type="text/javascript" charset="UTF-8"></script>
