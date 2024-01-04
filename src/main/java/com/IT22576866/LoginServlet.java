package com.IT22576866;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		
		isTrue = ListenerDBUtil.validate(username, password);
		
		if(isTrue == true) {
			List<Listener> lisDetails = ListenerDBUtil.getListener(username);
			request.setAttribute("lisDetails", lisDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("/pages/IT22576866/listeneraccount.jsp");
			dis.forward(request, response);
		}
		//Javascript error message
		else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert ('Your username or password is incorrect');");
			out.println("location = './pages/IT22576866/listenerLogin.jsp'");
			out.println("</script>");
		}
	}

}


















