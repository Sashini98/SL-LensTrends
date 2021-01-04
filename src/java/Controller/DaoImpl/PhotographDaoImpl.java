/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.PhotographDao;
import Model.Photograph;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author kesh
 */
public class PhotographDaoImpl implements PhotographDao {

    @Override
    public List<Photograph> getPhotographByKeyWord(String keyword) {
        List<Photograph> photos = new LinkedList<>();
        try {
            ResultSet photographs = DB.search("SELECT  * FROM photograph WHERE Keywords like '" + keyword + "'");

            while (photographs.next()) {
                Photograph p = new Photograph();
                p.setId(photographs.getInt("Photograph_Id"));
                p.setCategoryId(photographs.getInt("category_id"));
                p.setPath(photographs.getString("path"));
                p.setHeight(photographs.getDouble("Height"));
                p.setWidth(photographs.getDouble("Width"));
                p.setQuality(photographs.getString("Quality"));
                p.setKeywords(photographs.getString("Keywords"));
                p.setUploadedDate(photographs.getDate("Uploaded_Date"));
                p.setForSale(photographs.getBoolean("For_Sale"));
                p.setUndiscovered(photographs.getBoolean("Undiscovered"));
                p.setPhotogrpherId(photographs.getString("Photographer_Id"));
                p.setTitle(photographs.getString("Title"));
                p.setDiscription(photographs.getString("Description"));
                p.setPeople(photographs.getBoolean("People"));
                p.setOrientationId(photographs.getInt("Orientation_Id"));
                p.setStateId(photographs.getInt("state_id"));
                p.setGenderId(photographs.getInt("Gender_Id"));

                photos.add(p);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
//            Logger.getLogger(PhotographDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return photos;
    }

    @Override
    public List getAllPhotographs() throws SQLException {
        ResultSet photographs = DB.search("SELECT * FROM photograph");
        ArrayList<Photograph> photos = new ArrayList();

        while (photographs.next()) {
            Photograph p = new Photograph();
            p.setId(photographs.getInt("Photograph_Id"));
//                p.setCategoryId(photographs.getInt("category_id"));
            p.setPath(photographs.getString("path"));
            p.setHeight(photographs.getDouble("Height"));
            p.setWidth(photographs.getDouble("Width"));
            p.setQuality(photographs.getString("Quality"));
            p.setKeywords(photographs.getString("Keywords"));
            p.setUploadedDate(photographs.getDate("Uploaded_Date"));
            p.setForSale(photographs.getBoolean("For_Sale"));
            p.setUndiscovered(photographs.getBoolean("Undiscovered"));
            p.setPhotogrpherId(photographs.getString("Photographer_Id"));
            p.setTitle(photographs.getString("Title"));
            p.setDiscription(photographs.getString("Description"));
            p.setPeople(photographs.getBoolean("People"));
            p.setOrientationId(photographs.getInt("Orientation_Id"));
            p.setStateId(photographs.getInt("state_id"));
            p.setGenderId(photographs.getInt("Gender_Id"));

            photos.add(p);

        }
        return photos;
    }

}
