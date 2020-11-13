package com.hn.org;


import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hn.org.bean.Member;
import com.hn.org.db.DBManager;


@WebServlet("/List")
public class list extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    
    public list() {
        super();
        
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //response.getWriter().append("Served at: ").append(request.getContextPath());
         //ctrl + shift + o import 자동가져오기 및 정리 
         DBManager dbm= new DBManager();
         // ctrl + 1
         ArrayList<Member> al =dbm.select();
         request.setAttribute("list",al);
         
         RequestDispatcher rd = request.getRequestDispatcher("list.jsp");
         rd.forward(request,  response);
   }

   
   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
   }

}