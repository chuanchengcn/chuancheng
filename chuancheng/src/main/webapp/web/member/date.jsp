<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/member/member-home.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/date.css"/>" />
<div class="span12">
	<div id="shopCartBox">
		<div class="xm-box shop-cart-box">
			<div class="hd">
				<h2 class="title">我的预约订单</h2>
				<p class="shop-cart-sub-title"></p>
			</div>
			<div class="bd">
				<dl class="shop-cart-goods">
					<dt class="clearfix">
						<span class="col col1">预约号</span> <span class="col col2">预约人</span><span
							class="col col4" style='margin-right: 100px;'>联系电话</span><span
							class="col col5">预约时间</span> <span class="col col3">鉴宝地点</span>
					</dt>
					<dd class="item clearfix">
						<div class="goods-pic">
							<a target="_blank" href="#"> </a>
						</div>
						<div class="goods-info">
							<div class="goods-count clearfix">
								<span class="col col1"> <a href='#'> 1334566677 </a>
								</span> <span class="col col2"><a>zuozuo</a></span> <span
									class="col col4" style='margin-right: 280px;'> <a>13456789021</a>
								</span> <span class="col col5"> <a>2013-12-19</a>
								</span> <span class="col col3"> <a>beijing</a>
								</span> <span class="col col6"
									style='margin-right: 150px; margin-top: -40px;'> <a
									href="#">详细信息</a>
								</span>
							</div>

						</div>
					</dd>
				</dl>
				<div id='detailed' style='display: none;'>
					<div id='detailed-left'>
						<h2 class='on' id='ord1'>
							订单状态:&nbsp;<span style='color: #ccc'></span>
						</h2>
						<h3 class='on' id='ord2'>
							鉴宝人信息[<a href='modifyInf.html'>修改</a>]
						</h3>
						<ul class='inf'>
							<li>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<span
								class='name'></span></li>
							<li>联系方式：<span class='phone'></span></li>
							<li>邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<span
								class='youxiang'></span></li>
						</ul>
						<h2 class='on' id='ord3'>
							鉴宝时间、地点[<a href='modifyInf.html'>修改</a>]
						</h2>
						<p class='timer'></p>
						<p class='add'></p>
					</div>
					<div id='detailed-right'>
						<dl>
							<dt>
								<h2 class='on' id='ord4'>宝贝详情</h2>
							</dt>
							<dd
								style='width: 198px; height: 198px; border: 1px solid #E6E9ED;'>
								<span></span>
							</dd>
						</dl>
					</div>
					<div class='clear' style='clear: both;'></div>

				</div>
				<div id='emp' style='display: none;'>
					<P>
						您没有预约哦<a href='reservation.html'>赶快看看去...</a>
					</P>
				</div>
				<div class="shop-cart-btns clearfix"
					style='height: 50px; border-top: dashed 1px #ccc;'>
					<a class="btn btn-primary btn-to-checkout" id='btn' href="#"
						style='margin-top: 20px;'>取消预约</a>
				</div>
			</div>
		</div>
	</div>
	</div>
	
<script src="<c:url value="/resources/web/js/order/order.js"/>" type="text/javascript" charset="UTF-8"></script>
