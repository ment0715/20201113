<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>파일 내용 읽어오기 4가지 방법</h1>
	<h3>절대경로</h3>
	<%
		String path = "C:\\0_Study\\JAVA\\20201110\\WebContent\\app.txt";
	out.println("path = " + path);
	path= application.getRealPath("app.txt");
	//path= application.getResource("app.txt");
	//path= application.getResourceAsStream("app.txt");
	BufferedReader br1 = new BufferedReader(new FileReader(path));

	try {
		String txt = null;
		while ((txt = br1.readLine()) != null) {
			if(txt.contains("jpg")){
				out.println("<img src= '"+txt+"' widt= '100'/>");
			}else{
				out.println(txt + "<Br/>");
			}
			
		}
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		br1.close();
	}
	%>
	<h3>getRealPath</h3>

	<h3>getResource</h3>

	<h3>getResourceAsStream</h3>
</body>
</html>