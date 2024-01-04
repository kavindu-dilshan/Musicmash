package com.IT22915290;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/customerInsert")
public class customerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String firstname = request.getParameter("fname");
		String lastname = request.getParameter("Lname");
		String email = request.getParameter("email");
		String plan = request.getParameter("plan");
		String amount = request.getParameter("amount");
		String autoincrement = request.getParameter("ai");
		String cardnumber = request.getParameter("cardnum");

				
		
		boolean isTrue;
		
		isTrue = purchaseDButill.insertcustomer(firstname,lastname,email,plan,amount,autoincrement,cardnumber);
		
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("/pages/IT22915290/sucess.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("./pages/IT22915290/unsucess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}

