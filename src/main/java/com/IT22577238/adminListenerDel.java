package com.IT22577238;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminListenerDel")
public class adminListenerDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String id = request.getParameter("listener_id");
		
		boolean isTrue;
		
		isTrue = adminDBUtil.deleteListener(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("./pages/IT22577238/listenerManage.jsp"); //Going to register page*********************
			dispatcher.forward(request, response);
		}
		else {				
			
			out.println("<script type = 'text/javascript'>");
			out.println("alert ('Input Valid ID Number');");
			out.println("location = './pages/admin/listenerManage.jsp'");
			out.println("</script>");
		}
	
	}

}
