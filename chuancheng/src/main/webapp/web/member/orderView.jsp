<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/member/member-home.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/orderView.css"/>" />
<!-- 这里写你们的内容 -->
<div class="span12">
	<div class="xm-box uc-box">
			<div class="hd">
			<h3 class="title">订单号：1140117298001875</h3>
			<a class="btn btn-primary btn-small" target="_blank" href="http://my.xiaomi.com/buy/confirm/1140117298001875">立即支付</a>
	</div>
	<div class="bd">
			<div class="order-delivery-items">
				<div class="order-delivery-item">
					<table class="order-delivery-table">
						<thead>
							<tr>
								<th class="cell-order-goods">商品信息</th>
								<th class="cell-order-total">订单金额</th>
								<th class="cell-order-date">付款时间</th>
								<th class="cell-order-actions">操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="cell-order-goods">
									<div class="order-goods clearfix">
										<div class="order-goods-thumb">
											<img alt="睿致暗彩后盖 珠黑 "
												src="http://img08.mifile.cn/v1/MI_18455B3E4DA706226CF7535A58E875F0267/T1yahTBgDT1RXrhCrK.jpg?width=60&height=60">
										</div>
										<div class="order-goods-info">
											<span class="order-goods-name"> <a title="睿致暗彩后盖 珠黑 "
												href="http://www.xiaomi.com/item/1134900489" target="_blank">睿致暗彩后盖
													珠黑 </a>
											</span> <span class="order-goods-price">59元</span>
										</div>
										<div class="order-goods-amount">x 1</div>
									</div>
								</td>
								<td rowspan="1">88.00元</td>
								<td rowspan="1">未付款</td>
								<td class="cell-order-actions" rowspan="2">
									<form id="cancleForm" onsubmit="return confirm('你真的要取消此订单吗?')"
										method="post" action="/user/cancleOrder">
										<input type="hidden" value="1140118299018438"
											name="c_order_id"> <a id="cancleBtn"
											href="javascript:;" title="取消订单">取消订单 ></a>
									</form> <br>
								</td>
							</tr>
							
						</tbody>

					</table>

					<div class="order-delivery-status">
						<ol class="order-delivery-steps clearfix">
							<li class="step step-first step-now">
								<div class="step-line">
									<div class="step-dot uc-tooltip hasResult">
										<div class="uc-tooltip-popup hide" style="display: none;">
											<p>您在2014-01-18 15:37:15 提交订单，订单金额88元</p>
											<span class="arrow"></span>
										</div>
									</div>
								</div>
								<div class="step-text">
									下单 <br> 2014-01-18 <br> 15:37:15
								</div>
							</li>
							<li class="step">
								<div class="step-line">
									<div class="step-dot"></div>
								</div>
								<div class="step-text">
									付款 <br>
								</div>
							</li>
							<li class="step">
								<div class="step-line">
									<div class="step-dot"></div>
								</div>
								<div class="step-text">
									配货 <br>
								</div>
							</li>
							<li class="step">
								<div class="step-line">
									<div class="step-dot"></div>
								</div>
								<div class="step-text">
									出库 <br>
								</div>
							</li>
							<li class="step">
								<div class="step-line">
									<div class="step-dot"></div>
								</div>
								<div class="step-text">
									交易成功 <br>
								</div>
							</li>
							<li class="step step-last">
								<div class="step-line">
									<span class="btn btn-dakeLight btn-round btn-comment">评价</span>
								</div>
							</li>
						</ol>
					</div>
					<div class="order-delivery-detail">
						<table class="order-text-table">
							<tbody>
								<tr>
									<th><b>订单状态：</b></th>
									<td>等待付款</td>
								</tr>
							</tbody>
						</table>
					</div>

				</div>
			</div>
		</div>


		<div class="bd">
			<div class="order-delivery-address clearfix">
				<div id="changeAddress"
					data-get="http://order.xiaomi.com/order/updaterender/orderId/1140118299018438/type/address"
					data-update="http://order.xiaomi.com/order/updatehandler/orderId/1140118299018438/type/address"
					class="order-text-section-l">
					<h4>鉴宝信息</h4>
					<table class="order-text-table">
						<tr>
							<th>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</th>
							<td>刘良祥</td>
						</tr>
						<tr>
							<th>收货地址：</th>
							<td>北京 北京市 西城区, 上地十街中关村软件园首创空间</td>
						</tr>
						<tr>
							<th>联系电话：</th>
							<td>186****5648</td>
						</tr>
						<tr>
							<th>支付方式：</th>
							<td>在线支付</td>
						</tr>
					</table>
				</div>
				<div class="order-text-section-r">
					<h4>发票信息</h4>
					<table class="order-text-table">
						<tr>
							<td>不开发票</td>
						</tr>
					</table>
				</div>

			</div>


			<div class="order-delivery-address clearfix">
				<div id="changeBesttime" class="order-text-section"
					data-update="http://order.xiaomi.com/order/updatehandler/orderId/1140118299018438/type/time"
					data-get="http://order.xiaomi.com/order/updaterender/orderId/1140118299018438/type/time">
					<h4>送货时间</h4>
					<div id="timeSection" class="order-delivery-time">不限</div>
				</div>
			</div>
		</div>

</div>







				
<script src="<c:url value="/resources/web/js/appointment/current.js"/>" type="text/javascript" charset="UTF-8"></script>
