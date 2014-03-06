<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/member-common.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/member/home.css"/>" />

<!-- main container -->
<div class="container breadcrumbs">
	<a href="/index.php">首页</a> <span class="separator">></span> <span>鉴宝专家详情</span>
</div>
<div class="container">
	<div class="row">

		<!-- 这里写你们的内容 -->
		<div class="uhbody-container">
			<div id="container">
				<div class="uh-left">
					<a href="#" id='tx'><img class="uh-face"
						src="<c:url value='${professorDetail.photo}'/>" /></a>
					<p class="uh-nick">
						<a href="#" id='mz'>${professorDetail.nickName}</a>
					</p>
					<p class="uh-location"></p>
					<div class="uh-acts"></div>
					<ul class="uh-stat">
						<li class="border"><a href="#"><var class='var1'>${professorDetail.followCount}</var><span>关注</span></a>
						</li>
						<li class="border"><a href="#"><var class='var2'>${professorDetail.identifiedCount}</var><span>已经鉴定</span></a>
						</li>
						<li><a href="#"><var class='var3'>${professorDetail.identifyingCount}</var><span>鉴定中排队</span></a>
						</li>
					</ul>
					<ul class="uh-menu">
						<li class="active"><a href="#">专家主页</a></li>
						<!-- 
								<li>
									<a href="#">画册 <span>0</span></a>
								</li>
								<li>
									<a href="#">收藏 <span>0</span></a>
								</li>
								 -->
					</ul>
				</div>
				<div id='ye'>
					<!--主页-->
					<div id='home'>
						<div class="uh-body">
							<div class="right">
								<div class="sec-title" id='h'>
									<p>专家简介</p>
								</div>
								<div class="jump">
									<a name="about"></a>

									<div class="introAbout" id="zhcontent">
										<h1>${professorDetail.name}</h1>
										<div class="introInfo">
											<div class="introPic">
												<div class="pic">
													<span><img src="<c:url value='${professorDetail.photo}'/>" border="0" height="300"
														width="242" alt="335x415"></span>
												</div>
												<div class="artInfo">
													<p class="clearfix"></p>
													<form name="Formweb" enctype="multipart/form-data"
														action="" id="Formweb" method="get" target="_blank"></form>
													<p></p>
												</div>
											</div>

											<div class="introTxt">
												<div id='introduction'>${professorDetail.introduce}</div>
												<div class="artInfo"></div>
											</div>

										</div>
									</div>

								</div>
<!--  
								<div class="jump">
									<a name="style"></a>
									<h2>艺术风格</h2>
									<div class="introDetail" id='style'></div>
								</div>
								<div class="jump">
									<a name="galley"></a>
									<h2>代理画廊</h2>
									<div class="introDetail" id='store'></div>

								</div>
								<div class="jump">
									<a name="award"></a>
									<h2>获奖</h2>
									<div class="introAward" id='award'></div>
								</div>
								<div class="jump">
									<a name="renge"></a>
									<h2>润格</h2>
									<div class="introDetail" id='runGe'></div>
								</div>
	 -->
							</div>
							<div class='clear'></div>
				<!-- 
							<div class="sec-title" id='h'>
								<p>
									画册&nbsp;&nbsp;<span>0</span>
								</p>
							</div>
							<div class="pin_cols">
								<div class="item">
									<a href="#" class="f14 black">
										<p class="l"></p>
										<p class="s"></p>
										<p class="s"></p>
									</a>
									<div class="clear"></div>
									<p class="name">
										<a href="#" class="f14 black">我的新家要这样装修</a>
									</p>
									<div class="col_stat">
										<i class="icon-picture"> </i><span>0</span> <i
											class="icon-eye-open"> </i><span>0</span>
									</div>
								</div>
								<div class="item">
									<a href="#" class="f14 black">
										<p class="l"></p>
										<p class="s"></p>
										<p class="s"></p>
									</a>
									<div class="clear"></div>
									<p class="name">
										<a href="#" class="f14 black" title="我喜欢的">我喜欢的</a>
									</p>
									<div class="col_stat">
										<i class="icon-picture"> </i><span>0</span> <i
											class="icon-eye-open"> </i><span>0</span>
									</div>
									<div class="action" id="col_action_24983"></div>
								</div>
							</div>
							<div class="clear"></div>
							<div class="sec-title" id='s'>
								<p>
									刚刚收集的灵感&nbsp;&nbsp;<span>0</span>
								</p>
							</div>
							<div id="colsContainer">

								<div class="photo_pin">
									<div class="pin_pic photo-img" id='pic'>
										<a href="#"><img
											src="../../resources/web/images/home/pjt-diary.png" /></a>
									</div>

									<div id='shopping'>
										<p>
											还没有收集到喜欢的家居灵感图片和宝贝吗？<a href="#" class="underline">快去逛逛吧……</a>
										</p>
									</div>
								</div>
							</div>
						 -->
							<div class="clear"></div>
						</div>
					</div>
					<!--画册
					<div id='huace'>
						<div class="uh-body">
							<div class="sec-title">
								<p>
									画册&nbsp;&nbsp;<span>0</span>
								</p>
							</div>
							<div class="pin_cols">
								<div class="item">
									<a href="#" class="f14 black">
										<p class="l"></p>
										<p class="s"></p>
										<p class="s"></p>
									</a>
									<div class="clear"></div>
									<p class="name">
										<a href="#" class="f14 black">我的新家要这样装修</a>
									</p>
									<div class="col_stat">
										<i class="icon-picture"> </i><span>0</span> <i
											class="icon-eye-open"> </i><span>0</span>
									</div>
								</div>
								<div class="item">
									<a href="#" class="f14 black">
										<p class="l"></p>
										<p class="s"></p>
										<p class="s"></p>
									</a>
									<div class="clear"></div>

									<p class="name">
										<a href="#" class="f14 black" title="我喜欢的">我喜欢的</a>
									</p>
									<div class="col_stat">
										<i class="icon-picture"> </i><span>0</span> <i
											class="icon-eye-open"> </i><span>0</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					 -->
					<!--搜藏
					<div id='shouji'>
						<div class="uh-body">
							<p>
								收藏&nbsp;&nbsp;<span>0</span>
							</p>
						</div>
						<div id="colsContainer">

							<div class="photo_pin">
								<div class="pin_pic photo-img" id='pic'>
									<a href="#"><img
										src="../../resources/web/images/home/pjt-diary.png" /></a>
								</div>
							</div>
						</div>
						<div class="clear"></div>

					</div>
					-->
					
				</div>

				<div id='gu'>
					<!--关注
					<div id='guanzhu'>
						<div class="uh-body">
							<div class="sec-title">
								<p>
									关注&nbsp;&nbsp;<span>0</span>
								</p>
							</div>
							<div class="uh-followers">
								<div id="follower_12314801" class="item">
									<a class='z' href="#"><img class="fl-face"
										src="../../resources/web/images/home/ecd3b6a0fa7918fd8d270bfeef8bfefe_150.jpg" /></a>
									<p class="fl-nick">
										<a href="#" id='name' class="black f14"> </a>
									</p>
									<div class="fl-act">
										<a id="btn_follow_12314801" class="span" href="#">已关注</a>
									</div>
									<div class="fl-info">
										<p>
											<a class="gray" href="#"><b>0</b> 收集</a>&nbsp;&nbsp; <a
												class="gray" href="#"><b>0</b> 画册</a>
										</p>
									</div>
									<div class="fl-photos">
										<a id='a1' href="#"><img
											src="../../resources/web/images/home/ecd3b6a0fa7918fd8d270bfeef8bfefe_150.jpg" /></a>
										<a id='a2' href="#"><img
											src="../../resources/web/images/home/ecd3b6a0fa7918fd8d270bfeef8bfefe_150.jpg" /></a>
										<a id='a3' href="#"><img
											src="../../resources/web/images/home/ecd3b6a0fa7918fd8d270bfeef8bfefe_150.jpg" /></a>

									</div>
								</div>
							</div>
						</div>

					</div>
					-->
					<!--粉丝
					<div id='fensi'>
						<div class="uh-body">
							<div class="sec-title">
								<p>
									粉丝&nbsp;&nbsp;<span>0</span>
								</p>
							</div>
							<div class="uh-followers">
								<div id="follower_12314801" class="item">
									<a class='z' href="#"><img class="fl-face"
										src="../../resources/web/images/home/ecd3b6a0fa7918fd8d270bfeef8bfefe_150.jpg" /></a>
									<p class="fl-nick">
										<a href="#" class="black f14"> </a>
									</p>
									<div class="fl-act">
										<a id="btn_follow_12314801" class="span" href="#">关注我的</a>
									</div>
									<div class="fl-info">
										<p>
											<a class="gray" href="#"><b>0</b> 收集</a>&nbsp;&nbsp; <a
												class="gray" href="#"><b>0</b> 画册</a>
										</p>
									</div>
									<div class="fl-photos">
										<a id='a1' href="#"><img
											src="../../resources/web/images/home/ecd3b6a0fa7918fd8d270bfeef8bfefe_150.jpg" /></a>
										<a id='a2' href="#"><img
											src="../../resources/web/images/home/ecd3b6a0fa7918fd8d270bfeef8bfefe_150.jpg" /></a>
										<a id='a3' href="#"><img
											src="../../resources/web/images/home/ecd3b6a0fa7918fd8d270bfeef8bfefe_150.jpg" /></a>
									</div>
								</div>

							</div>

						</div>
					</div>
					
					end fen-->
					<!--赞
					<div id='zan'>
						<div class="uh-body">
							<div class="sec-title">
								<p>
									赞&nbsp;&nbsp;<span>0</span>
								</p>
							</div>
							<div class="pin_cols">
								<div class="item">
									<a href="#" id='a' class="f14 black">
										<p class="l"></p>
										<p class="s"></p>
										<p class="s"></p>
									</a>
									<div class="clear"></div>
									<p class="name">
										<a href="#" class="f14 black">我的新家要这样装修</a>
									</p>
									<div class="col_stat">
										<i class="icon-picture"> </i><span>0</span> <i
											class="icon-eye-open"> </i><span>0</span>
									</div>
								</div>

							</div>
						</div>

					</div>
					end zan-->
					
				</div>

			</div>
			<div class="clear"></div>
		</div>

	</div>
</div>

