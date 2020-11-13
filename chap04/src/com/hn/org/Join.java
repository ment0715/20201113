package com.hn.org;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hn.org.bean.Member;
import com.hn.org.db.DBManager;

@WebServlet("/Join")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Join() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("utf-8"); //요청했는 파라메타(name,gender,id)utf-8방식으로..
		response.setContentType("text/html; charset=utf-8"); //응답하는(웹페이지에서 출력되는)utf-8..
		

//		PrintWriter out = response.getWriter();
//	    out.println("한글 잘되나");
		
		String pname = request.getParameter("name");
		String pgender = request.getParameter("gender");
		String pid = request.getParameter("id");
		String ppwd = request.getParameter("pwd");
		String pcpwd = request.getParameter("cpwd");
		String paddr = request.getParameter("addr");
		String pphone = request.getParameter("phone");
		String pemail = request.getParameter("email");
		String[] phobby = request.getParameterValues("hobby");
		String phos = "";
		for( String temp : phobby)
			phos += temp;
		
			
		//	    데이터저장
		DBManager dm = new DBManager();
		dm.insert(new Member("",pname,pgender,pid,ppwd,pcpwd,paddr,pphone,pemail,phos));
		
	    RequestDispatcher rd = request.getRequestDispatcher("join.jsp");
	    rd.forward(request,  response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
