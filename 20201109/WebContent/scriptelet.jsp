<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	String a = "10";
	public String doA(){
		return a + a;	
	}
	
%>
<% out.println("a = " +a); %>
<br/>
doA()= <%=doA() %>
</body>
</html>