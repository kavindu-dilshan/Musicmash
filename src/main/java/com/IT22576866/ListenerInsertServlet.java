package com.IT22576866;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "/ListenerInsertServlet", urlPatterns = {"/ListenerInsertServlet"})
@MultipartConfig(maxFileSize = 16177216)
public class ListenerInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	PrintWriter out;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		out=response.getWriter();
		int result = 0;
		
		String f_name = request.getParameter("f_name");		//save variable values come in listenerInsert.jsp
		String l_name = request.getParameter("L_name"); 
		String phone = request.getParameter("phone"); 
		String email = request.getParameter("email"); 
		String username = request.getParameter("username"); 
		String password = request.getParameter("pass"); 
		
		
		boolean isTrue;
		
		isTrue = ListenerDBUtil.insertListener(f_name, l_name, phone, email, username, password);
		
		if(isTrue == true) {			
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);		
		}
		else {			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
