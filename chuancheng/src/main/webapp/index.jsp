<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/baofang-index.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/index/index.css"/>" />
<!--  -->
<div class="content-head-ad">
<div class="row-fluid ">
   <div id="myCarousel" class="carousel slide">
                <div class="carousel-inner">
                  <div class="item active">
                    <img src="<c:url value="/resources/web/images/ad/0.jpg"/>" alt="">
                  </div>
                  <div class="item">
                    <img src="<c:url value="/resources/web/images/ad/1.jpg"/>" alt="">
                  </div>
                  <div class="item">
                    <img src="<c:url value="/resources/web/images/ad/2.jpg"/>" alt="">
                  </div>
                  <div class="item">
                    <img src="<c:url value="/resources/web/images/ad/3.jpg"/>" alt="">
                  </div>
                  <div class="item">
                    <img src="<c:url value="/resources/web/images/ad/1.jpg"/>" alt="">
                  </div>
                </div>
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                  <li data-target="#myCarousel" data-slide-to="3"></li>
                  <li data-target="#myCarousel" data-slide-to="4"></li>
                </ol>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
              </div>
</div>
</div>

<div class="container" >
		<div class="container-fluid mt15">
		 <div class="row-fluid flow list" id="nav-box">
			     <h3 class="header">
			         <span class="tab">
			           鉴宝流程
			          <em></em>
			         </span>
			     </h3>
			      
				<div class="flow_box">
					<div class="flow_list fn-clear">
						<div class="item_box cur" onclick="fun(1)" id="item_box1">
							<span id="img_span1"><img
								src="resources/web/images/index/t1.jpg"/></span> 
							<span
								style="display: none;" id="img_span1-1"><img
								src="resources/web/images/index/t2.jpg" /></span>
							<p class="p1">1</p>
							<p class="p2">会员登录</p>
						</div>
						
						
						<div class="item_box" onclick="fun(2)" id="item_box2">
							<span id="img_span2"><img
								src="resources/web/images/index/t1.jpg" /></span> <span
								style="display: none;" id="img_span2-1"><img
								src="resources/web/images/index/t2.jpg" /></span>
							<p class="p1">2</p>
							<p class="p2">选择专家</p>
						</div>

						<div class="item_box " onclick="fun(3)" id="item_box3">
							<span id="img_span3"><img
								src="resources/web/images/index/t1.jpg" /></span> <span
								style="display: none;" id="img_span3-1"><img
								src="resources/web/images/index/t2.jpg" /></span>
							<p class="p1">3</p>
							<p class="p2">邮件提醒</p>
						</div>

						<div class="item_box " onclick="fun(4)" id="item_box4">
							<span id="img_span4"><img
								src="resources/web/images/index/t1.jpg" /></span> <span
								style="display: none;" id="img_span4-1"><img
								src="resources/web/images/index/t2.jpg" /></span>
							<p class="p1">4</p>
							<p class="p2">短信提醒</p>
						</div>

						<div class="item_box " onclick="fun(5)" id="item_box5">
							<span id="img_span5"><img
								src="resources/web/images/index/t1.jpg" /></span> <span
								style="display: none;" id="img_span5-1"><img
								src="resources/web/images/index/t2.jpg" /></span>
							<p class="p1">5</p>
							<p class="p2">宝坊鉴宝</p>
						</div>
					</div>
				</div>
			
			
			    <div id="d1">
					    <div id="d1_div"></div>
					<div class="box">
						<div class="b b1">
							<ul class="lst lst1">
								<li>
									<div class="txt">
										<h3>
											111 <span>11111</span>
										</h3>
										<p class="p3">衣服、鞋子、图书，还有哀家从淘宝上辛苦淘来的各种零零碎碎，都往哪里放？</p>
										<p class="p3">
											友家2.0衣柜全新升级，储物空间提升50%，可以轻松放进一头大象。还为你新添置多层书架，图书、摆件、相框终于可以公然显摆了，谁叫咱是有品味的人!床底下更大推柜，换洗的床单被褥统统收纳；床腿加高，令床底可以放下超大行礼箱！
										</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											品味慢生活 <span>坐下来，享受沙发</span>
										</h3>
										<p class="p3">高节奏的工作，是否让你疲惫？</p>
										<p class="p3">
											回到家中，仔细品味慢下来的生活，才是最好的享受！从书架中取下最爱的图书，将台灯放置在书桌上，坐下来，享受沙发吧！在友家2.0，不是每一天都需要按时起床！
										</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											4种风格 <span>我的房间，我的范</span>
										</h3>
										<p class="p3">
											“千篇一律”已经从词典里消失，现在友家2.0提供4种风格的房间，为你提供多样选择。黑白红三色冲撞的拿铁，枫木色家具与棉纺织物相得益彰的木棉，蓝红条纹充满英伦风的布丁，还有在房屋原生风格之上配置而成的原味。现在，依照你的脾气选择吧！我的房间，就是我的范儿！
										</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											公共空间分户使用 <span>爱国、创新、包容、厚德</span>
										</h3>
										<p class="p3">卫生间置物架上全是室友的东西，偶滴洗发水都没有地方放，真麻烦！</p>
										<p class="p3">
											友家2.0公共空间倡导分户使用，为每户都提前分配公共区域：卫生间提供多层置物架，每户独立使用其中一层；公共区域设有洗手台，分流卫生间高峰期的洗漱压力。
											热水器？这可不能分成三份，但容量更大，一次喝饱60升水！</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											1种家具N种用途 <span>移动+变形+想像力</span>
										</h3>
										<p class="p3">酷毙了！台灯居然可以用来泡面，床底下还有一个大型滑板！</p>
										<p class="p3">
											No，我知道你的想像力，但千万别这样。友家2.0中为每样家具都添加了更多用途：台灯、落地灯可随处安放、弯折；书桌、床头柜安装了轮子，推到阳台看书也不错啊；床下推柜除了置物，还可以用来和朋友打牌；安了轮子家具乱跑怎么办？笨蛋，每个轮子有刹车啊！
										</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="b b2">
							<ul class="lst lst2">
								<li><img src="resources/web/images/index/2.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/4.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/4.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/5.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/1.jpg" alt="" /></li>
							</ul>
						</div>
		
						<span class="arr lef"><img
							src="resources/web/images/index/arr1.png"></span> <span
							class="arr rig"><img
							src="resources/web/images/index/arr2.png"></span>
					</div>
		
				</div>
				<div id="d2">
					<div id="d2_div"></div>
					<div class="box">
						<div class="b b1">
							<ul class="lst lst1">
								<li>
									<div class="txt">
										<h3>
											222222 <span>我的衣柜可以放进一头大象</span>
										</h3>
										<p class="p3">衣服、鞋子、图书，还有哀家从淘宝上辛苦淘来的各种零零碎碎，都往哪里放？</p>
										<p class="p3">
											友家2.0衣柜全新升级，储物空间提升50%，可以轻松放进一头大象。还为你新添置多层书架，图书、摆件、相框终于可以公然显摆了，谁叫咱是有品味的人!床底下更大推柜，换洗的床单被褥统统收纳；床腿加高，令床底可以放下超大行礼箱！
										</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											品味慢生活 <span>坐下来，享受沙发</span>
										</h3>
										<p class="p3">高节奏的工作，是否让你疲惫？</p>
										<p class="p3">
											回到家中，仔细品味慢下来的生活，才是最好的享受！从书架中取下最爱的图书，将台灯放置在书桌上，坐下来，享受沙发吧！在友家2.0，不是每一天都需要按时起床！
										</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											4种风格 <span>我的房间，我的范</span>
										</h3>
										<p class="p3">
											“千篇一律”已经从词典里消失，现在友家2.0提供4种风格的房间，为你提供多样选择。黑白红三色冲撞的拿铁，枫木色家具与棉纺织物相得益彰的木棉，蓝红条纹充满英伦风的布丁，还有在房屋原生风格之上配置而成的原味。现在，依照你的脾气选择吧！我的房间，就是我的范儿！
										</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											公共空间分户使用 <span>爱国、创新、包容、厚德</span>
										</h3>
										<p class="p3">卫生间置物架上全是室友的东西，偶滴洗发水都没有地方放，真麻烦！</p>
										<p class="p3">
											友家2.0公共空间倡导分户使用，为每户都提前分配公共区域：卫生间提供多层置物架，每户独立使用其中一层；公共区域设有洗手台，分流卫生间高峰期的洗漱压力。
											热水器？这可不能分成三份，但容量更大，一次喝饱60升水！</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											1种家具N种用途 <span>移动+变形+想像力</span>
										</h3>
										<p class="p3">酷毙了！台灯居然可以用来泡面，床底下还有一个大型滑板！</p>
										<p class="p3">
											No，我知道你的想像力，但千万别这样。友家2.0中为每样家具都添加了更多用途：台灯、落地灯可随处安放、弯折；书桌、床头柜安装了轮子，推到阳台看书也不错啊；床下推柜除了置物，还可以用来和朋友打牌；安了轮子家具乱跑怎么办？笨蛋，每个轮子有刹车啊！
										</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="b b2">
							<ul class="lst lst2">
								<li><img src="resources/web/images/index/2.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/4.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/3.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/5.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/1.jpg" alt="" /></li>
							</ul>
						</div>
		
		
						<span class="arr lef"><img
							src="resources/web/images/index/arr1.png"></span> <span
							class="arr rig"><img
							src="resources/web/images/index/arr2.png"></span>
					</div>
				</div>
				<div id="d3">
					<div id="d3_div"></div>
					<div class="box">
						<div class="b b1">
							<ul class="lst lst1">
								<li>
									<div class="txt">
										<h3>
											33333 <span>我的衣柜可以放进一头大象</span>
										</h3>
										<p class="p3">衣服、鞋子、图书，还有哀家从淘宝上辛苦淘来的各种零零碎碎，都往哪里放？</p>
										<p class="p3">
											友家2.0衣柜全新升级，储物空间提升50%，可以轻松放进一头大象。还为你新添置多层书架，图书、摆件、相框终于可以公然显摆了，谁叫咱是有品味的人!床底下更大推柜，换洗的床单被褥统统收纳；床腿加高，令床底可以放下超大行礼箱！
										</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											品味慢生活 <span>坐下来，享受沙发</span>
										</h3>
										<p class="p3">高节奏的工作，是否让你疲惫？</p>
										<p class="p3">
											回到家中，仔细品味慢下来的生活，才是最好的享受！从书架中取下最爱的图书，将台灯放置在书桌上，坐下来，享受沙发吧！在友家2.0，不是每一天都需要按时起床！
										</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											4种风格 <span>我的房间，我的范</span>
										</h3>
										<p class="p3">
											“千篇一律”已经从词典里消失，现在友家2.0提供4种风格的房间，为你提供多样选择。黑白红三色冲撞的拿铁，枫木色家具与棉纺织物相得益彰的木棉，蓝红条纹充满英伦风的布丁，还有在房屋原生风格之上配置而成的原味。现在，依照你的脾气选择吧！我的房间，就是我的范儿！
										</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											公共空间分户使用 <span>爱国、创新、包容、厚德</span>
										</h3>
										<p class="p3">卫生间置物架上全是室友的东西，偶滴洗发水都没有地方放，真麻烦！</p>
										<p class="p3">
											友家2.0公共空间倡导分户使用，为每户都提前分配公共区域：卫生间提供多层置物架，每户独立使用其中一层；公共区域设有洗手台，分流卫生间高峰期的洗漱压力。
											热水器？这可不能分成三份，但容量更大，一次喝饱60升水！</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											1种家具N种用途 <span>移动+变形+想像力</span>
										</h3>
										<p class="p3">酷毙了！台灯居然可以用来泡面，床底下还有一个大型滑板！</p>
										<p class="p3">
											No，我知道你的想像力，但千万别这样。友家2.0中为每样家具都添加了更多用途：台灯、落地灯可随处安放、弯折；书桌、床头柜安装了轮子，推到阳台看书也不错啊；床下推柜除了置物，还可以用来和朋友打牌；安了轮子家具乱跑怎么办？笨蛋，每个轮子有刹车啊！
										</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="b b2">
							<ul class="lst lst2">
								<li><img src="resources/web/images/index/2.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/4.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/4.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/5.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/1.jpg" alt="" /></li>
							</ul>
						</div>
		
		
						<span class="arr lef"><img
							src="resources/web/images/index/arr1.png"></span> <span
							class="arr rig"><img
							src="resources/web/images/index/arr2.png"></span>
					</div>
				</div>
				<div id="d4">
					<div id="d4_div"></div>
					<div class="box">
						<div class="b b1">
							<ul class="lst lst1">
								<li>
									<div class="txt">
										<h3>
											4444 <span>我的衣柜可以放进一头大象</span>
										</h3>
										<p class="p3">衣服、鞋子、图书，还有哀家从淘宝上辛苦淘来的各种零零碎碎，都往哪里放？</p>
										<p class="p3">
											友家2.0衣柜全新升级，储物空间提升50%，可以轻松放进一头大象。还为你新添置多层书架，图书、摆件、相框终于可以公然显摆了，谁叫咱是有品味的人!床底下更大推柜，换洗的床单被褥统统收纳；床腿加高，令床底可以放下超大行礼箱！
										</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											品味慢生活 <span>坐下来，享受沙发</span>
										</h3>
										<p class="p3">高节奏的工作，是否让你疲惫？</p>
										<p class="p3">
											回到家中，仔细品味慢下来的生活，才是最好的享受！从书架中取下最爱的图书，将台灯放置在书桌上，坐下来，享受沙发吧！在友家2.0，不是每一天都需要按时起床！
										</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											4种风格 <span>我的房间，我的范</span>
										</h3>
										<p class="p3">
											“千篇一律”已经从词典里消失，现在友家2.0提供4种风格的房间，为你提供多样选择。黑白红三色冲撞的拿铁，枫木色家具与棉纺织物相得益彰的木棉，蓝红条纹充满英伦风的布丁，还有在房屋原生风格之上配置而成的原味。现在，依照你的脾气选择吧！我的房间，就是我的范儿！
										</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											公共空间分户使用 <span>爱国、创新、包容、厚德</span>
										</h3>
										<p class="p3">卫生间置物架上全是室友的东西，偶滴洗发水都没有地方放，真麻烦！</p>
										<p class="p3">
											友家2.0公共空间倡导分户使用，为每户都提前分配公共区域：卫生间提供多层置物架，每户独立使用其中一层；公共区域设有洗手台，分流卫生间高峰期的洗漱压力。
											热水器？这可不能分成三份，但容量更大，一次喝饱60升水！</p>
									</div>
								</li>
								<li>
									<div class="txt">
										<h3>
											1种家具N种用途 <span>移动+变形+想像力</span>
										</h3>
										<p class="p3">酷毙了！台灯居然可以用来泡面，床底下还有一个大型滑板！</p>
										<p class="p3">
											No，我知道你的想像力，但千万别这样。友家2.0中为每样家具都添加了更多用途：台灯、落地灯可随处安放、弯折；书桌、床头柜安装了轮子，推到阳台看书也不错啊；床下推柜除了置物，还可以用来和朋友打牌；安了轮子家具乱跑怎么办？笨蛋，每个轮子有刹车啊！
										</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="b b2">
							<ul class="lst lst2">
								<li><img src="resources/web/images/index/2.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/4.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/4.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/5.jpg" alt="" /></li>
								<li><img src="resources/web/images/index/1.jpg" alt="" /></li>
							</ul>
						</div>
		
		
		
						<span class="arr lef"><img
							src="resources/web/images/index/arr1.png"></span> <span
							class="arr rig"><img
							src="resources/web/images/index/arr2.png"></span>
					</div>
				</div>
				<div id="d5">
			<div id="d5_div"></div>
			<div class="box">
				<div class="b b1">
					<ul class="lst lst1">
						<li>
							<div class="txt">
								<h3>
									5555555 <span>我的衣柜可以放进一头大象</span>
								</h3>
								<p class="p3">衣服、鞋子、图书，还有哀家从淘宝上辛苦淘来的各种零零碎碎，都往哪里放？</p>
								<p class="p3">
									友家2.0衣柜全新升级，储物空间提升50%，可以轻松放进一头大象。还为你新添置多层书架，图书、摆件、相框终于可以公然显摆了，谁叫咱是有品味的人!床底下更大推柜，换洗的床单被褥统统收纳；床腿加高，令床底可以放下超大行礼箱！
								</p>
							</div>
						</li>
						<li>
							<div class="txt">
								<h3>
									品味55生活 <span>坐下来，享受沙发</span>
								</h3>
								<p class="p3">高节奏的工作，是否让你疲惫？</p>
								<p class="p3">
									回到家中，仔细品味慢下来的生活，才是最好的享受！从书架中取下最爱的图书，将台灯放置在书桌上，坐下来，享受沙发吧！在友家2.0，不是每一天都需要按时起床！
								</p>
							</div>
						</li>
						<li>
							<div class="txt">
								<h3>
									4种6格 <span>我的房间，我的范</span>
								</h3>
								<p class="p3">
									“千篇一律”已经从词典里消失，现在友家2.0提供4种风格的房间，为你提供多样选择。黑白红三色冲撞的拿铁，枫木色家具与棉纺织物相得益彰的木棉，蓝红条纹充满英伦风的布丁，还有在房屋原生风格之上配置而成的原味。现在，依照你的脾气选择吧！我的房间，就是我的范儿！
								</p>
							</div>
						</li>
						<li>
							<div class="txt">
								<h3>
									公共空6分户使用 <span>爱国、创新、包容、厚德</span>
								</h3>
								<p class="p3">卫生间置物架上全是室友的东西，偶滴洗发水都没有地方放，真麻烦！</p>
								<p class="p3">
									友家2.0公共空间倡导分户使用，为每户都提前分配公共区域：卫生间提供多层置物架，每户独立使用其中一层；公共区域设有洗手台，分流卫生间高峰期的洗漱压力。
									热水器？这可不能分成三份，但容量更大，一次喝饱60升水！</p>
							</div>
						</li>
						<li>
							<div class="txt">
								<h3>
									1种家具6种用途 <span>移动+变形+想像力</span>
								</h3>
								<p class="p3">酷毙了！台灯居然可以用来泡面，床底下还有一个大型滑板！</p>
								<p class="p3">
									No，我知道你的想像力，但千万别这样。友家2.0中为每样家具都添加了更多用途：台灯、落地灯可随处安放、弯折；书桌、床头柜安装了轮子，推到阳台看书也不错啊；床下推柜除了置物，还可以用来和朋友打牌；安了轮子家具乱跑怎么办？笨蛋，每个轮子有刹车啊！
								</p>
							</div>
						</li>
					</ul>
				</div>
				<div class="b b2">
					<ul class="lst lst2">
						<li><img src="resources/web/images/index/2.jpg" alt="" /></li>
						<li><img src="resources/web/images/index/4.jpg" alt="" /></li>
						<li><img src="resources/web/images/index/4.jpg" alt="" /></li>
						<li><img src="resources/web/images/index/5.jpg" alt="" /></li>
						<li><img src="resources/web/images/index/1.jpg" alt="" /></li>
					</ul>
				</div>



				<span class="arr lef"><img
					src="resources/web/images/index/arr1.png"></span> <span
					class="arr rig"><img
					src="resources/web/images/index/arr2.png"></span>
					
			</div>
		</div>
	     </div>
     </div>
	
	<div class="container-fluid mt15">
		<div class="row-fluid flow list">
			
			<h3 class="header">
			         <span class="tab">
			           鉴定专场
			          <em></em>
			         </span>
			     </h3>
			<div class="list_box">
				<ul class="list_con fn-clear store">
					<c:if test="${stores!= null}">
							<c:forEach var="store" varStatus="status" items="${stores}">
									
								 <c:if test="${store.kind==1}">
								   <li>
										<a id=""
											href="<c:url value="/web/join"/>?storeId=${store.id }&storeKind=${store.kind}"> <b>${store.storeName }</b>
												${store.telephone}
										</a>
								   </li>
								  </c:if>
								 <c:if test="${store.kind==2}">
								  <li >
										<a id="" class="subs_active"
											href="<c:url value="/web/join"/>?storeId=${store.id }&storeKind=${store.kind}"> <b>${store.storeName }</b>
												${store.telephone}
										</a>
								   </li>
								  </c:if>
											
					 </c:forEach>
					</c:if>
				</ul>
			</div>
		</div>
	</div>
	
	<div class="container-fluid mt15">
		<div class="row-fluid flow list">
			<h3 class="header">
			         <span class="tab">
			           专家预约
			          <em></em>
			         </span>
			     </h3>
			<div class="list_box">
		      <ul class="list_con fn-clear">
		      
		      
		       <c:if test="${professores!= null}">
			<c:forEach var="professor" varStatus="status" items="${professores}">
				<li class="item">
					<div class="img_box">
						<a
							href="<c:url value="/web/member/professorInfo"/>?professorId=${professor.id }"> <img width="214"
							height="155" alt=""
							src="<c:url value="${professor.photo }"/>">
						</a>
					</div>
					<div class="info">
						<h2 class="title">${professor.nickName }</h2>
						<p class="detail">
							已鉴定： <span class="spec">${professor.identifiedCount}</span> 宝贝
						</p>
						<p class="detail">
							排队鉴定数： <span class="spec">${professor.identifyingCount}</span> 件
						</p>
					</div>
					<div class="btn_box">
						<a class="btn btn-large btn-primary"
							href="web/member/reservationService?professorId=${professor.id}"
							>我要送鉴宝</a>
					</div>
				</li>
											
									</c:forEach>
					</c:if>
                       
				  </ul>
             </div>
        </div>
	</div>

     <div class="container-fluid mt15">
		<div class="row-fluid flow list">
			<h3 class="header">
			         <span class="tab">
			           鉴定宝贝
			          <em></em>
			         </span>
			     </h3>
			<div class="thBody">
				
	<div class="wrapperBox thLeft scrollpic-index">
  	  <div class="wrapper">
  	     <div class="downContent">
  	     	<ul>
  	     		 <c:if test="${treasures!= null}">
							<c:forEach var="treasure" varStatus="status" items="${treasures}">
							
						<li><a href="#"> <img
												src="<c:url value="/resources/web/webproduct/animal2.png"/>">
										</a>
											<p class="">
												<b>￥ ${treasure.professorPrice/100 } </b>
											</p>
											<p>
												<a href="#">${treasure.name }</a>
											</p></li>
									</c:forEach>
					</c:if>
                       
  	     		
  	     	</ul>
  	     </div>
  	  </div>
  	</div>
					<!-- end light box ca-container -->
				</div>
			</div>
			</div>
		</div>
<link rel="stylesheet" href="<c:url value="/resources/web/css/lib/jquery.jscrollpane.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/index-carousel.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/index-scrollpic.css"/>"/>
<script src="<c:url value="/resources/web/js/index.js"/>" type="text/javascript"></script> 
<script src="<c:url value="/resources/web/js/jquery.easing.1.3.js"/>" type="text/javascript"></script> 
<!-- the jScrollPane script -->
<script src="<c:url value="/resources/web/js/jquery.contentcarousel.js"/>" type="text/javascript"></script> 
<script src="<c:url value="/resources/web/js/jquery.scrollpic.js"/>" type="text/javascript"></script> 
<!-- banner下拉框  图片轮播 -->
<script src="<c:url value="/resources/web/js/index/jquery.tools.min.js"/>" type="text/javascript"></script> 


   <!-- 图片滚动 调用方法 
	<script src="resources/web/js/gundong.js" type="text/javascript"></script>-->
	<!-- 图片滚动方向及速度 
	<script src="resources/web/js/gundong-1.js" type="text/javascript"></script>
	<script src="resources/web/js/onlineConsultation.js" type="text/javascript"></script>-->
	<!-- 选项卡颜色切换 -->
	<script src="<c:url value="/resources/web/js/index/index.js"/>" type="text/javascript"></script> 
	<!-- banner下拉框  选项卡切换 -->
	<script src="<c:url value="/resources/web/js/index/qiehuan.js"/>" type="text/javascript"></script> 
	



<script type="text/javascript">
$(function(){
  $('.scrollpic-index').hhScrollpic({
 			scrollPicMth:7,  //每页显示个数
			defaultSpeed : 1000,   //默认滚动时间  点击按钮滚动时间
			speed : 5000   //自动播放滚动时间
 	});
});
</script>
<!-- 图片轮播参数 -->
	<script type="text/javascript">
		$(function(){
   		 $(".b").scrollable({
			size:1,
			items:".b ul",
			loop:true,
			next:".lef",
			prev:".rig",
			clickable:false,
			circular:true
			});  
	  
   		 $(".b3").scrollable({
			size:1,
			items:".b3 ul",
			loop:true,
			next:".lef",
			prev:".rig",
			vertical:true,
			clickable:false,
			circular:true
			});  
			});
		</script>
		
		<script type="text/javascript">
			$(function(){
				/**
				$("#img_span1").hide();
				$("#img_span1-1").show();
				$("#img_span2").show();
				$("#img_span2-1").hide();
				$("#img_span3").show();
				$("#img_span3-1").hide();
				$("#img_span4").show();
				$("#img_span4-1").hide();
				$("#img_span5").show();
				$("#img_span5-1").hide();
				fun(1);
				**/
				$("#item_box1").click(function(){
				});
				
			});
		</script>

