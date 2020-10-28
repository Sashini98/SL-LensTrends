/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;



/**
 *
 * @author Madusha
 */
public class Client {
    
    String clientId;
    String email;
    String password;
    String fname;
    String lname;
    String address_no;
    String city;
    String province;
    int genderId;

    public Client() {
    }

    public Client(String clientId, String email, String password, String fname, String lname, String address_no, String city, String province, int genderId) {
        this.clientId = clientId;
        this.email = email;
        this.password = password;
        this.fname = fname;
        this.lname = lname;
        this.address_no = address_no;
        this.city = city;
        this.province = province;
        this.genderId = genderId;
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getAddress_no() {
        return address_no;
    }

    public void setAddress_no(String address_no) {
        this.address_no = address_no;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public int getGenderId() {
        return genderId;
    }

    public void setGenderId(int genderId) {
        this.genderId = genderId;
    }
    
    
}

