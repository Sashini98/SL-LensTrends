/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author Madusha
 */
public class PhotographerDaoImp implements PhotographerDao {

    @Override
    public void addPhotographer(Photographer photographer) throws SQLException {
         Date d=photographer.getJoined_date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date = sdf.format(d);
        
        DB.iud("INSERT INTO photographer (Photographer_Id, Email, Password, Fname, Lname, Address_NO, City, Province, Joined_Date, Gender_id, Plan_id, Mobile, Website, bio, FieldofInterest, PostalCode, ActiveStatus) "
                + "VALUES ('" + photographer.getPhotographerId() + "', '" + photographer.getEmail() + "', '" + photographer.getPassword() + "', '" + photographer.getFname() + "',"
                + " '" + photographer.getLname() + "', '" + photographer.getAddress_no() + "', '" + photographer.getCity() + "', '" + photographer.getProvince() + "','"+date+"',"
                + " '" + photographer.getGenderId() + "', '" + photographer.getPlanId() + "', '" + photographer.getMobile() + "','" + photographer.getWebsite() + "', '" + photographer.getBio() + "', "
                + " '" + photographer.getFielsOfdInterest()+ "', '" + photographer.getPostalCode()+ "', '" + photographer.getActiveStatus() + "' ) ");
    }

    @Override
    public void updatePhotographerEmail(String email, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET Email='" + email + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerPassword(String password, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET Password= '" + password + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerFname(String fname, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET Fname='" + fname + "' WHERE Photographer_Id= '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerLname(String lname, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET Lname='" + lname + "' WHERE Photographer_Id= '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerAddressNo(String addressNo, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET Address_No='" + addressNo + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerCity(String city, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET City='" + city + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerProvince(String province, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET Province='" + province + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerJoinedDate(Date joinedDate, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET Joined_Date='" + joinedDate + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerGender(int gender, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET Gender_Id='" + gender + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerPlanId(int planId, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET Plan_id='" + planId + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerMobile(String mobile, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET Mobile='" + mobile + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerWebsite(String website, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET Website='" + website + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerBio(String bio, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET bio='" + bio + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerFieldOfInterest(String fielsOfdInterest, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET FieldofInterest='" + fielsOfdInterest + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerPostalCode(int postalCode, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET PostalCode='" + postalCode + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void updatePhotographerActiveStatus(int status, String photographerId) throws SQLException {
        DB.iud("UPDATE photographer SET ActiveStatus='" + status + "' WHERE Photographer_Id = '" + photographerId + "'");
    }

    @Override
    public void deletePhotographer(String photographerId) throws SQLException {
        DB.iud("DELETE FROM photographer where Photographer_id = '" + photographerId + "'");
    }

    @Override
    public Photographer getPhotographerById(String photographerId) throws SQLException {
        ResultSet photographer = DB.search("SELECT * FROM photographer WHERE Photographer_id = '" + photographerId + "'");
        if (photographer.next()) {
            Photographer p = new Photographer();
            p.setPhotographerId(photographer.getString("Photographer_Id"));
            p.setEmail(photographer.getString("Email"));
            p.setPassword(photographer.getString("Password"));
            p.setFname(photographer.getString("Fname"));
            p.setLname(photographer.getString("Lname"));
            p.setAddress_no(photographer.getString("Address_No"));
            p.setCity(photographer.getString("City"));
            p.setProvince(photographer.getString("Province"));
            p.setGenderId(photographer.getInt("Gender_Id"));
            p.setPlanId(photographer.getInt("Plan_id"));
            p.setMobile(photographer.getString("Mobile"));
            p.setWebsite(photographer.getString("Website"));
            p.setBio(photographer.getString("bio"));
            p.setFielsOfdInterest(photographer.getString("FieldofInterest"));
            p.setPostalCode(photographer.getInt("PostalCode"));
            p.setActiveStatus(photographer.getInt("ActiveStatus"));

            return p;

        } else {
            return null;
        }
    }

    @Override
    public Photographer getPhotographerByEmail(String email) throws SQLException {
        ResultSet photographer = DB.search("SELECT * FROM photographer WHERE Email = '" + email + "' AND ActiveStatus = 1");
        if (photographer.next()) {
            Photographer p = new Photographer();
            p.setPhotographerId(photographer.getString("Photographer_Id"));
            p.setEmail(photographer.getString("Email"));
            p.setPassword(photographer.getString("Password"));
            p.setFname(photographer.getString("Fname"));
            p.setLname(photographer.getString("Lname"));
            p.setAddress_no(photographer.getString("Address_No"));
            p.setCity(photographer.getString("City"));
            p.setProvince(photographer.getString("Province"));
            p.setGenderId(photographer.getInt("Gender_Id"));
            p.setPlanId(photographer.getInt("Plan_Id"));
            p.setMobile(photographer.getString("Mobile"));
            p.setWebsite(photographer.getString("Website"));
            p.setBio(photographer.getString("Bio"));
            p.setFielsOfdInterest(photographer.getString("FieldofInterest"));
            p.setPostalCode(photographer.getInt("PostalCode"));

            return p;

        } else {
            return null;
        }
    }

    @Override
    public Photographer getPhotographerByEmailAndPassword(String email, String password) throws SQLException {
        ResultSet photographer = DB.search("SELECT * FROM photographer WHERE Email = '" + email + "'  AND Password = '" + password + "' AND ActiveStatus = 1");
        if (photographer.next()) {
            Photographer p = new Photographer();
            p.setPhotographerId(photographer.getString("Photographer_Id"));
            p.setEmail(photographer.getString("Email"));
            p.setPassword(photographer.getString("Password"));
            p.setFname(photographer.getString("Fname"));
            p.setLname(photographer.getString("Lname"));
            p.setAddress_no(photographer.getString("Address_No"));
            p.setCity(photographer.getString("City"));
            p.setProvince(photographer.getString("Province"));
            p.setGenderId(photographer.getInt("Gender_Id"));
            p.setPlanId(photographer.getInt("Plan_Id"));
            p.setMobile(photographer.getString("Mobile"));
            p.setWebsite(photographer.getString("Website"));
            p.setBio(photographer.getString("Bio"));
            p.setFielsOfdInterest(photographer.getString("FieldofInterest"));
            p.setPostalCode(photographer.getInt("PostalCode"));

            return p;

        } else {
            return null;
        }
    }

    @Override
    public String getLastId() throws SQLException {
       String id="";
       ResultSet cid=DB.search("SELECT Photographer_Id as pid FROM photographer ORDER BY Photographer_Id DESC LIMIT 1; ");
      
       
        if (cid.next()) {
            id=cid.getString("pid");
            return id;

        } else {
            return null;
        }

}

    @Override
    public Photographer getDeactivatedPhotographerByEmail(String email) throws SQLException {
        
        ResultSet photographer = DB.search("SELECT * FROM photographer WHERE Email = '" + email + "' AND ActiveStatus = 0");
        if (photographer.next()) {
            Photographer p = new Photographer();
            p.setPhotographerId(photographer.getString("Photographer_Id"));
            p.setEmail(photographer.getString("Email"));
            p.setPassword(photographer.getString("Password"));
            p.setFname(photographer.getString("Fname"));
            p.setLname(photographer.getString("Lname"));
            p.setAddress_no(photographer.getString("Address_No"));
            p.setCity(photographer.getString("City"));
            p.setProvince(photographer.getString("Province"));
            p.setGenderId(photographer.getInt("Gender_Id"));
            p.setPlanId(photographer.getInt("Plan_Id"));
            p.setMobile(photographer.getString("Mobile"));
            p.setWebsite(photographer.getString("Website"));
            p.setBio(photographer.getString("Bio"));
            p.setFielsOfdInterest(photographer.getString("FieldofInterest"));
            p.setPostalCode(photographer.getInt("PostalCode"));

            return p;

        } else {
            return null;
        }
    }
}
