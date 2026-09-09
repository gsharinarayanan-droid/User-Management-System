<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import ="com.jsp.bean.*,com.jsp.dao.UserDao"%>
<jsp:useBean id ="u" class ="com.jsp.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<% 
out.println("Email: "+u.getEmail());
int i=UserDao.update(u);  
response.sendRedirect("viewusers.jsp");  
%>  
</body>
</html>