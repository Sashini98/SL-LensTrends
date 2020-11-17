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

    public Admin getAdminByEmail(String email) throws SQLException;
    public Admin getAdminByEmailAndPassword(String email, String password) throws SQLException;
    public void addAdmin(Admin admin) throws SQLException;
    
    public int getLastId() throws SQLException;


}
