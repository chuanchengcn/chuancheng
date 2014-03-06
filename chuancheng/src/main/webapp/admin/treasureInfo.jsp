<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/compiled/gallery.css"/>"
	type="text/css" media="screen" />
<link rel="stylesheet"
	href="<c:url value="/resources/admin/css/compiled/treasureInfo.css"/>"
	type="text/css" media="screen" />
<!-- main container -->
    <div class="content">
        <div class="container-fluid">
            <div id="pad-wrapper" class="gallery treasureInfo">
                <div class="row-fluid header">
                    <div class="span8">
                        <img src="<c:url value="/resources/admin/img/contact-profile.png"/>" class="avatar img-circle" />
                        <h3 class="name">宝贝详情</h3>  
                        <span class="area">编号：${treasureInfo.number }</span>
                        <span class="area">名称：${treasureInfo.name}</span>
                        
                        
                    </div>
                    <a class="btn-flat icon pull-right delete-user" data-toggle="tooltip" title="Delete user" data-placement="top">
                        <i class="icon-trash"></i>
                    </a>
                     <a class="btn-flat icon large pull-right edit">
                        修改
                    </a>
                </div>
                

                <!-- gallery wrapper -->
                <div class="gallery-wrapper">
                    <div class="row gallery-row">
                        <c:if test="${treasureInfo!= null}">
                           <c:if test="${treasureInfo.treasurePics!=null }">
							<c:forEach var="treasurePic" varStatus="status" items="${treasureInfo.treasurePics}">
				     <!-- single image -->
                        <div class="span3 img-container">
                            <div class="img-box">
                                <span class="icon edit">
                                    <i class="gallery-edit"></i>
                                </span>
                                <span class="icon trash">
                                    <i class="gallery-trash"></i>
                                </span>
                               <img src="<c:url value="${treasurePic.path}"/>" />
                                <p class="title">
                                   ${treasurePic.comment}
                                </p>
                            </div>
                        </div> 
					  </c:forEach>
						</c:if>
					</c:if>
                        <!-- new image button -->
                        <div class="span3 new-img">
                            <img src="<c:url value="/resources/admin/img/new-gallery-img.png"/>" />
                        </div>


                        <!-- edit image pop up -->
                        <div class="popup" style="display: none">
                            <div class="pointer">
                                <div class="arrow"></div>
                                <div class="arrow_border"></div>
                            </div>
                            <i class="close-pop table-delete"></i>
                            <h5>Edit Image</h5>
                            <div class="thumb">
                                <img src="img/gallery-preview.jpg" />
                            </div>
                            <div class="title">
                                <input type="text" class="inline-input" placeholder="Title" />
                                <div class="ui-select">
                                    <select>
                                      <option />Category
                                      <option />Mountains
                                      <option />Lake and rivers
                                    </select>
                                </div>
                            </div>
                            <div class="description">
                                <h6>Description</h6>
                                <textarea></textarea>
                                <input type="submit" value="Save" class="btn-glow primary" />
                            </div>
                        </div>

                    </div>
                </div>
                <!-- end gallery wrapper -->

                <!-- blank state -->
                 <div class="no-gallery">
                    <div class="row-fluid header">
                        <h3>添加宝贝图片</h3>
                    </div>
                    <div class="center">
                        <img src="<c:url value="/resources/admin/img/no-img-gallery.png"/>" />
                        <h6>如果你没有任何图片</h6>
                        <p>点击这里添加图片</p>
                        <a class="btn-glow primary">添加</a>
                    </div>
                </div>
                <!-- end blank state -->
            </div>
        </div>
    </div>
    <!-- end main container -->
   




