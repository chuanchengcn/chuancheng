<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-home.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/ganji/pbl.css"/>" />
<div class="span12">
	<div class="xm-box uc-box">

		<div class="hd">
			<h3 class="title">订单号：1140117298001875</h3>
			<p class="tip">
				<span class="separator">|</span> 由于数据同步可能带来订单信息及订单状态显示滞后，请稍等一会儿。
			</p>
		</div>
		<div class="bd">
			<!--瀑布流 start-->
			<div class="pbl_container">
				<div class="pblCon">
					<div class="demo clearfix">
						<div class="item_list infinite_scroll">
							<c:if test="${treasures!= null}">
								<c:forEach var="treasure" varStatus="status"
									items="${treasures}">
									<div class="item masonry_brick">
										<div class="item_t">
											<div class="img">
												<a href="#" target="_blank"><img alt="谷歌风格扁平化图标PSD素材"
													src="../../resources/web/testimage/9.jpg" /></a>
												<div class="btns">
													<a href="#" data-id="1092"
														class="Button2 Button11 WhiteButton ContrastButton  repin_link  notlogin">
														<em></em>点赞<span class="num">(${treasure.visitCount})</span>
													</a>
													<div class="f-r">
														<a href="#" data-id="1092"
															class="Button2 Button11 WhiteButton ContrastButton likebuttonnotlogin">
															<em></em><span class="text">收藏</span><span class="num">(${treasure.followCount})</span>
														</a>
													</div>
												</div>
											</div>
											<div class="title">
												<em>T:</em><span><a href="#" target="_blank">${treasure.name}</a></span>
											</div>
										</div>
										<div class="item_b clearfix">
											<div class="items_likes fl">
												<span>标签: <a href="#">${treasure.number}</a> <a
													href="#">${treasure.professorPrice}</a>
												</span>
											</div>
										</div>
									</div>

								</c:forEach>
							</c:if>


						</div>
					</div>
				</div>
			</div>
			<!-- end -->
		</div>
		
	</div>
</div>
