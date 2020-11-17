/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Admin;
import Model.Dao.AdminDao;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author kesh
 */
public class AdminDaoImpl implements AdminDao {

    @Override
    public Admin getAdminByEmail(String email) throws SQLException {
        ResultSet AdminEmail = DB.search("SELECT * FROM Admin Where Email = '" + email + "' ");
        
        if (AdminEmail.next()) {
            Admin a = new Admin();
            
            a.setAdminId(AdminEmail.getInt("Admin_id"));
            a.setType(AdminEmail.getString("Type"));
            a.setEmail(AdminEmail.getString("Email"));
            a.setPassword(AdminEmail.getString("Password"));
            
            return a;
        } else {
            return null;
        }
        
    }

    @Override
    public Admin getAdminByEmailAndPassword(String email, String password) throws SQLException {
        ResultSet AdminEmail = DB.search("SELECT * FROM Admin Where Email = '" + email + "' AND Password = '" + password + "' ");
        
        if (AdminEmail.next()) {
            Admin a = new Admin();
            
            a.setAdminId(AdminEmail.getInt("Admin_id"));
            a.setType(AdminEmail.getString("Type"));
            a.setEmail(AdminEmail.getString("Email"));
            a.setPassword(AdminEmail.getString("Password"));
            
            return a;
        } else {
            return null;
        } 
    }

    @Override
    public void addAdmin(Admin admin) throws SQLException {
        DB.iud("INSERT INTO admin (Admin_Id, Email, Password, Type)" + "VALUES ('" + admin.getAdminId() + "', '" + admin.getEmail() + "', '" + admin.getPassword() + "', '" + admin.getType() +"' ) ");
    }

    @Override
    public int getLastId() throws SQLException {
        int id=0;
       ResultSet aid=DB.search("SELECT Admin_Id as aid FROM admin ORDER BY admin_Id DESC LIMIT 1; ");
      
       
        if (aid.next()) {
            id=aid.getInt("aid");
            return id;

        } else {
            return 0;
        }
    }

}
