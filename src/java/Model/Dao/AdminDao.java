/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Admin;
import java.sql.SQLException;

/**
 *
 * @author kesh
 */
public interface AdminDao {
    
    public void  addAdmin(Admin admin) throws SQLException;
    
    public void  updateAdminEmail(String email, String adminId) throws SQLException;
    public void  updateAdminPassword(String password, String adminId) throws SQLException;
    public void  updateAdminFname(String fname, String adminId) throws SQLException;
    public void  updateAdminLname(String lname, String adminId) throws SQLException;
    public void  updateAdminMobile(String mobile, String adminId) throws SQLException;
    public void  updateAdminAddressNo(String addressNo, String adminId) throws SQLException;
    public void  updateAdminCity(String city, String adminId) throws SQLException;
    public void  updateAdminProvince(String province, String adminId) throws SQLException;
    public void  updateAdminGender(int gender, String adminId) throws SQLException;
    

    public Admin getAdminByEmail(String email) throws SQLException;
    public Admin getAdminById (String adminId) throws SQLException;
    public Admin getAdminByEmailAndPassword(String email, String password) throws SQLException;

    public String getLastId() throws SQLException;


}
