/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;


import java.util.Date;

/**
 *
 * @author Madusha
 */
public class Photographer{
    
    String photographerId;
    String email;
    String password;
    String fname;
    String lname;
    String address_no;
    String city;
    String province;
    Date joined_date;
    int genderId;
    int planId;
    String mobile;
    String website;
    String bio;
    String fielsOfdInterest;
    int postalCode;
    

    public Photographer() {
    }

    public Photographer(String photographerId, String email, String password, String fname, String lname, String address_no, String city, String province, Date joined_date, int genderId, int planId, String mobile, String website, String bio, String fielsOfdInterest, int postalCode) {
        this.photographerId = photographerId;
        this.email = email;
        this.password = password;
        this.fname = fname;
        this.lname = lname;
        this.address_no = address_no;
        this.city = city;
        this.province = province;
        this.joined_date = joined_date;
        this.genderId = genderId;
        this.planId = planId;
        this.mobile = mobile;
        this.website = website;
        this.bio = bio;
        this.fielsOfdInterest = fielsOfdInterest;
        this.postalCode = postalCode;
    }

    public String getPhotographerId() {
        return photographerId;
    }

    public void setPhotographerId(String photographerId) {
        this.photographerId = photographerId;
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

    public Date getJoined_date() {
        return joined_date;
    }

    public void setJoined_date(Date joined_date) {
        this.joined_date = joined_date;
    }

    public int getGenderId() {
        return genderId;
    }

    public void setGenderId(int genderId) {
        this.genderId = genderId;
    }

    public int getPlanId() {
        return planId;
    }

    public void setPlanId(int planId) {
        this.planId = planId;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getFielsOfdInterest() {
        return fielsOfdInterest;
    }

    public void setFielsOfdInterest(String fielsOfdInterest) {
        this.fielsOfdInterest = fielsOfdInterest;
    }

    public int getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(int postalCode) {
        this.postalCode = postalCode;
    }
    

    
    
}