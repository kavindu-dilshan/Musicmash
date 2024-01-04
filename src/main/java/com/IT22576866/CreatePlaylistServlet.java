package com.IT22576866;

import java.io.IOException;
//import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CreatePlaylistServlet
 */
@WebServlet("/CreatePlaylistServlet")
public class CreatePlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String playlistname = request.getParameter("plistname");		//catch the variable's values in createPlaylist.jsp file
		String description = request.getParameter("description");
		
		
		boolean isTrue;		//variable for catch returned boolean value from createPlaylist method
		
		//callig createPlaylist method in ListenerDBUtill
		
		isTrue = ListenerDBUtil.createPlaylist(playlistname, description);		//calling and assign value
		
		if(isTrue == true) {		//check true or false
		
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");		//servlet to playlist.jsp file
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
