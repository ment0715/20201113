package com.hn.org;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetRequestServlet
 */
@WebServlet("/GetRequestServlet")
public class GetRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public GetRequestServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher rd = request.getRequestDispatcher("getRequestservlet.jsp");
		rd.forward(request,  response);
		// 이구문은 책의 마지막 쪾에 나오는데 자바파일에 들렸다가 jsp 파일로 이동 서블릿들렸다가 간다..
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
