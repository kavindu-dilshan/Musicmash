package com.IT22576866;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteListenerServlet
 */
@WebServlet("/DeleteListenerServlet")
public class DeleteListenerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("lisid");
		
		boolean isTrue;
		
		isTrue = ListenerDBUtil.deleteListener(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/IT22576866/listeneraccount.jsp"); //Going to register page*********************
			dispatcher.forward(request, response);
		}
		else {
			
			List<Listener> lisDetails = ListenerDBUtil.getRetrieveDetails(id);		//calling method in ListenerDBUtil
			request.setAttribute("lisDetails", lisDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("/pages/IT22576866/listeneraccount.jsp");
			dis.forward(request, response);
		}
	}

}
