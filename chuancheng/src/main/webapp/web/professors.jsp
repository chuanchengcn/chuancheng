<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/professors.css"/>" />
<!-- main container -->
     <div class="container">
        <div class="container-fluid">
		<div class="row-fluid flow list">
			 <h3 class="header">
			         <span class="tab">
			           专家团队
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
							href="<c:url value="/web/member/reservationService"/>?professorId=${professor.id}"
							>我要送鉴宝</a>
					</div>
				</li>
											
									</c:forEach>
					</c:if>
				
               </ul>
             </div>
        </div>
	
    </div>
    </div>
    <!-- end main container -->
    