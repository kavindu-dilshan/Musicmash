package com.IT22581570;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "UpdateServlet", urlPatterns = {"/UpdateServlet"})
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        String songIdString = request.getParameter("id");
        String songTitle = request.getParameter("title");
        String artistName = request.getParameter("artist");
        String genreType = request.getParameter("genre");

        if (songIdString != null && !songIdString.isEmpty()) {
            try {
                int songId = Integer.parseInt(songIdString);
                Connection con = SongDBConnect.getConnection();
                String sql = "UPDATE songs SET title = ?, artist = ?, genre = ? WHERE id = ?";
                
                PreparedStatement statement = con.prepareStatement(sql);
                statement.setString(1, songTitle);
                statement.setString(2, artistName);
                statement.setString(3, genreType);
                statement.setInt(4, songId);
                
                int rowsUpdated = statement.executeUpdate();
                statement.close();
                con.close();

                if (rowsUpdated > 0) {
                    response.sendRedirect("./pages/IT22581570/EditSuccess.jsp");
                } else {
                    response.sendRedirect("./pages/IT22581570/ArtistError.jsp");
                }
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("ArtistError.jsp");
            }
        } else {
            response.sendRedirect("ArtistError.jsp");
        }
    }
}

