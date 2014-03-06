<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="<c:url value="/resources/web/css/common-content.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/web/css/compiled/gallery.css"/>" />
<!-- main container -->
    <div class="content">
        <div class="container-fluid">
            <div id="pad-wrapper" class="gallery">
                <div class="row-fluid header">
                    <h3>Gallery</h3>                    
                </div>
                <!-- gallery wrapper -->
                <div class="gallery-wrapper">
                    <div class="row gallery-row">
                        <!-- single image -->
                        <div class="span3 img-container">
                            <div class="img-box">
                                <span class="icon edit">
                                    <i class="gallery-edit"></i>
                                </span>
                                <span class="icon trash">
                                    <i class="gallery-trash"></i>
                                </span>
                                <img src="<c:url value="/resources/web/img/gallery3.jpg"/>" />
                                <p class="title">
                                    Beach pic title
                                </p>
                            </div>
                        </div>
                        <!-- single image -->
                        <div class="span3 img-container">
                            <div class="img-box">
                                <span class="icon edit">
                                    <i class="gallery-edit"></i>
                                </span>
                                <span class="icon trash">
                                    <i class="gallery-trash"></i>
                                </span>
                                <img src="<c:url value="/resources/web/img/gallery2.jpg"/>" />
                                <p class="title">
                                    Beach pic title 2 
                                </p>
                            </div>
                        </div>
                        <!-- single image -->
                        <div class="span3 img-container">
                            <div class="img-box">
                                <span class="icon edit">
                                    <i class="gallery-edit"></i>
                                </span>
                                <span class="icon trash">
                                    <i class="gallery-trash"></i>
                                </span>
                                <img src="<c:url value="/resources/web/img/gallery1.jpg"/>" />
                                <p class="title">
                                    Beach pic title 3
                                </p>
                            </div>
                        </div>
                        <!-- single image -->
                        <div class="span3 img-container">
                            <div class="img-box">
                                <span class="icon edit">
                                    <i class="gallery-edit"></i>
                                </span>
                                <span class="icon trash">
                                    <i class="gallery-trash"></i>
                                </span>
                                <img src="<c:url value="/resources/web/img/gallery3.jpg"/>" />
                                <p class="title">
                                    Beach pic title
                                </p>
                            </div>
                        </div> 
                        <!-- single image -->
                        <div class="span3 img-container">
                            <div class="img-box">
                                <span class="icon edit">
                                    <i class="gallery-edit"></i>
                                </span>
                                <span class="icon trash">
                                    <i class="gallery-trash"></i>
                                </span>
                                <img src="<c:url value="/resources/web/img/gallery2.jpg"/>" />
                                <p class="title">
                                    Beach pic title 2 
                                </p>
                            </div>
                        </div>

                        <!-- new image button -->
                        <div class="span3 new-img">
                            <img src="<c:url value="/resources/web/img/new-gallery-img.png"/>" />
                        </div>
                    </div>
                </div>
                <!-- end gallery wrapper -->

                <!-- blank state -->
                 <div class="no-gallery">
                    <div class="row-fluid header">
                        <h3>Gallery Blank State</h3>
                    </div>
                    <div class="center">
                        <img src="<c:url value="/resources/web/img/no-img-gallery.png"/>" />
                        <h6>You don't have any images</h6>
                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form</p>
                        <a class="btn-glow primary">Add new image</a>
                    </div>
                </div>
                <!-- end blank state -->
            </div>
        </div>
    </div>
    <!-- end main container -->