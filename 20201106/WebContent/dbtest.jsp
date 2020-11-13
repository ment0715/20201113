<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int a = 10;
	// DB 연결 유지 객체
	Connection conn = null;
	// DB sql 작성 객체
	PreparedStatement pstmt = null;
	
	try{
		// ojdbc6.jar 파일 추가 확인
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:xe","hr","1234");
		out.println("연결성공");
		pstmt = conn.prepareStatement("insert into 실험테이블" + 
										"(번호,이름,성별) " +
										"values " +
										"(1,'하나','여')");
		pstmt.executeUpdate();
	}catch(Exception e){
		e.printStackTrace();
		out.println("연결실패");
		
	}
	finally{
		if(pstmt !=null)
			pstmt.close();
		if(conn != null)
		conn.close();
	}
%>
</body>
</html>