package com.IT22581570;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ArtistLogin")
public class ArtistLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("auser");
		String password = request.getParameter("apsw");
		
		boolean isTrue;
		
		isTrue = artistDBUtil.validateArtist(username, password);
		
		if(isTrue == true) {
			List<Artist> artDetails = artistDBUtil.getArtist(username);
			request.setAttribute("artDetails", artDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("./pages/IT22581570/artistAcc.jsp");
			dis.forward(request, response);
		}
		//Javascript error message
		else {
			out.println("<script type = 'text/javascript'>");
			out.println("alert ('Your username or password is incorrect');");
			out.println("location = './pages/IT22581570/artistAcc.jsp'");
			out.println("</script>");
		}
		
		
		
	}

}
