 <#list treasures as treasure>
  <div class="item masonry_brick">
          <div class="item_t">
            <div class="img"> <a href="#" target="_blank"><img width="210" alt="谷歌风格扁平化图标PSD素材" src="../resources/web/testimage/9.jpg" /></a>
              <div class="btns">
			    <a href="#" data-id="1092" class="Button2 Button11 WhiteButton ContrastButton  repin_link  notlogin">
			    <em></em>点赞<span class="num">(${treasure.visitCount})</span></a>
                <div class="f-r"> <a href="#" data-id="1092" class="Button2 Button11 WhiteButton ContrastButton likebuttonnotlogin"> 
                <em></em><span class="text">收藏</span><span class="num">(${treasure.followCount})</span> </a> </div>
              </div>
            </div>
            <div class="title"><em>T:</em><span><a href="#" target="_blank">${treasure.name}</a></span></div>
          </div>
          <div class="item_b clearfix">
            <div class="items_likes fl"> <span>标签: <a href="#">${treasure.number}</a> <a href="#">${treasure.professorPrice}</a> </span> </div>
      </div>
  </div>
  
  <div class="item masonry_brick">
          <div class="item_t">
            <div class="img"> <a href="#" target="_blank"><img width="210" alt="谷歌风格扁平化图标PSD素材" src="../resources/web/testimage/2.jpg" /></a>
              <div class="btns">
			    <a href="#" data-id="1092" class="Button2 Button11 WhiteButton ContrastButton  repin_link  notlogin">
			    <em></em>点赞<span class="num">(${treasure.visitCount})</span></a>
                <div class="f-r"> <a href="#" data-id="1092" class="Button2 Button11 WhiteButton ContrastButton likebuttonnotlogin"> 
                <em></em><span class="text">收藏</span><span class="num">(${treasure.followCount})</span> </a> </div>
              </div>
            </div>
            <div class="title"><em>T:</em><span><a href="#" target="_blank">${treasure.name}</a></span></div>
          </div>
          <div class="item_b clearfix">
            <div class="items_likes fl"> <span>标签: <a href="#">${treasure.number}</a> <a href="#">${treasure.professorPrice}</a> </span> </div>
      </div>
  </div>
</#list>
        