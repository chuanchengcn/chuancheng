<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <c:import url="/WEB-INF/tags/admin/header_title.jsp"/>
  <c:import url="/WEB-INF/tags/admin/empty_footer.jsp"/> 	
</head>

<body>
			<c:import url="/WEB-INF/tags/admin/top_header.jsp"/>
            <c:import url="/WEB-INF/tags/admin/sidebar_header.jsp"/>
		    <sitemesh:write property="body"/>
		    <c:import url="/WEB-INF/tags/admin/bottom_footer.jsp"/>
         
</body>
</html>