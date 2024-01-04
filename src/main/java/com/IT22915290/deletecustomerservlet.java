package com.IT22915290;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deletecustomerservlet
 */
@WebServlet("/deletecustomerservlet")
public class deletecustomerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("purid");
		boolean isTrue;
		
		isTrue = purchaseDButill.deleteCustomer(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("./pages/IT22915290/plan.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<purchase> purdetails = purchaseDButill.getCustomerDetails(id);
			request.setAttribute("purdetails", purdetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("./pages/IT22915290/useraccount.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}

