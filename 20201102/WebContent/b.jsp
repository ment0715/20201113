<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
bbbbbbbbbbbbbbbbbbbb

<%
	String a = request.getParameter("number");
	out.println( a + " 단 입니다.");

	int gugudan = Integer.parseInt(a);
	
	for(int i = 1; i < 10; i++){
		out.println(a+"*"+i+"="+(gugudan*i));
	}
%>
</body>
</html>