package com.hotel.dao;

import com.hotel.entities.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDao {

    private Connection con;

    public AdminDao(Connection con) {
        this.con = con;
    }

    public Admin getAdminByUsernameAndPassword(String username, String password) {
        Admin admin = null;

        try {
            String query = "select * from admin where admin_username=? and admin_password=?";
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet set = st.executeQuery();

            if (set.next()) {
                admin = new Admin();
                admin.setName(set.getString("name"));
                admin.setUsername(set.getString("admin_username"));
                admin.setEmail(set.getString("email"));
                admin.setPassword(set.getString("admin_password"));
                admin.setId(set.getInt("id"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return admin;
    }
}
