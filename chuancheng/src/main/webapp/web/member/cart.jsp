<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/member/cart.css"/>" />
<!-- main container -->
<div class="container breadcrumbs">
	<a href="/index.php">首页</a>
	<span class="separator">></span>
	<span>我的优惠券</span>
</div>

<div class="container">
	<div id="shopCartBox">
		<div class="xm-box shop-cart-box">
			<div class="hd">
				<h2 class="title">我的购物车</h2>
				<p class="shop-cart-sub-title">在线支付全场满¥100免运费</p>
			</div>
			<div class="bd">
				<dl class="shop-cart-goods">
					<dt class="clearfix">
						<span class="col col1">商品</span> <span class="col col2">单价</span>
						<span class="col col3">数量</span> <span class="col col4">小计</span>
					</dt>
					<dd class="item clearfix">
						<div class="goods-pic">
							<a target="_blank" href="http://www.xiaomi.com/goods/1676"> <img
								src="http://p.www.xiaomi.com/images/8/1676_1_1350913773_9.jpg"
								alt="">
							</a>
						</div>
						<div class="goods-info">
							<div class="goods-count clearfix">
								<span class="col col1"> <a target="_blank"
									href="http://www.xiaomi.com/goods/1676"> 小米超薄5055mAh移动电源（白）
								</a>
								</span> <span class="col col2">139元</span> <span class="col col3">
									<div class="change-goods-num clearfix changeGoodsNum">
										<a class="goodsNumMinus" href="#"> <span
											class="icon-common icon-common-negative"></span>
										</a> <input class="goods-num goodsNum" autocomplete="off"
											data-buylimit="5" data-num="1" value="1"
											name="Cart[1676_0_buy]" tyep="text"> <a
											class="goodsNumPlus" href="#"> <span
											class="icon-common icon-common-add"></span>
										</a>
									</div>
								</span> <span class="col col4"> <em>139元</em>
								</span>
							</div>
							<ul>
								<li class="del "><a id="1676_0_buy"
									class="delGoodsTrigger icon-common icon-common-close"
									title="删除" href="/cart/delete/id/1676_0_buy" data-msg="确定删除吗？"></a>
								</li>
								<li>编号：1676</li>
								<li class="goods-desc-list clearfix"><span>适配机型：</span> <span>
										全部小米手机 </span></li>
							</ul>
						</div>
					</dd>
				</dl>









				<div class="shop-cart-count">
					<div class="shop-cart-add"></div>
					<div class="shop-cart-total">
						<p class="total-price">
							总计： <span> <strong>139</strong> 元
							</span>
						</p>
					</div>
				</div>




				<div class="shop-cart-btns clearfix">
					<a class="btn btn-dakeLight btn-to-shop"
						href="http://www.xiaomi.com/accessories"
						onclick="_gaq.push(['_trackEvent', '购物车', 'A1', '继续购物']);">继续购物</a>
					<a class="btn btn-primary btn-to-checkout" data-rel="/buy/checkout"
						data-needlogin="true" href="/buy/checkout"
						onclick="_gaq.push(['_trackEvent', '购物车', 'A1', '去结账']);">去结账</a>
				</div>
			</div>


		</div>
		
		
		
	</div>
</div>