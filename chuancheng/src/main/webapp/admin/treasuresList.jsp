<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/compiled/professorList.css"/>"
	type="text/css" media="screen" />

<!-- main container -->
<div class="content">
	<div class="container-fluid">
		<div id="pad-wrapper" class="users-list">
			<div class="row-fluid header">
				<h3>宝贝管理</h3>
				<div class="span10 pull-right">
					<a href="preAddTreasure.jsp" class="btn-flat success pull-right">
						<span>&#43;</span> 添加宝贝
					</a>
				</div>
			</div>

			<!-- Users table -->
			<div class="row-fluid table">
				<table class="table table-hover">
					<thead>
						<tr>
							<th class="span3 sortable">宝贝编号</th>
							<th class="sortable"><span class="line"></span>名称</th>
							<th class="sortable"><span class="line"></span>创造人</th>
							<th class="sortable"><span class="line"></span>用户id</th>
							<th class="sortable"><span class="line"></span>联系电话</th>
							<th><span class="line"></span>管理</th>

						</tr>
					</thead>
					<tbody>
						<!-- row -->

						<c:if test="${treasures!= null}">
							<c:forEach var="treasure" varStatus="status" items="${treasures}">
								<c:if test="${status.index==1 }">
									<tr class="first">
										<td>${treasure.number}</td>
										<td>${treasure.name}</td>
										<td>${treasure.author}</td>
										<td>${treasure.memberId}</td>
										<td>${treasure.telephone}</td>

										<td class="align-right">
										<a href="<c:url value="/admin/treasureInfo"/>?treasureId=${treasure.id}">查看</a>
											<a href="#">修改</a> <a href="#">删除</a></td>

									</tr>
								</c:if>
								<c:if test="${status.index!=1 }">
									<tr>
										<td>${treasure.number}</td>
										<td>${treasure.name}</td>
										<td>${treasure.author}</td>
										<td>${treasure.memberId}</td>
										<td>${treasure.telephone}</td>
										<td class="align-right">
										<a href="<c:url value="/admin/treasureInfo"/>?treasureId=${treasure.id}">查看</a>
											<a href="#">修改</a> <a href="#">删除</a></td>
									</tr>
								</c:if>

							</c:forEach>
						</c:if>

					</tbody>
				</table>
			</div>
			<div class="pagination pull-right">
				<ul>
					<li><a href="#">&#8249;</a></li>
					<li><a class="active" href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">&#8250;</a></li>
				</ul>
			</div>
			<!-- end users table -->
		</div>
	</div>
</div>
<!-- end main container -->




