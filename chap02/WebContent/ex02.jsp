<%@page import="chap02.MyA"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
3단 출력<br>
<%
 	for(int i = 1; i < 10; i++){
 		out.println("3"+"*"+ i + "=" +  3 * i + "<br>");
 		if (i % 3 == 0){
 			out.println("<br>");
 		}
 	}

List<String> list = new ArrayList();
list.add(0, "악");
list.add(1, "어려워" );
list.add(2, "나도 잘하고싶어..");
list.add(3, "하나님 저도 개발자 되게 해주세요");
for(int i = 0; i <list.size(); i++) {
	out.println( list.get(i));
	out.println("<br>");
}

	List<MyA> my_Alist = new ArrayList();
	MyA myA1 = new MyA();
	myA1.setId("aaa");
	myA1.setPassword("apassword");
	my_Alist.add( 0, myA1);
	
	MyA myA2 = new MyA();
	myA2.setId("bbb");
	myA2.setPassword("bpassword");
	my_Alist.add( 1, myA2);
	
	MyA myA3 = new MyA();
	myA3.setId("ccc");
	myA3.setPassword("cpassword");
	my_Alist.add( 2, myA3);
	
	out.println("<br>");
	
	for(int i = 0; i < my_Alist.size(); i++){
		out.println("my_Alist.get(i) = " + my_Alist.get(i).toString());
		out.println("<br>");
	}
%>
</body>
</html>