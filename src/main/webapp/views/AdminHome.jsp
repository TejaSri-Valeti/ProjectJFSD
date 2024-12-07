<%@ page import="com.klef.jfsd.springboot.Models.Admin"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%
    Admin adm = (Admin) session.getAttribute("admin");
    if (adm == null) {
        response.sendRedirect("sessionexpiry"); 
        return; 
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome, admin</title>
</head>
<body>
<%@ include file="admindashboard.jsp" %>
<div class="main-content" id="content">
          <h1>Welcome <%= adm.getUsername() %>!</h1>

     
    </div>
</body>
</html>
