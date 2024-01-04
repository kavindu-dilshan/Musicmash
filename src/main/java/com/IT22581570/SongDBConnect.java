package com.IT22581570;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SongDBConnect {

    static String url = "jdbc:mysql://localhost:3306/musicmash_db";
    static String username = "root";
    static String password = "3306";

    public static Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
            System.out.println("Database connection is not success.");
        }
        return con;
    }
}
