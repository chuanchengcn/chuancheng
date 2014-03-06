<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/admin/css/compiled/professorList.css"/>" type="text/css" media="screen" />
<link rel="stylesheet" href="<c:url value="/resources/admin/css/compiled/store.css"/>" />
	
	<!-- main container -->
    <div class="content">
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list chooseStore">
                <div class="row-fluid header">
                    <h3>店铺管理</h3>
                    <div class="span10 pull-right">
                        <input type="text" class="span5 search" placeholder="店铺名称" />
                        <a href="#" class="btn-flat success pull-right">
                            <span>&#43;</span>
                                                                                       添加店铺
                        </a>
                    </div>
                </div>
                <div class="up clearfix">
                <div id="chooseStore" class="step">
				<ul>
					<li>
						<div class="title clearfix">
							<strong> <label>1</label> 分店
							</strong> <a id="btntipversion"> <span
								class="icon-common icon-common-questionBg"></span> 
							</a>
						</div>
						
						<dl class="version clearfix">
						   <c:if test="${ entityeStores!=null}">
						   
						   <c:forEach var="store" varStatus="status" items="${entityeStores}">
						     <dd class="big selected" xmtype="bz">
								<strong>${store.storeName }</strong>
								<p>
									${store.title } <br> 
								</p>
							  </dd>
                            </c:forEach>
							</c:if>
						</dl>
					</li>
				</ul>
			</div>
			</div>
                <div class="up clearfix">
                <div id="chooseStore" class="step">
				<ul>
					<li>
						<div class="title clearfix">
							<strong> <label>2</label> 活动
							</strong> <a id="btntipversion"> <span
								class="icon-common icon-common-questionBg"></span> 
							</a>
						</div>
						
						<dl class="version clearfix">
						   <c:if test="${ activityStores!=null}">
						   
						   <c:forEach var="store" varStatus="status" items="${activityStores}">
						     <dd class="big selected" xmtype="bz">
								<strong>${store.storeName }</strong>
								<p>
									${store.title } <br> 
								</p>
							  </dd>
                            </c:forEach>
							</c:if>
						</dl>
					</li>
				</ul>
			</div>
			</div>
            </div>
        </div>
    </div>
    <!-- end main container -->
    		
	
      

