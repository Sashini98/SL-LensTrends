/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.PhotographDao;
import Model.Photograph;
import Model.portfolio_photograph;
import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author kesh
 */
public class PhotographDaoImpl implements PhotographDao {

    @Override
    public List<Photograph> getPhotographByKeyWord(String keyword) {
        List<Photograph> photos = new ArrayList<>();
        try {
            ResultSet photographs = DB.search("SELECT  * FROM photograph WHERE Keywords like '%" + keyword + "%'");

            while (photographs.next()) {
                Photograph p = new Photograph(photographs.getInt("Photograph_Id"), photographs.getString("path"), photographs.getString("uncompresedpath"),
                        photographs.getDouble("Width"), photographs.getDouble("Height"),
                        photographs.getString("Keywords"),
                        photographs.getDate("Uploaded_Date"), photographs.getDouble("Price"),
                        photographs.getBoolean("Undiscovered"), photographs.getString("Photographer_Id"),
                        photographs.getString("Title"), photographs.getInt("Photograph_category_id"),
                        photographs.getBoolean("People"), photographs.getInt("Orientation_Id"),
                        photographs.getInt("state_id"), photographs.getInt("Gender_Id"));

                photos.add(p);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
//            Logger.getLogger(PhotographDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return photos;
    }

    @Override
    public List getAllInReviewPhotographs() throws SQLException {
        ResultSet photographs = DB.search("SELECT * FROM photograph WHERE state_id = 2");
        ArrayList<Photograph> photos = new ArrayList();

        while (photographs.next()) {
            Photograph p = new Photograph(photographs.getInt("Photograph_Id"), photographs.getString("path"), photographs.getString("uncompresedpath"),
                    photographs.getDouble("Width"), photographs.getDouble("Height"),
                    photographs.getString("Keywords"),
                    photographs.getDate("Uploaded_Date"), photographs.getDouble("Price"),
                    photographs.getBoolean("Undiscovered"), photographs.getString("Photographer_Id"),
                    photographs.getString("Title"), photographs.getInt("Photograph_category_id"),
                    photographs.getBoolean("People"), photographs.getInt("Orientation_Id"),
                    photographs.getInt("state_id"), photographs.getInt("Gender_Id"));

            photos.add(p);

        }
        return photos;
    }

    @Override
    public Photograph getPhotographById(int id) throws SQLException {
        ResultSet photograph = DB.search("SELECT * FROM photograph WHERE Photograph_Id = '" + id + "'");

        if (photograph.next()) {
            Photograph p = new Photograph(photograph.getInt("Photograph_Id"), photograph.getString("path"), photograph.getString("uncompresedpath"),
                    photograph.getDouble("Width"), photograph.getDouble("Height"),
                    photograph.getString("Keywords"),
                    photograph.getDate("Uploaded_Date"), photograph.getDouble("Price"),
                    photograph.getBoolean("Undiscovered"), photograph.getString("Photographer_Id"),
                    photograph.getString("Title"), photograph.getInt("Photograph_category_id"),
                    photograph.getBoolean("People"), photograph.getInt("Orientation_Id"),
                    photograph.getInt("state_id"), photograph.getInt("Gender_Id"));

            return p;
        } else {
            return null;
        }
    }

    @Override
    public void updatePhotographState(int status, int PhotographId) throws SQLException {
        DB.iud("UPDATE photograph SET state_id='" + status + "' WHERE Photograph_Id = '" + PhotographId + "'");
    }

    @Override
    public ArrayList<Photograph> getAllphotosofPhotographer(String photographer_id) throws SQLException {
        ResultSet photographs = DB.search("SELECT * FROM photograph WHERE Photographer_id = '" + photographer_id + "'");
        ArrayList<Photograph> Loadphotos = new ArrayList();

        while (photographs.next()) {
            Photograph p = new Photograph(
                    photographs.getInt("Photograph_Id"), photographs.getString("path"), photographs.getString("uncompresedpath"),
                    photographs.getDouble("Width"), photographs.getDouble("Height"),
                    photographs.getString("Keywords"),
                    photographs.getDate("Uploaded_Date"), photographs.getDouble("Price"),
                    photographs.getBoolean("Undiscovered"), photographs.getString("Photographer_Id"),
                    photographs.getString("Title"), photographs.getInt("Photograph_category_id"),
                    photographs.getBoolean("People"), photographs.getInt("Orientation_Id"),
                    photographs.getInt("state_id"), photographs.getInt("Gender_Id")
            );

            Loadphotos.add(p);

        }

        return Loadphotos;
    }

    @Override
    public void deletephoto(int PhotographId, int status, String path, String uncompath) throws SQLException {
        if (status == 1) {
            File myObj = new File(path);
            myObj.delete();
            File myObjcom = new File(uncompath);
            myObjcom.delete();
            DB.iud("DELETE FROM photograph WHERE Photograph_Id = '" + PhotographId + "'");
        } else if (status == 3) {
            File myObj = new File(path);
            myObj.delete();
            File myObjcom = new File(uncompath);
            myObjcom.delete();
            DB.iud("DELETE FROM model_release WHERE Photograph_Id = '" + PhotographId + "'");
            DB.iud("DELETE FROM property_release WHERE Photograph_Id = '" + PhotographId + "'");
            DB.iud("DELETE FROM photograph WHERE Photograph_Id = '" + PhotographId + "'");
        } else if (status == 4) {
            File myObj = new File(path);
            myObj.delete();
            File myObjcom = new File(uncompath);
            myObjcom.delete();
            DB.iud("DELETE FROM model_release WHERE Photograph_Id = '" + PhotographId + "'");
            DB.iud("DELETE FROM property_release WHERE Photograph_Id = '" + PhotographId + "'");
            DB.iud("DELETE FROM cart_has_photograph WHERE Photograph_Id = '" + PhotographId + "'");
            DB.iud("DELETE FROM photograph WHERE Photograph_Id = '" + PhotographId + "'");
        }
    }

    @Override
    public ArrayList<Photograph> getPhotographsByDate(String date) throws SQLException {
        ResultSet photographs = DB.search("SELECT * FROM photograph WHERE Uploaded_Date = '" + date + "'");
        ArrayList<Photograph> Loadphotos = new ArrayList();

        while (photographs.next()) {
            Photograph p = new Photograph(
                    photographs.getInt("Photograph_Id"), photographs.getString("path"), photographs.getString("uncompresedpath"),
                    photographs.getDouble("Width"), photographs.getDouble("Height"),
                    photographs.getString("Keywords"),
                    photographs.getDate("Uploaded_Date"), photographs.getDouble("Price"),
                    photographs.getBoolean("Undiscovered"), photographs.getString("Photographer_Id"),
                    photographs.getString("Title"), photographs.getInt("Photograph_category_id"),
                    photographs.getBoolean("People"), photographs.getInt("Orientation_Id"),
                    photographs.getInt("state_id"), photographs.getInt("Gender_Id")
            );

            Loadphotos.add(p);

        }

        return Loadphotos;
    }

    @Override
    public void uploadphotoforportfolio(portfolio_photograph uploadPhotograph) throws SQLException {
        DB.iud("INSERT INTO portfolio_photograph (path, title, Photographer_Id) VALUES('" + uploadPhotograph.getPath() + "','" + uploadPhotograph.getTitle() + "','" + uploadPhotograph.getPhotogrpherId() + "')");
    }

    @Override
    public void uploadphotoforsales(Photograph uploadforSales) throws SQLException {
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date = sdf.format(d);
        System.out.println("ffff");
        DB.iud("INSERT INTO photograph (path, uncompresedpath,Width, Height, Uploaded_Date, Undiscovered, Orientation_Id, Photographer_Id,state_id)"
                + "VALUES('" + uploadforSales.getPath() + "','" + uploadforSales.getUncompresedpath() + "','" + uploadforSales.getWidth() + "','" + uploadforSales.getHeight() + "','" + date + "',"
                + " '" + 1 + "','" + uploadforSales.getOrientationId()+ "','" + uploadforSales.getPhotogrpherId() + "',"
                + " '" + uploadforSales.getStateId() + "')");
//        System.out.println("bbbbb");
    }

    @Override
    public Photograph getoriginalpath(String compath) throws SQLException {
        ResultSet photograph = DB.search("SELECT * FROM photograph WHERE path = '" + compath + "'");

        if (photograph.next()) {
            Photograph p = new Photograph(photograph.getInt("Photograph_Id"), photograph.getString("path"), photograph.getString("uncompresedpath"),
                    photograph.getDouble("Width"), photograph.getDouble("Height"),
                    photograph.getString("Keywords"),
                    photograph.getDate("Uploaded_Date"), photograph.getDouble("Price"),
                    photograph.getBoolean("Undiscovered"), photograph.getString("Photographer_Id"),
                    photograph.getString("Title"), photograph.getInt("Photograph_category_id"),
                    photograph.getBoolean("People"), photograph.getInt("Orientation_Id"),
                    photograph.getInt("state_id"), photograph.getInt("Gender_Id"));

            return p;
        } else {
            return null;
        }
    }

    @Override
    public void submitforreview(Photograph submittoreview) throws SQLException {
//        System.out.println("fwvfe");
        DB.iud("UPDATE photograph SET state_id='" + submittoreview.getStateId() + "',title='" + submittoreview.getTitle() + "',Photograph_category_Id='" + submittoreview.getCategoryId() + "',"
                + "Keywords='" + submittoreview.getKeywords() + "',price='" + submittoreview.Price() + "',Gender_Id='"+ submittoreview.getGenderId() +"' WHERE Photograph_Id = '" + submittoreview.getId() + "'");
    }

}


