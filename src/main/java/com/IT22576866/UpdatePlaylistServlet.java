package com.IT22576866;

import java.io.IOException;
//import java.util.List;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdatePlaylistServlet
 */
@WebServlet("/UpdatePlaylistServlet")
public class UpdatePlaylistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String pListName = request.getParameter("plistName");
		String description = request.getParameter("description");
		
		
		boolean isTrue; //create boolean variable for catch boolean value
		
		isTrue = ListenerDBUtil.updateplaylist(pListName, description);
		
		if(isTrue == true) {
			
			List<Playlist> PlaylistDetails = ListenerDBUtil.getplaylistDetails(pListName);		//calling method in ListenerDBUtil
			request.setAttribute("PlaylistDetails", PlaylistDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("/pages/IT22576866/playlist.jsp");
			dis.forward(request, response);
		}
		else {
			List<Playlist> PlaylistDetails = ListenerDBUtil.getplaylistDetails(pListName);		//calling method in ListenerDBUtil
			request.setAttribute("PlaylistDetails", PlaylistDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("/pages/IT22576866/playlist.jsp");
			dis.forward(request, response);
		}
	}

}
