/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author acer
 */
public class DB {
    
    private static Connection con;
    
    public static synchronized Connection getConnection(){
        
        if(con == null){
        
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3307/sl_lens_trends", "root", "1234");
            } catch (ClassNotFoundException ex) {
                ex.printStackTrace();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
            
        }
        return con;
    
    }
    
    public static void iud(String query) throws SQLException{
        getConnection();
        getConnection().createStatement().executeUpdate(query);
    
    }
    
    public static ResultSet search(String query) throws SQLException{
        getConnection();
        return getConnection().createStatement().executeQuery(query);
            
    }
    
}
