<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet"
	href="<c:url value="/resources/web/css/join.css"/>" media="screen" />
	
	
	
	
	
	
	
	
	
	
	
	<div class="container">
			<div class="container-fluid">
				<div id='wrapper'>
					<div id='header'>
						<div id='top'>
							<span> </span>
							<a class='name1' href='#'>${store.storeName}</a>
						</div>
					</div>
					<div class='clear'></div>

					<div id='main'>
						<div id='main-left'>
								<!--焦点图start-->
								
							<div id="DB_gallery">

							<div class="DB_imgSet">

								<div class="DB_imgWin"><a href='article.html'><img src="../resources/web/images/img/img1.jpg" alt=""/></a>
								</div>

								<div class="DB_page">
									<span class="DB_current">0</span>-<span class="DB_total">0</span>
								</div>

								<div class="DB_prevBtn"><img src="../resources/web/images/img/prev_off.png" alt="jquery相册"/>
								</div>

								<div class="DB_nextBtn"><img src="../resources/web/images/img/next_off.png" alt="图片相册"/>
								</div>

							</div>

							<div class="DB_thumSet">

								<ul class="DB_thumMove">

									<li>
									<a href="../resources/web/images/img/thum1.jpg">
										<img src="../resources/web/images/img/thum1.jpg" alt="图片相册"/>
									</a>
									</li>

									<li>
									    <a href="../resources/web/images/img/thum2.jpg">
										<img src="../resources/web/images/img/thum2.jpg" alt="jquery相册"/>
										</a>
									</li>

									<li> 
									   <a href="../resources/web/images/img/thum3.jpg">
										  <img src="../resources/web/images/img/thum3.jpg" alt="图片相册"/>
										</a>
									</li>

									<li>
									<a href="../resources/web/images/img/thum4.jpg">
										<img src="../resources/web/images/img/thum4.jpg" alt="jquery相册"/>
									</a>
									</li>

									<li>
									<a href="../resources/web/images/img/thum5.jpg">
										<img src="../resources/web/images/img/thum5.jpg" alt="图片相册"/>
									</a>
									</li>

									<li>
									<a href="../resources/web/images/img/thum6.jpg">
										<img src="../resources/web/images/img/thum6.jpg" alt="http://www.kaiwo123.com/"/>
									</a>
									</li>

									<li>
									<a href="../resources/web/images/img/thum1.jpg">
										<img src="../resources/web/images/img/thum1.jpg" alt="jquery相册"/>
									</a>
									</li>

									
								</ul>

								<div class="DB_thumLine"></div>

								<div class="DB_prevPageBtn"><img src="../resources/web/images/img/prev_page.png" alt="上一页"/>
								</div>

								<div class="DB_nextPageBtn"><img src="../resources/web/images/img/next_page.png" alt="下一页"/>
								</div>

							</div>

						</div>
								
								<!--焦点图end-->
							<div id='jieshao'>
								<p class='p1'>${store.description}</p>
							</div>
							<div class='clear'></div>
							<div id='liuyan'>
								<h2>留下你的印记</h2>
								<form id="__form_comment" action="/dispose.php?action=item_comment_add" method="post">
									<textarea id="comment_content"> </textarea>
									<input type="hidden" name="item_id" value="165391">
									<input type="hidden" name="item_type" value="1">
									<input type="hidden" name="col_id" value="">
									<br/>
									<br/>
									<input type="submit" id="comment-issue" class="btn btn-primary" value="发表">
								</form>
							</div>
							<div class="clear"></div>
						</div>

						<div id='main-right'>
							<div id='activities'>
								<h3>【表坊】疯狂喜剧《绝不付帐》（华少、万芳主演）</h3>
								<ul id='activities-ul'>
									<c:if test="${storeKind==2 }">
										<li>时间：<span>${store.startTime}~${store.endTime}</span></li>
										<li>地点：<span>${store.location}</span></li>
									</c:if>
									<li>
										费用：<span>免费</span>
									</li>
									<li>
										类型：<span>鉴宝</span>
									</li>
									<li>
										内容：<span>专家亲自为你鉴宝</span>
									</li>
									<c:if test="${storeKind==2 }">
							<li>最多人数：<span>${store.maxEnterCount}</span></li>
							</c:if>
							<li>电话：<span>${store.telephone}</span></li>
									<c:if test="${storeKind==2 }">
									  <li>
									       举办方：<span>${store.organizer}</span>
									</li>
									</c:if>

								</ul>
							</div>
							<div id='button'>
								<a class='a1' href='#'>参加</a>
								<a class='a2' href='#'>关注</a>
							</div>
							<div class="clear"></div>
							<!-- 
							其它：
							<div class="item">
								<a href="#" class="f14 black"> <p class="l"><img src='../resources/web/images/photo.jpg'></p> <p class="s"><img src='../resources/web/images/photo.jpg'></p> <p class="s"><img src='../resources/web/images/photo.jpg'></p> </a>
								<div class="clear"></div>
								<p class="name">
									<a href="#" class="f14 black">我的其它宝贝</a>
								</p>
							</div>
							 -->

						</div>

					</div>
				</div>
			</div>
		</div>
	
	
	
	
	
<script type="text/javascript" src="<c:url value="/resources/web/js/json2.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/web/js/jquery.DB_gallery.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/web/js/joon.js"/>"></script>