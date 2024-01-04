package com.IT22577238;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/CountUsersServlet")
public class CountUsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int recordCount = adminDBUtil.getCountOfRecords();
        request.setAttribute("recordCount", recordCount);
        request.getRequestDispatcher("/pages/admin/admin.jsp").forward(request, response);
			
	}

}
