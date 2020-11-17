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

            a.setAdminId(AdminEmail.getString("Admin_id"));
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

            a.setAdminId(AdminEmail.getString("Admin_id"));
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
        DB.iud("INSERT INTO admin (Admin_Id, Email, Fname, Lname, Mobile, Address_NO, City, Province, Password, Type, Gender_id) "
                + "VALUES ('" + admin.getAdminId() + "', '" + admin.getEmail() + "', '" + admin.getFname() + "',"
                + " '" + admin.getLname() + "', '" + admin.getMobile()+ "' , '" + admin.getAddress_no() + "', '" + admin.getCity() + "', '" + admin.getProvince() + "',"
                + " '" + admin.getPassword() + "', '" + admin.getType() + "','" + admin.getGenderId() + "' ) ");
                

    }

    @Override
    public void updateAdminEmail(String email, String adminId) throws SQLException {
        DB.iud("UPDATE admin SET Email='" + email + "' WHERE Admin_Id = '" + adminId + "'");
    }

    @Override
    public void updateAdminPassword(String password, String adminId) throws SQLException {
        DB.iud("UPDATE admin SET Password= '" + password + "' WHERE Admin_Id = '" + adminId + "'");
    }

    @Override
    public void updateAdminFname(String fname, String adminId) throws SQLException {
        DB.iud("UPDATE admin SET Fname='" + fname + "' WHERE Admin_Id= '" + adminId + "'");
    }

    @Override
    public void updateAdminLname(String lname, String adminId) throws SQLException {
        DB.iud("UPDATE admin SET Lname='" + lname + "' WHERE Admin_Id= '" + adminId + "'");
    }

    @Override
    public void updateAdminMobile(String mobile, String adminId) throws SQLException {
        DB.iud("UPDATE admin SET Mobile='" + mobile + "' WHERE Admin_Id = '" + adminId + "'");
    }

    @Override
    public void updateAdminAddressNo(String addressNo, String adminId) throws SQLException {
        DB.iud("UPDATE admin SET Address_No='" + addressNo + "' WHERE Admin_Id = '" + adminId + "'");
    }

    @Override
    public void updateAdminCity(String city, String adminId) throws SQLException {
        DB.iud("UPDATE admin SET City='" + city + "' WHERE Admin_Id = '" + adminId + "'");
    }

    @Override
    public void updateAdminProvince(String province, String adminId) throws SQLException {
        DB.iud("UPDATE admin SET Province='" + province + "' WHERE Admin_Id = '" + adminId + "'");
    }

    @Override
    public void updateAdminGender(int gender, String adminId) throws SQLException {
        DB.iud("UPDATE admin SET Gender_Id='" + gender + "' WHERE Admin_Id = '" + adminId + "'");
    }

    @Override
    public String getLastId() throws SQLException {
       String id="";
       ResultSet aid=DB.search("SELECT Admin_Id as aid FROM admin ORDER BY Admin_Id DESC LIMIT 1; ");
      
       
        if (aid.next()) {
            id=aid.getString("aid");
            return id;

        } else {
            return null;
        }
       
    }

}
