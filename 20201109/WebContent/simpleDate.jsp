
<%@page import="java.util.Date"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "include.html" %>

<%
//taglib 지시자

//include 한번더

// 소스 읽는거는 할수 있는데 개발 도구 사용방법...
//Toad sql...

// 메서드 선언과 , 스크립트릿

//db연결객체

//Connection
//prepareStatement
//ResultSet


	Date today = new Date();
	out.println("today = " + today + "<br/>");
	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyymmdd");
	SimpleDateFormat sdf2 = new SimpleDateFormat("hh:mm.ss");
	
	out.println("sdf1 = " + sdf1.format(today));
	out.println("sdf2 = " + sdf2.format(today));
%>
<%@ include file = "include.jsp" %>
</body>
</html>