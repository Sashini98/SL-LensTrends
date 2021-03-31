/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Photographer;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author Madusha
 */
public interface PhotographerDao {
    
    public void  addPhotographer(Photographer photographer) throws SQLException;
    
    public void  updatePhotographerEmail(String email, String photographerId) throws SQLException;
    public void  updatePhotographerPassword(String password, String photographerId) throws SQLException;
    public void  updatePhotographerFname(String fname, String photographerId) throws SQLException;
    public void  updatePhotographerLname(String lname, String photographerId) throws SQLException;
    public void  updatePhotographerAddressNo(String addressNo, String photographerId) throws SQLException;
    public void  updatePhotographerCity(String city, String photographerId) throws SQLException;
    public void  updatePhotographerProvince(String province, String photographerId) throws SQLException;
    public void  updatePhotographerJoinedDate(Date joinedDate, String photographerId ) throws SQLException;
    public void  updatePhotographerGender(int gender, String photographerId) throws SQLException;
    public void  updatePhotographerPlanId(int planId, String photographerId) throws SQLException;
    public void  updatePhotographerMobile(String mobile, String photographerId) throws SQLException;
    public void  updatePhotographerWebsite(String website, String photographerId) throws SQLException;
    public void  updatePhotographerBio(String bio, String photographerId) throws SQLException;
    public void  updatePhotographerFieldOfInterest(String fielsOfdInterest, String photographerId) throws SQLException;
    public void  updatePhotographerPostalCode(int postalCode, String cphotographerId) throws SQLException;
    public void  updatePhotographerActiveStatus(int status, String cphotographerId) throws SQLException;
        
    public void  deletePhotographer(String photographerId) throws SQLException;
    
    public Photographer getPhotographerById(String photographerId) throws SQLException;
    public Photographer getPhotographerByEmail(String email) throws SQLException;
    public Photographer getDeactivatedPhotographerByEmail(String email) throws SQLException;
    public Photographer getPhotographerByEmailAndPassword(String email,String password) throws SQLException;
    public List<Photographer> getPhotographByName(String name) throws SQLException;
    public List<String> getPhotographerIDByCategory(int category) throws SQLException;
    public ArrayList<String> getPhotographerCategories(String photographerId) throws SQLException;
    public List getPhotographerNames()throws SQLException;
    public List<Photographer> getPhotographByProvine(String province) throws SQLException;
    
    public String getLastId() throws SQLException;
    public HashMap<Integer, String> getPhotogrpaherCategories() throws SQLException;
    public int getPhotographerCount(int Status) throws SQLException;
    public void uploadprofilepic(Photographer profilpic) throws SQLException;
}
