/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Client;
import Model.Dao.ClientDao;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author kesh
 */
public class ClientDaoImpl implements ClientDao {

    @Override
    public void addClient(Client client) throws SQLException {
        DB.iud("INSERT INTO client (Client_Id, Email, Password, Fname, Lname, Address_NO, City, Province, Gender_id, ActiveStatus) "
                + "VALUES ('" + client.getClientId() + "', '" + client.getEmail() + "', '" + client.getPassword() + "', '" + client.getFname() + "',"
                + " '" + client.getLname() + "', '" + client.getAddress_no() + "', '" + client.getCity() + "', '" + client.getProvince() + "',"
                + " '" + client.getGenderId() + "', '" + client.getActiveStatus() + "' ) ");
    }

    @Override
    public void deleteClient(String clientId) throws SQLException {
        DB.iud("DELETE FROM client where Client_id = '" + clientId + "'");
    }

    @Override
    public Client getClientbyId(String clientId) throws SQLException {
        ResultSet client = DB.search("SELECT * FROM client WHERE Client_id = '" + clientId + "'");
        if (client.next()) {
            Client c = new Client();
            c.setClientId(client.getString("Client_Id"));
            c.setEmail(client.getString("Email"));
            c.setPassword(client.getString("Password"));
            c.setFname(client.getString("Fname"));
            c.setLname(client.getString("Lname"));
            c.setAddress_no(client.getString("Address_No"));
            c.setCity(client.getString("City"));
            c.setProvince(client.getString("Province"));
            c.setGenderId(client.getInt("Gender_Id"));
            c.setActiveStatus(client.getInt("ActiveStatus"));

            return c;

        } else {
            return null;
        }
    }

    @Override
    public Client getClientbyEmail(String email) throws SQLException {
        ResultSet client = DB.search("SELECT * FROM client WHERE Email = '" + email + "'");
        if (client.next()) {
            Client c = new Client();
            c.setClientId(client.getString("Client_Id"));
            c.setEmail(client.getString("Email"));
            c.setPassword(client.getString("Password"));
            c.setFname(client.getString("Fname"));
            c.setLname(client.getString("Lname"));
            c.setAddress_no(client.getString("Address_No"));
            c.setCity(client.getString("City"));
            c.setProvince(client.getString("Province"));
            c.setGenderId(client.getInt("Gender_Id"));
            c.setActiveStatus(client.getInt("ActiveStatus"));

            return c;

        } else {
            return null;
        }

    }

    @Override
    public Client getClientbyEmailAndPassword(String email, String password) throws SQLException {
            ResultSet client = DB.search("SELECT * FROM client WHERE Email = '" + email + "' AND Password = '" + password + "' ");
        if (client.next()) {
            Client c = new Client();
            c.setClientId(client.getString("Client_Id"));
            c.setEmail(client.getString("Email"));
            c.setPassword(client.getString("Password"));
            c.setFname(client.getString("Fname"));
            c.setLname(client.getString("Lname"));
            c.setAddress_no(client.getString("Address_No"));
            c.setCity(client.getString("City"));
            c.setProvince(client.getString("Province"));
            c.setGenderId(client.getInt("Gender_Id"));
            c.setActiveStatus(client.getInt("ActiveStatus"));

            return c;

        } else {
            return null;
        }
    }

    @Override
    public void updateClientEmail(String email, String cilentId) throws SQLException {
        DB.iud("UPDATE client SET Email='" + email + "' WHERE Client_Id = '" + cilentId + "'");
    }

    @Override
    public void updateClientPassword(String password, String cilentId) throws SQLException {
        DB.iud("UPDATE client SET Password='" + password + "' WHERE Client_Id = '" + cilentId + "'");
    }

    @Override
    public void updateClientFname(String fname, String cilentId) throws SQLException {
        DB.iud("UPDATE client SET Fname='" + fname + "' WHERE Client_Id = '" + cilentId + "'");
    }

    @Override
    public void updateClientLname(String lname, String cilentId) throws SQLException {
        DB.iud("UPDATE client SET Lname='" + lname + "' WHERE Client_Id = '" + cilentId + "'");
    }

    @Override
    public void updateClientAddressNo(String addressNo, String cilentId) throws SQLException {
        DB.iud("UPDATE client SET Address_No='" + addressNo + "' WHERE Client_Id = '" + cilentId + "'");
    }

    @Override
    public void updateClientCity(String city, String cilentId) throws SQLException {
        DB.iud("UPDATE client SET City='" + city + "' WHERE Client_Id = '" + cilentId + "'");
    }

    @Override
    public void updateClientProvince(String province, String cilentId) throws SQLException {
        DB.iud("UPDATE client SET Province='" + province + "' WHERE Client_Id = '" + cilentId + "'");
    }

    @Override
    public void updateClientGender(int gender, String cilentId) throws SQLException {
        DB.iud("UPDATE client SET Gender_Id='" + gender + "' WHERE Client_Id = '" + cilentId + "'");
    }

    @Override
    public void updateClientActiveStatus(int status, String cilentId) throws SQLException {
        DB.iud("UPDATE client SET ActiveStatus='" + status + "' WHERE Client_Id = '" + cilentId + "'");
    }

    @Override
    public String getLastId() throws SQLException {
       String id="";
       ResultSet cid=DB.search("SELECT Client_Id as cid FROM client ORDER BY Client_Id DESC LIMIT 1; ");
           
        if (cid.next()) {
            id=cid.getString("cid");
            return id;

        } else {
            return null;
        }
       
    }

}
