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
									<a href='information.html'>资讯首页</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href='area.html'>首都</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href='area.html'>天津</a>
								</li>
								<li>
									|
								</li>
								<li>
									<a href='special.html'>专题</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class='clear'></div>
				<div class="wrap information">
					<!-- Start 左列列 -->
					<div class="news-main">
						<!-- Start 文章列表 -->
						<div class="in_article">
							<ul>

							</ul>

							<div class="pagetype" id="pagetype">
								<div class="page-nav" id="pageNav">

									<span>1</span>

									<a >2</a>

									<a>3</a>

									<a>4</a>

									<a>5</a>

									<span class="separator">...</span>

									<a href="#" class="nextpage">下一页 &gt;</a>

									

								</div>
							</div>

						</div>
						<!-- End 文章列表 -->

					</div>
					<!-- End 左列 -->
					<!-- Start 右列 -->
					<div class="news-side">
						<div class="side_box">
							<!-- Start 内地排行 -->
							<div class="in_tophot">
								<div class="in_sd_title">

									<h3>内地排行</h3>
									<span class="in_line"> </span>
								</div>
								<ul class="in_info_list">
								
								</ul>
							</div>
							<!-- End 内地排行 -->

							<!--广告改为读取广告系统广告-->

							<!-- start 音悦V榜 -->

							<div class="in_sd_vchart mr_t30">
								<div class="in_sd_title">
									<h3 class="f14 fl">音悦V榜</h3>
									<a href="tuNew.html" class="more fr">更多&gt;&gt;</a>
								</div>
								<div class="info">
									<a href="#" class="pic"> <span><img src="../resources/web/images/photo.jpg"></span> </a>
									<h4 class="title"><a href="#"> 2013年音悦V榜第50期 - 内地篇 </a></h4>

									<p class="text">
										内地V榜四强鼎力的大局已经形成。魏晨霸榜数月......
										<a href="#" class="special" >[详细]</a>
									</p>
								</div>
							</div>

						</div>

					</div>
					<!-- End 右列 -->

				</div>

			</div>
		</div>

		<!-- 你们的代码  end -->
<script src="<c:url value="/resources/web/js/news/area.js"/>"></script>