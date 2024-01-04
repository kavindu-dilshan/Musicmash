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
 * Servlet implementation class PlaylistServlet
 */
@WebServlet("/PlaylistServlet")
public class PlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	
			List<Playlist> PlaylistDetails = ListenerDBUtil.getPlaylist();
			request.setAttribute("PlaylistDetails", PlaylistDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("/pages/IT22576866/playlist.jsp");
			dis.forward(request, response);

	}

}
