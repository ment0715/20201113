<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- getCookies() 8장가서 한단원으로 나옵니다 -->
	<%
	//request.get
	request = (HttpServletRequest)pageContext.getRequest();
   String filename = request.getParameter("file");

   if(filename != null){
      if(filename.equals("b"))
      {
         response.sendRedirect("b.jsp");
      }
      else if(filename.equals("c"))
      {
         response.sendRedirect("c.jsp");
      }
   }
      else{
         out.println("무슨 페이지로 이동할건지 파라메타로 넘겨주세요");
      }
   
%>

</body>
</html>