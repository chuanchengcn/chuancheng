<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/news/information.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/news/area.css"/>" />

<!-- 你们的代码  start-->
		<div class="container">
			<div class="container-fluid">
				<div id='background_ul'>
					<div id='secondary_nav'>
						<h1>鉴宝资讯</h1>
						<div>
							<ul id='secondary_navUl'>
								<li>
									<a href='index.jsp'>资讯首页</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href='area.jsp'>首都</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href='area.jsp'>天津</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href='feature.jsp'>专题</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class='clear'></div>
				<div class="wrap information">
					<!-- Start 左列列 -->
					<div class="news-main">
						<!-- Start 焦点图 -->

						<div id="DB_gallery">

							<div class="DB_imgSet">

								<div class="DB_imgWin"><a href='article.html'><img src="../../resources/web/images/img/img1.jpg" alt=""/></a>
								</div>

								<div class="DB_page">
									<span class="DB_current">0</span>-<span class="DB_total">0</span>
								</div>

								<div class="DB_prevBtn"><img src="../../resources/web/images/img/prev_off.png" alt="jquery相册"/>
								</div>

								<div class="DB_nextBtn"><img src="../../resources/web/images/img/next_off.png" alt="图片相册"/>
								</div>

							</div>

							<div class="DB_thumSet">

								<ul class="DB_thumMove">

									<li>
										<img src="../../resources/web/images/img/thum1.jpg" alt="图片相册"/>
									</li>

									<li>
										<img src="../../resources/web/images/img/thum2.jpg" alt="jquery相册"/>
									</li>

									<li>
										<img src="../../resources/web/images/img/thum3.jpg" alt="图片相册"/>
									</li>

									<li>
										<img src="../../resources/web/images/img/thum4.jpg" alt="jquery相册"/>
									</li>

									<li>
										<img src="../../resources/web/images/img/thum5.jpg" alt="图片相册"/>
									</li>

									<li>
										<img src="../../resources/web/images/img/thum6.jpg" alt="http://www.kaiwo123.com/"/>
									</li>

									<li>
										<img src="../../resources/web/images/img/thum1.jpg" alt="jquery相册"/>
									</li>

									<li>
										<img src="../../resources/web/images/img/thum2.jpg" alt=""/>
									</li>

									<li>
										<img src="../../resources/web/images/img/thum3.jpg" alt=""/>
									</li>

									<li>
										<img src="../../resources/web/images/img/thum4.jpg" alt=""/>
									</li>

									<li>
										<img src="../../resources/web/images/img/thum5.jpg" alt="网页特效"/>
									</li>

									<li>
										<img src="../../resources/web/images/img/thum6.jpg" alt=""/>
									</li>

								</ul>

								<div class="DB_thumLine"></div>

								<div class="DB_prevPageBtn"><img src="../../resources/web/images/img/prev_page.png" alt="上一页"/>
								</div>

								<div class="DB_nextPageBtn"><img src="../../resources/web/images/img/next_page.png" alt="下一页"/>
								</div>

							</div>

						</div>

						<!-- End 焦点图 -->
						<!-- Start 资讯列表 -->
						<div class="in_region_list">
							<ul>

								<li class="list">
									<div class="region">
										<h3 class="fl">北京</h3>
										<a href="area.jsp" class=" fr more">更多&gt;&gt;</a>
									</div>
									<a href="article.html" class='pic'> <img src="../../resources/web/images/photo.jpg"> </a>
									<h4><a class="title" href="#"> 丹阳大厦 </a></h4>
									<ol class="info" id='beijing'>
										
										</ol>

									<span class="bg"> </span>
								</li>

								<li class="list">
									<div class="region">
										<h3 class="fl">天津</h3>
										<a href="area.jsp" class=" fr more">更多&gt;&gt;</a>
									</div>
									<a href="article.html" class="pic"> <img src="../../resources/web/images/photo.jpg"> </a>
									<h4><a class="title" href="#"> 北京博隆鸿浩国际文化传媒有限公司 </a></h4>
									<ol class="info" id='tianjin'>

										

									</ol>

									<span class="bg"> </span>
								</li>

							</ul>
						</div>
						<!-- End 资讯列表 -->
					</div>
					<!-- End 左列 -->
					<!-- Start 右列 -->
					<div class="news-side">
						<div class="side_box">
							<!-- Start 热点排行 -->
							<div class="in_tophot">
								<div class="in_sd_title">
									<h3 class="ico_in_tophot">热点排行</h3>
									<span class="in_line"> </span>
								</div>
								<ul class="in_info_list">

									<li class="hover">
										<span class="in_point">•</span>
										<a href="article.html" class="list">北京博隆鸿浩国际文化传媒有限公司</a>

										<div class="info">
											<a href="article.html" class="pic"><img src="../../resources/web/images/photo.jpg"></a>

											<p class="text">
												<a href="article.html">【北京博隆鸿浩国际文化传媒有限公司</a>
											</p>
											<span class="arrow"> </span>
										</div>
									</li>

									<li>
										<span class="in_point">•</span>
										<a href="article.html" class="list">【北京博隆鸿浩国际文化传媒有限公司】</a>

										<div class="info">
											<a href="#" class="pic"><img src="../../resources/web/images/photo.jpg"></a>

											<p class="text">
												<a href="article.html">【北京博隆鸿浩国际文化传媒有限公司】</a>
											</p>
											<span class="arrow"> </span>
										</div>
									</li>

									<li>
										<span class="in_point">•</span>
										<a href="#" class="list">【北京博隆鸿浩国际文化传媒有限公司</a>

										<div class="info">
											<a href="#" class="pic"><img src="../../resources/web/images/photo.jpg"></a>

											<p class="text">
												<a href="#" target="_blank">【北京博隆鸿浩国际文化传媒有限公司</a>
											</p>
											<span class="arrow"> </span>
										</div>
									</li>

									<li>
										<span class="in_point">•</span>
										<a href="#" class="list">【北京博隆鸿浩国际文化传媒有限公司</a>

										<div class="info">
											<a href="#" class="pic"><img src="../../resources/web/images/photo.jpg" ></a>

											<p class="text">
												<a href="#">【北京博隆鸿浩国际文化传媒有限公司</a>
											</p>
											<span class="arrow"> </span>
										</div>
									</li>

									<li>
										<span class="in_point">•</span>
										<a href="#" class="list">【北京博隆鸿浩国际文化传媒有限公司</a>

										<div class="info">
											<a href="#" class="pic"><img src="../../resources/web/images/photo.jpg"></a>

											<p class="text">
												<a href="#">【北京博隆鸿浩国际文化传媒有限公司</a>
											</p>
											<span class="arrow"> </span>
										</div>
									</li>

								</ul>
							</div>
							<!-- End 热点排行 -->
							<!--

							-->
							<!--插入图片-->
							<a href="#" class="in_ad" id='in_ad'> <img src="../../resources/web/images/photo.jpg"> </a>
							<!-- start 热点推荐 -->
							<div class="in_activity mr_t30">
								<div class="in_sd_title">
									<h3 class="f14">热点推荐</h3>
								</div>
								<ul class="in_info_list">

									<li>
										<span class="in_point">•</span>
										<a href="recommendedFocus.html" class="list">【北京博隆鸿浩国际文化传媒有限公司</a>
									</li>

									<li>
										<span class="in_point">•</span>
										<a href="recommendedFocus.html" class="list">【北京博隆鸿浩国际文化传媒有限公司</a>
									</li>

									<li>
										<span class="in_point">•</span>
										<a href="recommendedFocus.html" class="list">【北京博隆鸿浩国际文化传媒有限公司】</a>
									</li>

									<li>
										<span class="in_point">•</span>
										<a href="recommendedFocus.html" class="list">北京博隆鸿浩国际文化传媒有限公司</a>
									</li>

									<li>
										<span class="in_point">•</span>
										<a href="#" class="list">北京博隆鸿浩国际文化传媒有限公司</a>
									</li>

								</ul>
							</div>
							<!-- End 热点推荐 -->
							<!--  -->
							
							<!-- Start 热门话题 -->
							<div class="in_popular mr_t30">
								<div class="in_sd_title">
									<h3 class="f14">热门话题</h3>
								</div>
								<ul class="in_info_list">

									<li>
										<a href="hotTopic.html" class="list">音悦商城正式上线</a>

									</li>

									<li>
										<a href="hotTopic.html" class="list" >圣诞节许愿墙，你想要什么圣诞礼物呢？</a>

									</li>

									<li>
										<a href="hotTopic.html" class="list">好肉体酒窝大赛</a>

									</li>

									<li>
										<a href="hotTopic.html" class="list">证件照大比拼</a>

									</li>

									<li>
										<a href="hotTopic.html" class="list">卧蚕美女大赛</a>

									</li>

								</ul>
								<span class="in_popular_bottom"> </span>
							</div>
							<!-- End 热门话题 -->
							<!-- Start 活跃投稿 -->
							<div class="in_active_contribute mr_t30">
								<div class="in_sd_title">
									<h3 class="f14">活跃投稿</h3>
								</div>
								<ul class="interper_att">

									<li>
										<div class="interper_user">
											<div class="avatar">
												<a href="#"> <img class="usercard" src="../../resources/web/images/photo.jpg"> </a>
											</div>
											<h4 class="interper_h4"><a class="usercard special fl" href="#"> 夏贤 </a></h4>
										</div>
									</li>

									<li>
										<div class="interper_user">
											<div class="avatar">
												<a href="#"> <img class="usercard" src="../../resources/web/images/photo.jpg"> </a>
											</div>
											<h4 class="interper_h4"><a class="usercard special fl" href="../resources/web/images/photo.jpg"> 音悦V榜 </a></h4>
										</div>
									</li>

									<li>
										<div class="interper_user">
											<div class="avatar">
												<a href="#"> <img class="usercard" src="../../resources/web/images/photo.jpg"> </a>
											</div>
											<h4 class="interper_h4"><a class="usercard special fl" href="#"> Cedar丶希 </a></h4>
										</div>
									</li>

									<li>
										<div class="interper_user">
											<div class="avatar">
												<a href="#"> <img class="usercard" src="../../resources/web/images/photo.jpg"> </a>
											</div>
											<h4 class="interper_h4"><a class="usercard special fl" href="#"> 恒定代理公司 </a></h4>
										</div>
									</li>

									<li>
										<div class="interper_user">
											<div class="avatar">
												<a href="#"> <img class="usercard" src="../../resources/web/images/photo.jpg"> </a>
											</div>
											<h4 class="interper_h4"><a class="usercard special fl" href="#"> 琉璃球 </a></h4>
										</div>
									</li>

									<li>
										<div class="interper_user">
											<div class="avatar">
												<a href="#"> <img class="usercard" src="../../resources/web/images/photo.jpg"> </a>
											</div>
											<h4 class="interper_h4"><a class="usercard special fl" href="#"> OneDirection音悦Tai饭团 </a></h4>
										</div>
									</li>

									<li>
										<div class="interper_user">
											<div class="avatar">
												<a href="#"> <img class="usercard" src="../../resources/web/images/photo.jpg"> </a>
											</div>
											<h4 class="interper_h4"><a class="usercard special fl" href="#"> 思念 </a></h4>
										</div>
									</li>

									<li>
										<div class="interper_user">
											<div class="avatar">
												<a href="#"> <img class="usercard" src="../../resources/web/images/photo.jpg"> </a>
											</div>
											<h4 class="interper_h4"><a class="usercard special fl" href="#"> 逍遥羽 </a></h4>
										</div>
									</li>

								</ul>
							</div>
							<!-- End 活动投稿 -->
							<!--

							-->
							<!--广告tu-->
							<a href="Bchart.html" class="in_ad" > <img src="../../resources/web/images/photo.jpg"> </a>

						</div>

					</div>
					<!-- End 右列 -->
					<!-- Start 专题列表 -->
					<div class="in_feature">
						<ul>

							<li>
								<a href="#" class="pic" ><img src="../../resources/web/images/photo.jpg"></a>
								<h4><a href="#" class="title">1分钱开通音悦Tai VIP服务</a></h4>

								<p class="info">
									音悦台VIP服务新鲜出炉啦~12月25日至1月8日，首次绑定账号，只需要1分钱，即可享受音悦台VIP服务！还等什么，别犹豫啦，快来加入吧！
								</p>
							</li>

							<li>
								<a href="#" class="pic" ><img src="../../resources/web/images/photo.jpg"></a>
								<h4><a href="#" class="title">亚洲巅峰音乐节</a></h4>

								<p class="info">
									2013年秋天，清扬再次展开突破性的品牌动作——携手亚洲最大摇滚音乐节Summer Sonic登陆上海，以“无懈可击亚洲巅峰音乐节”为名席卷魔都....
								</p>
							</li>

							<li>
								<a href="#" class="pic"><img src="../../resources/web/images/photo.jpg"s></a>
								<h4><a href="#" class="title">送福利啦，惊喜好礼免费领取！</a></h4>

								<p class="info">
									音悦台倾情回馈活动上线啦！这次给你的不只有手机话费、签名CD，更有演唱会门票等你来拿…
								</p>
							</li>

							<li>
								<a href="#" class="pic"><img src="../../resources/web/images/photo.jpg"></a>
								<h4><a href="#" class='title'>沃·音悦台客户端</a></h4>

								<p class="info">
									1500万用户都在用的手机音乐神器，打榜更轻松
								</p>
							</li>

						</ul>
					</div>
					<!-- End 专题列表 -->

				</div>
			</div>
		</div>

		<!-- 你们的代码  end -->
<script src="<c:url value="/resources/web/js/news/jquery.DB_gallery.js"/>"></script>
<script src="<c:url value="/resources/web/js/news/information.js"/>"></script>