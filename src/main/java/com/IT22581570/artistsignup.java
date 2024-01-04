package com.IT22581570;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/artistsignup")
public class artistsignup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				
				//Variables for save values from artist-signup.jsp
				String firstname = request.getParameter("art-fname");
				String lastname = request.getParameter("art-lname");
				String username = request.getParameter("art-uid");
				String email = request.getParameter("art-email");
				String password = request.getParameter("art-psw");
				
					
				// Call artistDBUtil insertListener method
				boolean insertSuccessart = artistDBUtil.insertArtist(firstname, lastname, username, email, password);
				
				RequestDispatcher dis;
				
				if (insertSuccessart) {
					dis = request.getRequestDispatcher("./index.jsp");
					dis.forward(request, response);
				}
				else {
					out.println("<script type = 'text/javascript'>");
					out.println("alert ('Sign up failed try again!');");
					out.println("location = './pages/IT22581570/artist-signup.jsp");
					out.println("</script>");
				}

	}

}
