/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.PhotographerDao;
import Model.Photograph;
import Model.Photographer;
import Model.portfolio_photograph;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 *
 * @author Madusha
 */
public class PhotographerDaoImp implements PhotographerDao {

    @Override
    public void addPhotographer(Photographer photographer) throws SQLException {
        Date d = photographer.getJoined_date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date = sdf.format(d);
        System.out.println(photographer.getActiveStatus());
        DB.iud("INSERT INTO photographer (Photographer_Id, Email, Password, Fname, Lname, Address_NO, City, Province, Joined_Date, Gender_id, Mobile, Website, bio, FieldofInterest, PostalCode, ActiveStatus, points, state,	profile_pic_path) "
                + "VALUES ('" + photographer.getPhotographerId() + "', '" + photographer.getEmail() + "', '" + photographer.getPassword() + "', '" + photographer.getFname() + "',"
                + " '" + photographer.getLname() + "', '" + photographer.getAddress_no() + "', '" + photographer.getCity() + "', '" + photographer.getProvince() + "','" + date + "',"
                + " '" + photographer.getGenderId() + "', '" + photographer.getMobile() + "','" + photographer.getWebsite() + "', '" + photographer.getBio() + "', "
                + " '" + photographer.getFielsOfdInterest() + "', '" + photographer.getPostalCode() + "', '" + photographer.getActiveStatus() + "', '" + photographer.getPoints() + "', '" + photographer.getState() + "','sample.jpg' ) ");
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
        ResultSet photographer = DB.search("SELECT * FROM photographer WHERE Email = '" + email + "' AND ActiveStatus = 1");

        if (photographer.next()) {
            String passHash = photographer.getString("Password");

            Model.PasswordAuthentication auth = new Model.PasswordAuthentication();
            boolean authenticate = auth.authenticate(password.toCharArray(), passHash);
            if (authenticate) {
                Photographer p = new Photographer();
                p.setPhotographerId(photographer.getString("Photographer_Id"));
                p.setEmail(photographer.getString("Email"));
                p.setPassword(passHash);
                p.setFname(photographer.getString("Fname"));
                p.setLname(photographer.getString("Lname"));
                p.setAddress_no(photographer.getString("Address_No"));
                p.setCity(photographer.getString("City"));
                p.setProvince(photographer.getString("Province"));
                p.setGenderId(photographer.getInt("Gender_Id"));
                p.setMobile(photographer.getString("Mobile"));
                p.setWebsite(photographer.getString("Website"));
                p.setBio(photographer.getString("Bio"));
                p.setFielsOfdInterest(photographer.getString("FieldofInterest"));
                p.setPostalCode(photographer.getInt("PostalCode"));
                p.setProfilpic(photographer.getString("profile_pic_path"));
                p.setJoined_date(photographer.getDate("Joined_Date"));

                return p;
            } else {
                return null;
            }

        } else {
            return null;
        }
    }

    @Override
    public List<Photographer> getPhotographByName(String name) {

        ArrayList<Photographer> photographersTempList = new ArrayList<>();
        try {

            name = name.trim();
            String[] names = name.split(" ");

            ResultSet byFname;
            ResultSet byLname;
            ResultSet byFnameLname;

            if (names.length == 2) {
                byFnameLname = DB.search("SELECT  * FROM photographer WHERE Fname like '%" + names[0] + "%' AND Lname like '%" + names[1] + "%' ");

                while (byFnameLname.next()) {
                    Photographer p = new Photographer();
                    p.setPhotographerId(byFnameLname.getString("Photographer_Id"));
                    p.setEmail(byFnameLname.getString("Email"));
                    p.setPassword(byFnameLname.getString("Password"));
                    p.setFname(byFnameLname.getString("Fname"));
                    p.setLname(byFnameLname.getString("Lname"));
                    p.setAddress_no(byFnameLname.getString("Address_No"));
                    p.setCity(byFnameLname.getString("City"));
                    p.setProvince(byFnameLname.getString("Province"));
                    p.setGenderId(byFnameLname.getInt("Gender_Id"));
                    p.setMobile(byFnameLname.getString("Mobile"));
                    p.setWebsite(byFnameLname.getString("Website"));
                    p.setBio(byFnameLname.getString("Bio"));
                    p.setFielsOfdInterest(byFnameLname.getString("FieldofInterest"));
                    p.setPostalCode(byFnameLname.getInt("PostalCode"));

                    photographersTempList.add(p);
                }
            }
            for (String name1 : names) {

                byFname = DB.search("SELECT  * FROM photographer WHERE Fname like '%" + name1 + "%'");
                byLname = DB.search("SELECT  * FROM photographer WHERE Lname like '%" + name1 + "%'");

                while (byFname.next()) {
                    boolean notContain = true;
                    for (Photographer photographer : photographersTempList) {
                        if (photographer.getPhotographerId().equals(byFname.getString("Photographer_Id"))) {
                            notContain = false;
                        }
                    }
                    if (notContain) {
                        Photographer p = new Photographer();
                        p.setPhotographerId(byFname.getString("Photographer_Id"));
                        p.setEmail(byFname.getString("Email"));
                        p.setPassword(byFname.getString("Password"));
                        p.setFname(byFname.getString("Fname"));
                        p.setLname(byFname.getString("Lname"));
                        p.setAddress_no(byFname.getString("Address_No"));
                        p.setCity(byFname.getString("City"));
                        p.setProvince(byFname.getString("Province"));
                        p.setGenderId(byFname.getInt("Gender_Id"));
                        p.setMobile(byFname.getString("Mobile"));
                        p.setWebsite(byFname.getString("Website"));
                        p.setBio(byFname.getString("Bio"));
                        p.setFielsOfdInterest(byFname.getString("FieldofInterest"));
                        p.setPostalCode(byFname.getInt("PostalCode"));

                        photographersTempList.add(p);
                    }

                }

                while (byLname.next()) {
                    boolean notContain = true;
                    for (Photographer photographer : photographersTempList) {
                        if (photographer.getPhotographerId().equals(byLname.getString("Photographer_Id"))) {
                            notContain = false;
                        }
                    }
                    if (notContain) {
                        Photographer p = new Photographer();
                        p.setPhotographerId(byLname.getString("Photographer_Id"));
                        p.setEmail(byLname.getString("Email"));
                        p.setPassword(byLname.getString("Password"));
                        p.setFname(byLname.getString("Fname"));
                        p.setLname(byLname.getString("Lname"));
                        p.setAddress_no(byLname.getString("Address_No"));
                        p.setCity(byLname.getString("City"));
                        p.setProvince(byLname.getString("Province"));
                        p.setGenderId(byLname.getInt("Gender_Id"));
                        p.setMobile(byLname.getString("Mobile"));
                        p.setWebsite(byLname.getString("Website"));
                        p.setBio(byLname.getString("Bio"));
                        p.setFielsOfdInterest(byLname.getString("FieldofInterest"));
                        p.setPostalCode(byLname.getInt("PostalCode"));

                        photographersTempList.add(p);
                    }
                }

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
//            Logger.getLogger(PhotographDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return photographersTempList;

    }

    @Override
    public String getLastId() throws SQLException {
        String id = "";
        ResultSet cid = DB.search("SELECT Photographer_Id as pid FROM photographer ORDER BY Photographer_Id DESC LIMIT 1; ");

        if (cid.next()) {
            id = cid.getString("pid");
            return id;

        } else {
            return null;
        }

    }

    @Override
    public HashMap<Integer, String> getPhotogrpaherCategories() throws SQLException {
        ResultSet categories = DB.search("SELECT * FROM category");
        HashMap<Integer, String> categoriesList = new HashMap<>();

        while (categories.next()) {

            int categoryid = categories.getInt("Category_id");
            String category = categories.getString("Category");

            categoriesList.put(categoryid, category);

        }
        return categoriesList;
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
    public List<String> getPhotographerIDByCategory(int category) throws SQLException {
        ResultSet search = DB.search("SELECT  * FROM photographer_has_category WHERE Category_id = '" + category + "'");
        ArrayList<String> photograperIds = new ArrayList<>();

        while (search.next()) {
            photograperIds.add(search.getString("Photographer_Id"));

        }

        return photograperIds;
    }

    @Override
    public ArrayList<String> getPhotographerCategories(String photographerId) throws SQLException {
        ResultSet search = DB.search("SELECT  Category_id FROM photographer_has_category WHERE Photographer_Id = '" + photographerId + "'");
        ArrayList<String> photogcategoryIds = new ArrayList<>();
        ArrayList<String> categories = new ArrayList<>();

        while (search.next()) {
            photogcategoryIds.add(search.getString("Category_id"));

        }

        for (String photogcategoryId : photogcategoryIds) {
            ResultSet search2 = DB.search("SELECT  Category FROM category WHERE Category_id = '" + photogcategoryId + "'");
            if (search2.next()) {
                categories.add(search2.getString("Category"));
            }
        }

        return categories;
    }

    @Override
    public int getPhotographerCount(int Status) throws SQLException {
        int cnt = 0;
        ResultSet num = DB.search("SELECT COUNT(*)AS rowcount FROM photographer WHERE ActiveStatus=" + Status + "");
        num.next();
        cnt = num.getInt("rowcount");
        return cnt;
    }

    @Override
    public List getPhotographerNames() throws SQLException {
        ArrayList<Photographer> a = new ArrayList();
        ResultSet photographer = DB.search("SELECT Fname,Lname FROM photographer WHERE ActiveStatus=1");

        while (photographer.next()) {
            Photographer p = new Photographer();

            p.setFname(photographer.getString("Fname"));
            p.setLname(photographer.getString("Lname"));

            a.add(p);
        }
        return a;

    }

    @Override
    public List getPhotographByProvine(String province) throws SQLException {
        ArrayList a = new ArrayList();
        ResultSet prov = DB.search("SELECT  Photographer_Id FROM photographer WHERE Province = '" + province + "'");
        while (prov.next()) {
            a.add(prov.getString("Photographer_Id"));
        }
        return a;
    }

    @Override
    public int getUploadCount(String photographerId) throws SQLException {
        int count = 0;

        ResultSet Cnt = DB.search("SELECT COUNT(Photograph_Id)AS rowcount from photograph WHERE Photographer_Id='" + photographerId + "'");
        Cnt.next();
        count = Cnt.getInt("rowcount");
        return count;
    }

    @Override
    public void uploadprofilepic(Photographer profilpic) throws SQLException {
        DB.iud("UPDATE photographer SET profile_pic_path='" + profilpic.getProfilpic() + "' WHERE Photographer_Id='" + profilpic.getPhotographerId() + "'");
    }

    @Override
    public double getPhotographerTotalEarning(String photographerId) throws SQLException {
        ResultSet search = DB.search("SELECT p.Total FROM purchaseinvoice p JOIN photograph r ON p.Photograph_Id=r.Photograph_Id JOIN photographer d ON r.Photographer_Id=d.Photographer_Id WHERE d.Photographer_Id = '" + photographerId + "';");
        double e = 0.0;
        while (search.next()) {
            e += search.getDouble("Total");

        }
        return e;
    }

}
