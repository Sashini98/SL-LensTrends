/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author kesh
 */
public class Admin {
    public static final int MALE = 1;
    public static final int FEMALE = 0;

    private String adminId;
    private String email;
    private String fname;
    private String lname;
    private String mobile;
    private String address_no;
    private String city;
    private String province;
    private String password;
    private String type;
    private int genderId;

    public Admin() {
    }
    
    

    public Admin(String adminId, String email, String fname, String lname, String mobile, String address_no, String city, String province, String password, String type, int genderId) {
        this.adminId = adminId;
        this.email = email;
        this.fname = fname;
        this.lname = lname;
        this.mobile = mobile;
        this.address_no = address_no;
        this.city = city;
        this.province = province;
        this.password = password;
        this.type = type;
        this.genderId = genderId;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getGenderId() {
        return genderId;
    }

    public void setGenderId(int genderId) {
        this.genderId = genderId;
    }

    

}