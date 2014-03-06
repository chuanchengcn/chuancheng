<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<meta charset="utf-8" />
 <title>传承。鉴宝后台管理系统</title> 
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="<c:url value="/resources/img/logo_16.ico"/>">
<!-- bootstrap -->
<link href="<c:url value="/resources/admin/css/bootstrap/bootstrap.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/admin/css/bootstrap/bootstrap-responsive.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/admin/css/bootstrap/bootstrap-overrides.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/admin/css/common.css"/>" rel="stylesheet">
<!-- lib -->
<link href="<c:url value="/resources/admin/css/lib/jquery-ui-1.10.2.custom.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/admin/css/prettyPhoto.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/admin/js/google-code-prettify/prettify.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/admin/css/font-face.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/admin/css/lib/bootstrap-wysihtml5.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/admin/css/lib/uniform.default.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/admin/css/lib/select2.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/admin/css/lib/bootstrap.datepicker.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/admin/css/lib/font-awesome.css"/>" rel="stylesheet">
<!-- global styles -->
<link href="<c:url value="/resources/admin/css/layout.css"/>" rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/admin/css/elements.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/admin/css/icons.css"/>" rel="stylesheet">
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	<script type="text/javascript" src="<c:url value="/resources/admin/js/initWeb.js" />"></script> 
    <script type="text/javascript" language="javascript">
        function getRootPath(){  
            //获取当前网址，如： http://localhost:8080/taotaoti/index.jsp
            var curWwwPath=window.document.location.href;  
            //获取主机地址之后的目录，如： taotaoti/index.jsp
            var pathName=window.document.location.pathname;  
            var pos=curWwwPath.indexOf(pathName);  
            //获取主机地址，如： http://localhost:8080  
            var localhostPaht=curWwwPath.substring(0,pos);  
            //获取带"/"的项目名，如：/taotaoti  
            var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);  
            return(localhostPaht+projectName);  
        }  
        Init.webUrl=getRootPath();
    </script>
    
   
