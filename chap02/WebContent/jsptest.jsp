<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = "abcd";
	int i = 0;
	int j = 1;
	boolean test = false;
	
	out.println("id = " + id + "<br>");
	
	id = i == j ? "같다" : "다르다";
	out.println("id =" + id + "<br>");
	
	out.println("test =" + test + "<br>");
	%>
</body>
</html>