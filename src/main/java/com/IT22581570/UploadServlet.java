package com.IT22581570;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet(name = "UploadServlet", urlPatterns = {"/UploadServlet"})
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String folderName = "resources";
        String uploadPath = request.getServletContext().getRealPath("") + folderName;
        File direction = new File(uploadPath);
        if (!direction.exists()) {
        	direction.mkdirs();
        }

        Part filePart = request.getPart("file");
        String songTitle = request.getParameter("title");
        String artistName = request.getParameter("artist");
        String genreType = request.getParameter("genre");
        String fileName = filePart.getSubmittedFileName();

        InputStream is = filePart.getInputStream();
        Files.copy(is, Paths.get(uploadPath, fileName), StandardCopyOption.REPLACE_EXISTING);

        try (Connection con = SongDBConnect.getConnection()) {
        	
            String sql = "INSERT INTO songs(title, artist, genre, filename) VALUES(?,?,?,?)";
            
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, songTitle);
            statement.setString(2, artistName);
            statement.setString(3, genreType);
            statement.setString(4, fileName);

            int status = statement.executeUpdate();
            
            if (status > 0) {
                request.getRequestDispatcher("./pages/IT22581570/UploadSuccess.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
