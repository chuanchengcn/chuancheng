<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/news/mbox.$51492.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/news/common.$52144.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/news/pk.$48585.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/news/feed.$51806.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/news/hotTopic.css"/>" />


<!-- end nav-header -->
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
				<div class="w_auto">
					<div class="wrap clearfix">
						<div class="con_menubg">
							<h2 class="fl"><a href="#" class="c_690">#腊八节#</a></h2>
						</div>
						<!-- Start main内容 -->
						<div class="main">

							<div class="topic_info_w clearfix">
								<div class="clearfix info">

									<img src="../../resources/web/images/photo.jpg" width="120px" class="topic_img">

									<div class="topic_info_right">
										<h3>腊八节</h3>

										<div>
											<span class="c_6">发起人：</span>
											<a class="usercard" userid="2200" href="/2200" title="娱乐头条" target="_blank"> <img width="42" height="42" src="../../resources/web/images/photo.jpg" title="娱乐头条"> </a>
											<span class="c_6">相关饭团：</span>
											<a href="javascript:;" class="simsun_gt">&lt;</a>

											<a href="javascript:;" class="simsun_gt">&gt;</a>
										</div>
										<div class="arrow"></div>
										<div class="tips">
											<strong class="c_6">3</strong><span class="c_9">人参与</span>

										</div>
									</div>
								</div>
								<p>
									腊八喝上一碗香甜可口的腊八粥，预示着来年的日子平平安安、红红火火。 今天你喝了吗？
								</p>
							</div>

							<!-- Start 话题图片 -->

							<!-- End 话题图片 -->
							<!-- Start 发表内容 -->
							<div class="main_post clearfix" id="contentPublisher">
								<form  method="post" name="contentPublisherForm" id="contentPublisherForm" enctype="multipart/form-data">
									<!--隐藏域 privacy是公开还是私密，默认公开-->
									<input type="hidden" name="privacy" value="all">
									<input type="hidden" name="videourl" id="videourl" value="">
									<input type="hidden" name="ignore" id="ignore" value="">
									<input type="hidden" name="shorturl" id="shorturl" value="">

									<div class="area_label">

										<span class="fr c_9" name="tipNormal">还可以输入<em>136</em>字</span>
									</div>
									<div class="com_area_box">
										<textarea name="content" class="com_area f14" placeholder="#仙后才艺大赛决赛进行中，赶快来占座吧！">#腊八节#</textarea>										


										<div class="com_area_suc fb14 c_690" id="postSuccess">
											<em class="ico_area_suc"></em> 评论发表成功！
										</div>
									</div>

									<div class="insert clearfix" name="insert">
										
										<!-- 激活状态样式 insert_but -->
										<button class="btn btn-large btn-orange" id='input' type="button">发 表</button>
										
																			</div>
								</form>
								<div class="insert_down_box" name="insertDown">
									<!-- 插入下拉菜单 -->
									<div class="insert_down insert_down_face" name="insertFaceDown">
										表情位置
									</div>
									<div class="insert_down insert_down_pic" name="uploadPicDown" style="display:none">
										<ul>
											<li>
												<a href="javascript:;" title="关闭" class="ico_balls_del" name="close">关闭</a>
												<span class="c_6">选择单张或多张图片上传</span>

												<form method="post" enctype="multipart/form-data" name="picform" target="uploadpic_frame">
													<div name="upload" class="ico_add_but_box">
														<input type="hidden" name="cmd">
														<input type="hidden" name="redirect">
														<a href="javascript:;" class="fl ico_add_but" id="addOnePicBtn">添加单张图片
														<input name="srcImg" type="file" accept="image/*">
														</a>
														<a href="javascript:;" class="ico_add_but ico_add_but_addstyle fr" id="addMorePicBtn">添加多张图片</a>
													</div>
													<div name="uploading" class="ico_add_but_box" style="display: none;text-indent:0">
														<span class="loading_new">正在上传...</span>
													</div>
												</form>
												<span class="c_996">支持上传单张5M以下的gif、jpg、png文件</span>
											</li>
											<li class="insert_pic_preview" style="display:none;">
												<a class="ico_balls_del" name="close" title="关闭" href="javascript:;">关闭</a>
												<img src="../../resources/web/images/photo.jpg">

												<p></p>
											</li>
										</ul>
										<iframe id="uploadpic_frame" name="uploadpic_frame" style="display: none;"></iframe>
									</div>

									<div class="insert_down insert_down_video" name="uploadVideoDown" style="display:none">
										<ul>
											<li class="insert_video">
												<h5><a href="javascript:;" title="关闭" class="fr ico_balls_del" name="close">关闭</a>在线视频</h5>

												<div class="sd_input clearfix">
													<input type="text" class="sd_input_text" value="" placeholder="输入MV、悦单播放页地址">
													<button class="sd_add_button">
														确定
													</button>
												</div>
												<div name="loading" class="ico_add_but_box" style="display: none;text-indent:0;margin:10px auto;">
													<span class="loading_new">正在查询...</span>
												</div>
												<div name="msg" class="msg">
													目前暂时只支持音悦台视频链接，请直接粘贴视频播放页地址即可！
												</div>
											</li>
											<li class="insert_pic_preview" style="display:none;">
												<a href="javascript:;" title="关闭" class="fr ico_balls_del" name="close">关闭</a>

												<p>
													<span name="videoName">未知</span><a href="javascript:;" title="删除" class="del_pic">删除</a>
												</p>
												<img src="../../resources/web/images/photo.jpg">
											</li>
										</ul>
									</div>
								</div>
							</div>
							<!-- End 发表内容 -->

							<div class="topic_main_box">
								<h4 class="f14"><strong class="c_6">相关广播</strong></h4>
							</div>
							<div id="related_feeds" class="feed_list clearfix" style="margin-top: 0">
								<ul>
									<li class="feed_area clearfix" node="feed_list_item" fid="28689773">
										<div class="avatar">
											<a target="_blank" title="娱乐头条" href="/2200" class="usercard" userid="2200"> <img title="娱乐头条" src="../../resources/web/images/photo.jpg" width="40" height="40"> </a>
										</div>
										<div class="feed_info">
											<div class="feed_title">
												<a href="#" class="fb special    usercard" title="娱乐头条" target="_blank" userid="2200">娱乐头条</a><em class="c_9">：</em><span name="message"><a class="special" href="/t?k=%e8%85%8a%e5%85%ab%e8%8a%82">#腊八节#</a> 腊八是古代欢庆丰收、感谢祖先和神灵（包括门神、户神、宅神、灶神、井神）的祭祀仪式，因在十二月举行，故称该月为腊月，称腊祭这一天为腊日。俗话说腊七腊八，冻掉下巴，在这一天喝上一碗香甜可口的腊八粥，预示着来年的日子平平安安、红红火火。 今天你喝了吗？</span>
											</div>
											<ul class="feed_list_prev" node="feed_list_prev">
												<li class="feed_img_list">
													<a action-type="img_zoom_out" href="#" target="_blank"> <img src="../../resources/web/images/photo.jpg" alt=""> <span class="loading_gif_s" style="display: none"></span> </a>
												</li>
											</ul>
											<div class="feed_expand" node="feed_media_disp" style="display:none;"></div>
											<div class="feed_dinfo_oper clearfix">
												<div class="fl">
													<span class="c_9"> <a class="c_996" href="#">昨天11:32</a> 来自 <a href="#" class="c_996">音悦Tai</a> </span>
												</div>
												<div class="fr">
													<a action-type="forward" href="javascript:;" class="c_6 mr_l25 reply" action-data="28689773,2200,0,0,娱乐头条,,#腊八节# 腊八是古代欢庆丰收、感谢祖先和神灵（包括门神、户神、宅神、灶神、井神）的祭祀仪式，因在十二月举行，故称该月为腊月，称腊祭这一天为腊日。俗话说腊七腊八，冻掉下巴，在这一天喝上一碗香甜可口的腊八粥，预示着来年的日子平平安安、红红火火。 今天你喝了吗？">转发 <em class="c_9 reply">(<span name="totalCopys">12</span>)</em></a><em class="arrow" style="display: none;"></em><a action-type="comment" href="javascript:void(0)" class="c_6 mr_l25 reply" action-data="28689773,2200,0,0">评论 <em class="c_9 reply">(<span name="totalComments">2</span>)</em></a>
													<div class="com_more">
														<a href="javascript:;" class="ico_com_more c_6 reply">更多</a>
														<div class="p_com_name">
															<ul>
																<li>
																	<a href="#" title="详情">详情</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!---  Start 评论 转发内容 -->
										<div style="display: none;" class="feed_comment_box"></div>
										<!---  End 评论 转发内容 -->
									</li>
								</ul>
							</div>

							<h4 class="f14 topic_main_title">大家都在说</h4>

							<div class="feed_list clearfix" id="feedsList" style="margin-top: 0">
								<ul>
									<li class="feed_area clearfix" node="feed_list_item" fid="28709522">
										<div class="avatar">
											<a target="_blank" title="Hi此花妮小姐" href="#" class="usercard" userid="15178786"> <img title="Hi此花妮小姐" src="../../resources/web/images/photo.jpg" width="40" height="40"> </a>
										</div>
										<div class="feed_info">
											<div class="feed_title">
												<a href="#" class="fb special    usercard" title="Hi此花妮小姐" target="_blank" userid="15178786">Hi此花妮小姐</a><em class="c_9">：</em><span name="message"><a class="special" href="#">#<font color="#669900">腊八节</font>#</a> ~ 哇，流口水啦，<img width="24" height="24" src="../../resources/web/images/photo.jpg" title="饿"> 看了这幅图的腊八粥，有感觉啊，流口水了么？腊八节就喝腊八粥，也祝愿音悦网的朋友们，腊八节日快乐啊！呵呵  。。。。。。</span>
											</div>
											<ul class="feed_list_prev" node="feed_list_prev">
												<li class="feed_img_list">
													<a action-type="img_zoom_out" href="#" target="_blank"> <img src="../../resources/web/images/photo.jpg" alt=""> <span class="loading_gif_s" style="display: none"></span> </a>
												</li>
											</ul>
											<div class="feed_expand" node="feed_media_disp" style="display:none;"></div>
											<div class="feed_dinfo_oper clearfix">
												<div class="fl">
													<span class="c_9"> <a class="c_996" href="#">昨天23:27</a> 来自 <a href="#" class="c_996">音悦Tai</a> </span>
												</div>
												<div class="fr">
													<a action-type="forward" href="javascript:;" class="c_6 mr_l25 reply" action-data="28709522,15178786,0,0,Hi此花妮小姐,,#腊八节#  ~ 哇，流口水啦，[饿] 看了这幅图的腊八粥，有感觉啊，流口水了么？腊八节就喝腊八粥，也祝愿音悦网的朋友们，腊八节日快乐啊！呵呵  。。。。。。">转发 <em class="c_9 reply">(<span name="totalCopys">0</span>)</em></a><em class="arrow" style="display: none;"></em><a action-type="comment" href="javascript:void(0)" class="c_6 mr_l25 reply" action-data="28709522,15178786,0,0">评论 <em class="c_9 reply">(<span name="totalComments">0</span>)</em></a>
													<div class="com_more">
														<a href="javascript:;" class="ico_com_more c_6 reply">更多</a>
														<div class="p_com_name">
															<ul>
																<li>
																	<a href="#" title="详情">详情</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!---  Start 评论 转发内容 -->
										<div style="display: none;" class="feed_comment_box"></div>
										<!---  End 评论 转发内容 -->
									</li>
									<li class="feed_area clearfix" node="feed_list_item" fid="28691314">
										<div class="avatar">
											<a target="_blank" title="本尊" href="#" class="usercard" userid="20958232"> <img title="本尊" src="../../resources/web/images/photo.jpg" width="40" height="40"> </a>
										</div>
										<div class="feed_info">
											<div class="feed_title">
												<a href="#" class="fb special    usercard" title="本尊" target="_blank" userid="20958232">本尊</a><em class="c_9">：</em><span name="message"><a class="special" href="/t?k=%e8%85%8a%e5%85%ab%e8%8a%82">#<font color="#669900">腊八节</font>#</a>北齐·魏收——《腊节》
													诗曰:“凝寒迫清祀，有酒宴嘉平。宿心何所道，藉此慰中情。”写出了寒凝大地、数九隆冬时节，人们在桌上摆上肉酒以祭祀百神，感谢百神的福佑，抒发久已宿居于心中的敬神之情。</span>
											</div>
											<ul class="feed_list_prev" node="feed_list_prev">
												<li class="feed_img_list">
													<a action-type="img_zoom_out" href="#" target="_blank"> <img src="../../resources/web/images/photo.jpg" alt=""> <span class="loading_gif_s" style="display: none"></span> </a>
												</li>
											</ul>
											<div class="feed_expand" node="feed_media_disp" style="display:none;"></div>
											<div class="feed_dinfo_oper clearfix">
												<div class="fl">
													<span class="c_9"> <a class="c_996" href="#">昨天13:06</a> 来自 <a href="#" class="c_996">音悦Tai</a> </span>
												</div>
												<div class="fr">
													<a action-type="forward" href="javascript:;" class="c_6 mr_l25 reply" action-data="28691314,20958232,0,0,本尊,,#腊八节#北齐·魏收——《腊节》
													诗曰:“凝寒迫清祀，有酒宴嘉平。宿心何所道，藉此慰中情。”写出了寒凝大地、数九隆冬时节，人们在桌上摆上肉酒以祭祀百神，感谢百神的福佑，抒发久已宿居于心中的敬神之情。">转发 <em class="c_9 reply">(<span name="totalCopys">0</span>)</em></a><em class="arrow" style="display: none;"></em><a action-type="comment" href="javascript:void(0)" class="c_6 mr_l25 reply" action-data="28691314,20958232,0,0">评论 <em class="c_9 reply">(<span name="totalComments">0</span>)</em></a>
													<div class="com_more">
														<a href="javascript:;" class="ico_com_more c_6 reply">更多</a>
														<div class="p_com_name">
															<ul>
																<li>
																	<a href="#" title="详情">详情</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!---  Start 评论 转发内容 -->
										<div style="display: none;" class="feed_comment_box"></div>
										<!---  End 评论 转发内容 -->
									</li>
								</ul>
							</div>
							<!-- Start 广告合作 -->
							<div id="ad_carousel" class="m_focus m_w630">

							</div>
							<div class="tc">
								<span class="no_feed" style="visibility: hidden;">没有更多广播了</span>
							</div>

							<!--普通广播-->
							<textarea id="feedTpl" style="display:none">
</textarea>							


							<div id="report" style="display:none">
								<form name="reportForm">
									<input type="hidden" name="feedId">
									<input type="hidden" name="feedUserId">
									<input type="hidden" name="commentId">
									<input type="hidden" name="commentUserId">
									<input type="hidden" name="reportType" value="">

									<div name="select_area" class="select_area">
										<div name="sel" class="sel" id="sel_mv" selectindex="">
											选择举报类型
										</div>
										<ul class="items" name="item" style="display:none">
											<li name="0">
												时政违规
											</li>
											<li name="1">
												广告违规
											</li>
											<li name="2">
												低俗暴力
											</li>
											<li name="3">
												其他违规内容
											</li>
										</ul>
									</div>
									<p>
										附加描述：
									</p>
									<textarea id="reportDesc" name="reportDesc"></textarea>									


									<p class="import">
										<a>要求5-500个字，您还可以输入<span name="supportMvLength">500</span>字</a>
									</p>
									<input type="submit" class="btn" value="我要举报" id="support_btn">

									<p class="contact">
										若您还有其他的意见或建议，请联系<a href="#">管理员</a>
									</p>
								</form>
							</div>
							<div id="inform" class="inform" style="display:none">
								<div class="inform_div">
									<p>
										您的举报信息已收到，我们会尽快处理。
									</p>

									<p>
										音悦台鼓励以音乐出发的讨论，但不赞赏人身攻击，谩骂等不良行为。
									</p>

									<p>
										一片音乐净土需要你我共建!
									</p>

									<p>
										音悦台感谢你的不间断支持。
									</p>
								</div>
								<a name="clo" class="clo" href="javascript:;">关闭</a>
							</div>
							<div id="inform_mv" class="inform" style="display:none">
								<div class="inform_div">
									<p class="inform_p">
										您的举报已经提交成功，感谢您对音悦台的支持，我们将尽快进行审查。
									</p>
								</div>
								<a name="clo" class="clo" href="javascript:;">关闭</a>
							</div>

							<script type="text/tpl" id="feedCommentTpl" style="display: none">
								<div class="fd_comment">
								<div class="arrow_top"><em class="arrow_top1">◆</em><span class="arrow_top2">◆</span></div>
								<form method="get" style="display:none">
								<div class="com_area_box">
								<div class="avatar"><a target="_blank" href="#">
								<img src="../../resources/web/images/photo.jpg"> </a>
								</div>
								<div class="com_add_comment">
								<textarea name="content" class="g_reply_area" placeholder="添加评论"></textarea>

								<div class="arrow_left"><em class="arrow_left1">◆</em><span class="arrow_left2">◆</span></div>
								</div>

								<div class="insert g_reply_insert clearfix" name="insert">
								<div class="insert_face fl">
								<a href="javascript:;" name="insertFace"><em class="ico_face"></em>表情</a>
								</div>
								<ul class="commoned_list fl">
								<li class="commoned_forward ">
								<div class="checkbox" name="bothRepost"></div>
								同时转发
								</li>

								<li class="commoned_comment">
								<div class="checkbox" name="commentToParent"></div>

								</li>

								</ul>
								<button class="ico_reply_btnnot fr" type="submit" action-type="add-comment" href="javascript:;">
								发 表
								</button>
								<p class="fr c_9 f14 georgia" name="tipNormal"><strong>0</strong>/140</p>

								<div class="insert_down_box" name="insertDown">
								<div class="insert_down insert_down_face" name="insertFaceDown" style="display:none">
								表情位置
								</div>
								</div>
								<input type="hidden" name="repliedId" />
								</div>
								</div>

								</form>
								</div>
							</script>
							<script type="text/tpl" id="commentListTpl">
								<div class="commentlist">
								<ul>

								<li>
								<div class="avatar">
								<a href="#" target="_blank" class="usercard" >
								<img src="../../resources/web/images/photo.jpg">
								</a>
								</div>
								<div class="content{@if comments&&index==comments.length-1} last{@/if}">
								<p class="content_info">

								</p>

								<div class="content_oper">

								</div>

								</div>

								</li>

								</div>
							</script>
							<script type="text/tpl" id="feedCommentItemTpl">

								<li>
								<div class="avatar">
								<a href="#" target="_blank" class="usercard">
								<img src="../../resources/web/images/photo.jpg">
								</a>
								</div>
								<div class="content{@if comments&&index==comments.length-1} last{@/if}">
								<p class="content_info">

								</p>

								<div class="content_oper">

								</div>

								</div>

								</li>

							</script>
							<script type="text/tpl" id="feedForwardTpl">
								<div class="fd_comment">
								<div class="arrow_top" style="left:480px;"><em class="arrow_top1">◆</em><span class="arrow_top2">◆</span></div>
								<form method="get" style="display:none">
								<div class="com_area_box">
								<p class="com_empty">转发原文，把它分享给你的听众，顺便说两句:
								</p>

								<div class="avatar"><a target="_blank" href="#">
								<img src="../../resources/web/images/photo.jpg"> </a>
								</div>
								<div class="com_add_comment">
								<textarea name="content" class="g_reply_area" placeholder="请输入转发理由"></textarea>

								<div class="arrow_left"><em class="arrow_left1">◆</em><span class="arrow_left2">◆</span></div>
								</div>

								<div class="insert g_reply_insert clearfix" name="insert">
								<div class="insert_face fl">
								<a href="javascript:;" name="insertFace"><em class="ico_face"></em>表情</a>
								</div>
								<ul class="commoned_list fl">
								<li class="commoned_comment">
								<div class="checkbox" name="commentToPost"></div>

								</li>

								<li class="commoned_comment">
								<div class="checkbox" name="commentToParent"></div>

								</li>

								</ul>
								<button class="ico_reply_btn fr" type="submit" action-type="add-forward" href="javascript:void(0)" action-data="{{feedId}},{{ownerId}},{{parentId}},{{parentUserId}}">
								转 发
								</button>
								<p class="fr c_9 f14 georgia" name="tipNormal"><strong>0</strong>/140</p>

								<div class="insert_down_box" name="insertDown">
								<div class="insert_down insert_down_face" name="insertFaceDown" style="display:none">
								表情位置
								</div>
								</div>
								</div>
								</div>
								</form>
								</div>
							</script>

							<div id="feedPage" class="pagetype" style="display: block; margin-top: 10px;">
								<div id="pageNav" class="page-nav" style="margin-top:0;margin-right:20px;float:right;">

									<a id="feedPageNext" class="nextpage" href="#" style="display: none;">下一页</a>
								</div>
							</div>
						</div>
						<!-- End main内容 -->
						<div class="side">
							<!-- Start 话题人物 -->

							<div class="interper">
								<h3 class="interper_h3"><em class="fl fb14 c_6 ">话题人物</em></h3>
								<ul class="interper_att balls">

									<li class="show_detail">
										<div class="interper_user">
											<div class="avatar">
												<a target="_blank" href="#"> <img class="usercard" width="40" height="40" userid="2200" src="../../resources/web/images/photo.jpg"> </a>
											</div>
											<h4 class="interper_h4"><a class="special fl usercard" userid="2200" title="娱乐头条" href="#">娱乐头条</a></h4>

											<a href="javascript:;" title="关注Ta" style="float: left;" class="ico_att_but" node="follow" data-id="2200">关注Ta</a>

										</div>
										<span class="c_9">最近TA在站内很火</span>
									</li>

								</ul>
							</div>

							<!-- Start 相关视频 -->
							<div class="interper" id="videos" style="display: none;">
								<h3 class="interper_h3"><em class="fl fb14 c_6 ">话题MV</em></h3>

								<div class="pk_videos"></div>
							</div>
							<!-- Start 热门话题 -->

							<!-- Start 热门话题 -->

							<div class="interper sd_popular">
								<h3 class="interper_h3"><em class="fl fb14 c_6 ">热门话题：</em></h3>
								<ul class="list">
									<ul>
										<li>
											<a class="info" target="_blank" href="#">音悦台让红包飞</a>
										</li>
									</ul>

									<li>
										<a href="#" class="info" title="">2014我们在路上</a>

									</li>

									<li>
										<a href="#" class="info" title="">素颜大比拼</a>

									</li>

									<li>
										<a href="#" class="info" title="">腊八节</a>

									</li>

									<li>
										<a href="#" class="info" title="">好肉体酒窝大赛</a>

									</li>

									<li>
										<a href="#" class="info" title="">证件照大比拼</a>

									</li>

									<li>
										<a href="#" class="info" title="">卧蚕帅哥大赛</a>

									</li>

								</ul>
							</div>

							<!-- End 热门话题 -->

							<!-- Start 广告合作 -->

							<!-- End 广告合作 -->
							<!-- Start 广告合作 -->

							<!-- End 广告合作 -->

						</div>
						<!-- Edn 右列 -->
					</div>
				</div>

			</div>
		</div>