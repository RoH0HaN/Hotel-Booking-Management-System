package com.hotel.dao;

import com.hotel.entities.User;
import java.sql.*;

public class UserDao {
    
    private Connection con;

    public UserDao(Connection con) {
        this.con=con;
    }
    
//    Get Use by User-Email & User-Password
    
    public boolean saveUser(User user){
        boolean check = false;
        
        try {
            // User database---->
            
            String Query = "insert into users(name,email,password) values (?,?,?)";
            PreparedStatement stmt = this.con.prepareStatement(Query);
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            
            stmt.executeUpdate();
            
            check = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return check;
    }
    
    public User getUserByEmainAndPassword(String email, String password){
        User user = null;
        
        try{
            String query="select * from users where email=? and password=?";
            PreparedStatement st = con.prepareStatement(query);
            st.setString(1, email);
            st.setString(2, password);
            ResultSet set = st.executeQuery();
            
            if(set.next()){
                user=new User();
                user.setName(set.getString("name"));
                user.setEmail(set.getString("email"));
                user.setPassword( set.getString("password"));
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return user;
    }
    
}
