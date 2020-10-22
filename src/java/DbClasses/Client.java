/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DbClasses;

/**
 *
 * @author Madusha
 */
public class Client extends Users {
    
    int clientId;
    String email;
    String password;
    String fname;
    String lname;
    String address_no;
    String street;
    String city;
    int genderId;

    public Client() {
    }
    

    public Client(int clientId, String email, String password, String fname, String lname, String address_no, String street, String city, int genderId) {
        this.clientId = clientId;
        this.email = email;
        this.password = password;
        this.fname = fname;
        this.lname = lname;
        this.address_no = address_no;
        this.street = street;
        this.city = city;
        this.genderId = genderId;
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
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

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getGenderId() {
        return genderId;
    }

    public void setGenderId(int genderId) {
        this.genderId = genderId;
    }
    
    
    
    
}

