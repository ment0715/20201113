<%@page import="com.hn.org.db.DBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   DBManager dbm = new DBManager();

String id = request.getParameter("id");
String pw = request.getParameter("pw");

out.println("id = " + id);
out.println("pw = " + pw);

boolean loginTest = dbm.checkLogin(id, pw);
if (loginTest) {
   out.println("로그인 성공");
   session.setAttribute("id", id);
   session.setAttribute("pw", pw);
} else {
   out.println("로그인 실패");
}

	String ck = request.getParameter("ck");

	if(ck !=null){
	if(ck.equals("true")){ 
		Cookie cookie = new Cookie("id",id);
		response.addCookie(cookie);
	}
	}else{
		Cookie cookie = new Cookie("id",id);
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	}



response.sendRedirect("index.jsp");
%>