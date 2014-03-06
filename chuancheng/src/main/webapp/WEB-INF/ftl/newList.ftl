 <#list viewNews as viewNew>
    <li>
	  <div class="in_article_left">
	  <span class="month"><em>04</em>一月</span><span class="num"><em class="ico_in_comment"></em></span>
	  </div>
	  <div class="in_article_right">

	    <div class="info"><h3 class="title">
	    <a href="featureInfo.jsp"> ${viewNew.title}</a></h3>
	    <p class="time c_9"><span>音悦Tai</span>${viewNew.time}</p>
	    <p class="text">${viewNew.content}<a href="article.html" class="special" title="全文" target="_blank">全文</a></p>
	    </div>
	    <a href="article.html" class="pic"> <img src="../../resources/web/images/photo.jpg"/> </a>
	  </div>
	</li>
</#list>