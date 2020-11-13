<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String id = (String) session.getAttribute("id");
    	String pw = (String) session.getAttribute("pw");
    	
    	out.println("id = " + id);
    	out.println("pw = " + pw);
    	
    	Cookie[] cook = request.getCookies();
    	for (int i = 0; i < cook.length; i++) {
    		String name = cook[i].getName();
    		String value = cook[i].getValue();
    		System.out.println("name= " + name);
    	
    	}
    	
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>