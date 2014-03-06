<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/member/member-home.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/historyAppointment.css"/>" />
<!-- 这里写你们的内容 -->
		<div class="span12">
					<div class='xm-box uc-box'>
					<div class="hd">
						<h3 class="title">预约历史</h3>
						<p class="tip">
							<span class="separator">|</span> 由于数据同步可能带来订单信息及订单状态显示滞后，请稍等一会儿。
						</p>
					</div>
					<div class="m_table m_order_list" id='m_order_list'>
							<table width="95%">
								<thead>
									<tr>
										<td>预约号</td><td>鉴宝地点</td><td>订到人</td><td>到店时间</td><td>状态</td><td>操作</td>
									</tr>
								</thead>
								<tbody>
								</tbody>

							</table>
						</div>

						<div class="details">
							<div class="reserve_line"></div>
							<div class="m_table m_order_list" id="m_order_list">
								<table width="95%">
									<thead>
										<tr>
											<td colspan="2">&nbsp;<span id='span'>X</span></td>
										</tr>
									</thead>
									<tbody id='tbody'>
										<tr>
											<td width="50%"><strong>预约单号：</strong><span>120275</span></td><td></td>
										</tr>
										<tr>
											<td><strong>预约鉴宝地点：</strong><span>北京小米之家</span></td>
											<td class='hide1'><strong>预约服务类型：</strong><span>鉴宝</span></td>
										</tr>
										<tr>
											<td><strong>预约到店时间：</strong><span>2013-12-19</span> </td><td><strong>当前状态：</strong><font color="#FF6600"><span class="red">已鉴定</span></font></td>
										</tr>
										<tr>
											<td><strong>姓名：</strong><span>左左</span></td>
											<td class='hide2'><strong>联系电话：</strong><span>13733921784</span></td>
										</tr>
										<tr>
											<td colspan="23" class='hide'><strong>备注：</strong><span></span></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
				</div>
<!-- 你们的代码  end -->
	
<script src="<c:url value="/resources/web/js/appointment/history.js"/>" type="text/javascript" charset="UTF-8"></script>
