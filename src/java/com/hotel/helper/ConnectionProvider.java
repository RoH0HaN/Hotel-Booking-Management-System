package com.hotel.helper;

import java.sql.*;

public class ConnectionProvider {
    
    private static Connection con;

    public static Connection getConnection() {
        try {
            //Driver Class Load
            if (con == null) {
                Class.forName("org.postgresql.Driver");
                con = DriverManager.getConnection("jdbc:postgresql://db.uvqlnvrimfnvbqsycyln.supabase.co:5432/postgres", "postgres", "Roh@n8145312848");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    } 
    
}
