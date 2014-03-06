<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="<c:url value="/resources/admin/css/compiled/professorList.css"/>" type="text/css" media="screen" />
	
	<!-- main container -->
    <div class="content">
        <div class="container-fluid">
            <div id="pad-wrapper" class="users-list">
                <div class="row-fluid header">
                    <h3>会员管理</h3>
                    <div class="span10 pull-right">
                        <input type="text" class="span5 search" placeholder="Type a user's name..." />
                    </div>
                </div>

                <!-- Users table -->
                <div class="row-fluid table">
                    <table class="table table-hover">
                        <thead>
                            <tr>
							<th class="span3 sortable">昵称</th>
							<th class="sortable"><span class="line"></span>注册邮箱</th>
							<th class="sortable"><span class="line"></span>memberId</th>
							<th class="sortable"><span class="line"></span>座机</th>
							<th class="sortable"><span class="line"></span>电话</th>
							<th class="sortable"><span class="line"></span>性别</th>
							<th class="sortable"><span class="line"></span>注册时间</th>
							<th><span class="line"></span>管理</th>

						</tr>
                        </thead>
                        <tbody>
                        <!-- row -->
                      
                        <c:if test="${members!= null}">
							<c:forEach var="member" varStatus="status" items="${members}">
						  <c:if test="${status.index==1 }">					
						<tr class="first">
                            <td>
                                <a href="#" class="name">${member.name}</a>
                            </td>
                            <td>${member.email}</td>
                            <td>${member.id}</td>
							
							<td>${member.memberinfo.telephone}</td>
							<td>${member.memberinfo.phone}</td>
							<td>${member.memberinfo.sex}</td>
							
							<td>
							  <fmt:formatDate value="${member.createtime}" pattern="yyyy年MM月dd日HH点mm分ss秒" />
							</td>
												
                            <td class="align-right">
                                <a href="professorinfo.jsp">查看</a>
								<a href="#">修改</a>
								<a href="#">删除</a>
                            </td>
                            
                        </tr>
                        </c:if>	
                        
                        <c:if test="${status.index!=1 }">					
						<tr>
                            <td>
                                <a href="#" class="name">${member.name}</a>
                            </td>
                            <td>${member.email}</td>
                            <td>${member.id}</td>
							
							<td>${member.memberinfo.telephone}</td>
							<td>${member.memberinfo.phone}</td>
							<td>${member.memberinfo.sex}</td>
							
							<td>
							  <fmt:formatDate value="${member.createtime}" pattern="yyyy年MM月dd日HH点mm分ss秒" />
							</td>
												
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
    		
	
      

