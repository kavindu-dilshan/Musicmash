package com.IT22915290;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updatecustomerservlet")
public class updatecustomerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("purid");
		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String plan = request.getParameter("plan");
		String amount = request.getParameter("amount");
		String auto = request.getParameter("autoincrement");
		String cn = request.getParameter("cardnumber");

		boolean isTrue;
		
		isTrue = purchaseDButill.updatecustomer(id, fname, lname, email, plan, amount, auto, cn);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("./pages/IT22915290/sucess.jsp");
			dis.forward(request, response);
			
			/*List<purchase> purdetails = purchaseDButill.getpurchasedetails(id);
			request.setAttribute("purdetails", purdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);*/
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("./pages/IT22915290/unsucess.jsp");
			dis.forward(request, response);
			
			/*List<purchase> purdetails = purchaseDButill.getpurchasedetails(id);
			request.setAttribute("purdetails", purdetails);
			
		   RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);*/
		}
	}
	
}