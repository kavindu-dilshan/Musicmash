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

@WebServlet(name = "DeleteServlet", urlPatterns = {"/DeleteServlet"})
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String songIdString = request.getParameter("songId");
        
        if (songIdString != null && !songIdString.isEmpty()) {
            int songId = Integer.parseInt(songIdString);
            Connection con = null;
            PreparedStatement statement = null;

            try {
                con = SongDBConnect.getConnection();
                
                String sql = "DELETE FROM songs WHERE id = ?";
                
                statement = con.prepareStatement(sql);
                statement.setInt(1, songId);
                
                int rowsDeleted = statement.executeUpdate();

                if (rowsDeleted > 0) {
                    response.sendRedirect("./pages/IT22581570/DeleteSuccess.jsp");
                } else {
                    response.sendRedirect("./pages/IT22581570/ArtistError.jsp");
                }
                
            } catch (SQLException e) {
                e.printStackTrace();
                response.sendRedirect("./pages/IT22581570/ArtistError.jsp");
                
            } finally {
                try {
                    if (statement != null) {
                    	statement.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            response.sendRedirect("ArtistError.jsp");
        }
    }
}
