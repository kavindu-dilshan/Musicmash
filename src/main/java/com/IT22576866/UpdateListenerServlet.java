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
 * Servlet implementation class UpdateListenerServlet
 */
@WebServlet("/UpdateListenerServlet")
public class UpdateListenerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String id = request.getParameter("lisid");				//pass data from jsp to servlet & assign to variables
		String fname = request.getParameter("f_name");
		String lname = request.getParameter("l_name");
		String phone  = request.getParameter("phone");
		String email = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		//callig updatelistener method in ListenerDBUtill 
		
		
		boolean isTrue; //create boolean variable for catch boolean value
		
		isTrue = ListenerDBUtil.updatelistener(id, fname, lname, phone, email, username, password);
		
		if(isTrue == true) {
			
			List<Listener> lisDetails = ListenerDBUtil.getRetrieveDetails(id);		//calling method in ListenerDBUtil
			request.setAttribute("lisDetails", lisDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("/pages/IT22576866/listeneraccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Listener> lisDetails = ListenerDBUtil.getRetrieveDetails(id);		//calling method in ListenerDBUtil
			request.setAttribute("lisDetails", lisDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("/pages/IT22576866/listeneraccount.jsp");
			dis.forward(request, response);
		}
	}

}








