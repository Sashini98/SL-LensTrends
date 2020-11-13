/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Client;
import java.sql.SQLException;



/**
 *
 * @author kesh
 */
public interface ClientDao {
    
    public void  addClient(Client client) throws SQLException;
    
    public void  updateClientEmail(String email, String cilentId) throws SQLException;
    public void  updateClientPassword(String password, String cilentId) throws SQLException;
    public void  updateClientFname(String fname, String cilentId) throws SQLException;
    public void  updateClientLname(String lname, String cilentId) throws SQLException;
    public void  updateClientAddressNo(String addressNo, String cilentId) throws SQLException;
    public void  updateClientCity(String city, String cilentId) throws SQLException;
    public void  updateClientProvince(String province, String cilentId) throws SQLException;
    public void  updateClientGender(int gender, String cilentId) throws SQLException;
    public void  updateClientActiveStatus(int status, String cilentId) throws SQLException;
        
    public void  deleteClient(String clientId) throws SQLException;
    
    public Client  getClientbyId(String clientId) throws SQLException;
    
    public Client  getClientbyEmail(String email) throws SQLException;
    public Client  getClientbyEmailAndPassword(String email, String password) throws SQLException;
    
    
}
