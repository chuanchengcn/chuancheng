<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!-- sidebar -->
    <div id="sidebar-nav">
        <ul id="dashboard-menu">
            <li class="active">
                <div class="pointer">
                    <div class="arrow"></div>
                    <div class="arrow_border"></div>
                </div>
                <a href="index.jsp">
                    <i class="icon-home"></i>
                    <span>Home</span>
                </a>
            </li>            
           
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-group"></i>
                    <span>专家管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li ><a href="<c:url value="/admin/preAddProfessor"/>">添加专家</a></li>
			        <li class="active"><a href="<c:url value="/admin/professorsList"/>">专家列表</a></li>
                    
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-edit"></i>
                    <span>宝贝管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li ><a href="<c:url value="/admin/preAddTreasure"/>">添加宝物</a></li>
					<li><a href="<c:url value="/admin/treasuresList"/>">查看所有宝物</a></li>
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle ui-elements" href="#">
                    <i class="icon-code-fork"></i>
                    <span>订单管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                    <li><a href="<c:url value="/admin/ordersList"/>">订单列表</a></li>
                    <li><a href="<c:url value="/admin/ordersList"/>?progress=4">待确认订单</a></li>
                    <li><a href="<c:url value="/admin/ordersList"/>?progress=5">已确认订单</a></li>
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-share-alt"></i>
                    <span>会员管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                   <li><a href="<c:url value="/admin/membersList"/>">查看所有专家</a></li>
                </ul>
            </li>
            <li>
                <a class="dropdown-toggle" href="#">
                    <i class="icon-share-alt"></i>
                    <span>店铺管理</span>
                    <i class="icon-chevron-down"></i>
                </a>
                <ul class="submenu">
                   <li><a href="<c:url value="/admin/addStore"/>">添加店铺</a></li>
                   <li><a href="<c:url value="/admin/storeList"/>">查看所有店铺</a></li>
                </ul>
            </li>
             <li>
                <a href="chart-showcase.html">
                    <i class="icon-signal"></i>
                    <span>统计分析</span>
                </a>
            </li>
             <li>
                <a href="personal-info.html">
                    <i class="icon-cog"></i>
                    <span>系统管理</span>
                </a>
            </li>
            
        </ul>
    </div>
    <!-- end sidebar -->
