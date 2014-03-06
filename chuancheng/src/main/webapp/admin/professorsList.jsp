<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/admin/css/compiled/professorList.css"/>" type="text/css" media="screen" />
	
	<!-- main container -->
    <div class="content">
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3>鉴宝专家管理</h3>
                    <div class="span10 pull-right">
                        <input type="text" class="span5 search" placeholder="Type a user's name..." />
                        
                        <div class="ui-dropdown">
                            <div class="head" data-toggle="tooltip" title="Click me!">
                                Filter users
                                <i class="arrow-down"></i>
                            </div>  
                            <div class="dialog">
                                <div class="pointer">
                                    <div class="arrow"></div>
                                    <div class="arrow_border"></div>
                                </div>
                                <div class="body">
                                    <p class="title">
                                        Show users where:
                                    </p>
                                    <div class="form">
                                        <select>
                                            <option />Name
                                            <option />Email
                                            <option />Number of orders
                                            <option />Signed up
                                            <option />Last seen
                                        </select>
                                        <select>
                                            <option />is equal to
                                            <option />is not equal to
                                            <option />is greater than
                                            <option />starts with
                                            <option />contains
                                        </select>
                                        <input type="text" />
                                        <a class="btn-flat small">Add filter</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <a href="preAddProfessor.jsp" class="btn-flat success pull-right">
                            <span>&#43;</span>
                            添加专家
                        </a>
                    </div>
                </div>

                <!-- Users table -->
                <div class="row-fluid table">
                    <table class="table table-hover">
                        <thead>
                            <tr>
							<th class="span3 sortable">基本信息</th>
							<th class="sortable"><span class="line"></span>热度</th>
							<th class="sortable"><span class="line"></span>已鉴定宝贝</th>
							<th class="sortable"><span class="line"></span>未鉴定宝贝</th>
							<th class="sortable"><span class="line"></span>电话</th>
							<th><span class="line"></span>管理</th>

						</tr>
                        </thead>
                        <tbody>
                        <!-- row -->
                      
                        <c:if test="${professors!= null}">
							<c:forEach var="professor" varStatus="status" items="${professors}">
						  <c:if test="${status.index==1 }">					
						<tr class="first">
                            <td>
                                <img src="<c:url value="${professor.photo}"/>" class="img-circle avatar hidden-phone professorPhoto" />
                                <a href="#" class="name">${professor.name}</a>
                                <span class="subtext">${professor.nickName}</span>
                            </td>
                            
                            <td>${professor.hot}</td>
                            <td>${professor.identifiedCount}</td>
							<td>${professor.identifyingCount}</td>
							<td>${professor.telephone}</td>
												
                            <td class="align-right">
                                <a href="professorinfo.jsp">查看</a>
								<a href="#">修改</a>
								<a href="<c:url value="/admin/deleteProfessor"/>?professorId=${professor.id}">删除</a>
                            </td>
                            
                        </tr>
                        </c:if>	
                          <c:if test="${status.index!=1 }">					
						<tr >
                            <td>
                                <img src="<c:url value="${professor.photo}"/>" class="img-circle avatar hidden-phone professorPhoto" />
                                <a href="#" class="name">${professor.name}</a>
                                <span class="subtext">${professor.nickName}</span>
                            </td>
                            <td>${professor.hot}</td>
                            <td>${professor.identifiedCount}</td>
							<td>${professor.identifyingCount}</td>
							<td>${professor.telephone}</td>
												
                            <td class="align-right">
                                <a href="professorinfo.jsp">查看</a>
								<a href="#">修改</a>
								<a href="<c:url value="/admin/deleteProfessor"/>?professorId=${professor.id}">删除</a>
                            </td>
                            
                        </tr>
                        </c:if>	
                       
					</c:forEach>
					</c:if>
                       
                        
                      
                       
                        
                        
                        
                        </tbody>
                    </table>
                </div>
            <!-- 
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
                 -->
            </div>
        </div>
    </div>
    <!-- end main container -->
    		
	
      

