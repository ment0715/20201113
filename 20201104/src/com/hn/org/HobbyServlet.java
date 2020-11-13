package com.hn.org;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HobbyServlet
 */
@WebServlet("/HobbyServlet") // 여기가 톰켓에 연동되서 여기로 html에 있는 곳가 같아야
public class HobbyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public HobbyServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		PrintWriter out = response.getWriter();
//		System.out.println("get 방식 요청됨");

		String pname = request.getParameter("name");
		String[] phobby = request.getParameterValues("hobby");

		System.out.println("pname = " + pname);
		out.println("<html>");
		out.println("<head>");
		out.println("<style>table{ border:1px solid black; } </style>");
		out.println("</head>");
		out.println("<body>");
		out.println("이름은 = " + pname + "입니다");
		out.println("<hr>");
		if (phobby == null) {
			System.out.println("선택된 취미가 없다");
			out.println("선택된 취미가 없습니다.");
		} else {
			out.println("선택한취미");
			out.println("<table>");
			for (int i = 0; i < phobby.length; i++) {
				System.out.println("phobby = " + phobby[i]);
				out.println("<tr>");
				out.println("<td>");
				out.println(phobby[i]);
				out.println("</td>");
				out.println("</tr>");
			}
			out.println("<table>");
		}
		out.println("<hr>");
		out.println("</body>");
		out.println("</html>");

//		System.out.println("get 방식 요청됨");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
//		System.out.println("post 방식 요청됨");
	}

}
