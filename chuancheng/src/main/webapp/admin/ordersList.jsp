<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/admin/css/compiled/professorList.css"/>" type="text/css" media="screen" />
	
	<!-- main container -->
    <div class="content">
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3>订单管理</h3>
                    <div class="span10 pull-right">
                        <input type="text" class="span5 search" placeholder="Type a user's name..." />
                    </div>
                </div>

                <div class="row-fluid table">
                    <table class="table table-hover">
                        <thead>
                            <tr>
							<th class="span3 sortable">订单编号</th>
							<th class="sortable"><span class="line"></span>订单类型</th>
							<th class="sortable"><span class="line"></span>订单进度</th>
							<th class="sortable"><span class="line"></span>预约专家</th>
							<th class="sortable"><span class="line"></span>实体店</th>
							<th><span class="line"></span>管理</th>

						</tr>
                        </thead>
                        <tbody>
                        <!-- row -->
                      
                        <c:if test="${orders!= null}">
							<c:forEach var="order" varStatus="status" items="${orders}">
						  <c:if test="${status.index==1 }">					
						<tr class="first">
                             <td>${order.orderNumber}</td>
                            <td>${order.orderKind}</td>
                            <td>${order.progress}</td>
							<td>${order.professorId}</td>
							<td>${order.storeId}</td>
                            <td class="align-right">
                                <a href="professorinfo.jsp">查看</a>
								<a href="#">修改</a>
								<a href="delete.html">删除</a>
                            </td>
                            
                        </tr>
                        </c:if>	
                          <c:if test="${status.index!=1 }">					
						<tr >
                            <td>${order.orderNumber}</td>
                            <td>${order.orderKind}</td>
                            <td>${order.progress}</td>
							<td>${order.professorId}</td>
							<td>${order.storeId}</td>
												
                            <td class="align-right">
                                <a href="professorinfo.jsp">查看</a>
								<a href="#">修改</a>
								<a href="#">删除</a>
                            </td>
                            
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
    		
	
      

