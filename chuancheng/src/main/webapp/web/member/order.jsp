<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/order.css"/>" />
<!-- main container -->
<div class="container breadcrumbs">
	<a href="/index.php">首页</a> <span class="separator">></span> <span>预约</span>
</div>

<div class="container">
	<div class="container choosephone">
		<div class="up clearfix">
			<div class="info">
				<img src="<c:url value="/resources/web/images/photo.jpg"/>" alt="">
				<strong>王刚</strong>
				<p>古董鉴定专家</p>
				<a class="btn" href="http://order.xiaomi.com/event/buyPhone">重新选择专家</a>
			</div>
			<div id="choosePhone" class="step">
				<ul>
					<li>
						<div class="title clearfix">
							<strong> <label>1</label> 单独预约
							</strong> <a id="btntipversion"> <span
								class="icon-common icon-common-questionBg"></span> 合约版划算么？
							</a>
						</div>
						<dl class="version clearfix">
							<dd class="big selected" xmtype="bz">
								<strong>北京</strong>
								<p>
									传承网 <br> ¥1499
								</p>
							</dd>
							<dd class="big last" xmtype="unicom">
								<strong>天津</strong>
								<p>
									送话费送流量，月话费低至66元 <br> 1599起，最高返还1599元话费
								</p>
							</dd>
						</dl>
					</li>

					<li>
						<div>
							<div class="title clearfix">
								<strong> <label>2</label> 活动预约
								</strong>
							</div>
							<dl class="size clearfix">
								<dd class="big selected" xmtype="m16">
									<strong> 北京国庆专场<em></em>
									</strong>
									<p>配备800万像素相机</p>
								</dd>
							</dl>
						</div>
					</li>
				</ul>
				<div class="mask" style="display: none;"></div>
			</div>
		</div>
		<div class="btm clearfix">
			<a id="btnphone" class="btn btn-primary"
				onclick="_gaq.push(['_trackEvent', '购机流程', 'B', 'http://order.xiaomi.com/event/selectPacket/goodsid/1708'])"
				href="http://order.xiaomi.com/event/selectPacket/goodsid/1708">立即预约</a>
			<p id="btmmsg">下一步：为手机挑选合适的配件方案</p>
		</div>
	</div>
</div>
