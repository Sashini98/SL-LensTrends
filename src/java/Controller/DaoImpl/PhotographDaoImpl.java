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
        List<Photograph> photos = new ArrayList<>();
        try {
            ResultSet photographs = DB.search("SELECT  * FROM photograph WHERE Keywords like '%" + keyword + "%'");

            while (photographs.next()) {
                Photograph p = new Photograph(photographs.getInt("Photograph_Id"), photographs.getString("path"),
                        photographs.getDouble("Width"), photographs.getDouble("Height"),
                        photographs.getString("Quality"), photographs.getString("Keywords"),
                        photographs.getDate("Uploaded_Date"), photographs.getBoolean("For_Sale"),
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
            Photograph p = new Photograph(photographs.getInt("Photograph_Id"), photographs.getString("path"),
                    photographs.getDouble("Width"), photographs.getDouble("Height"),
                    photographs.getString("Quality"), photographs.getString("Keywords"),
                    photographs.getDate("Uploaded_Date"), photographs.getBoolean("For_Sale"),
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
            Photograph p = new Photograph(photograph.getInt("Photograph_Id"), photograph.getString("path"),
                    photograph.getDouble("Width"), photograph.getDouble("Height"),
                    photograph.getString("Quality"), photograph.getString("Keywords"),
                    photograph.getDate("Uploaded_Date"), photograph.getBoolean("For_Sale"),
                    photograph.getBoolean("Undiscovered"), photograph.getString("Photographer_Id"),
                    photograph.getString("Title"), photograph.getInt("Photograph_category_id"),
                    photograph.getBoolean("People"), photograph.getInt("Orientation_Id"),
                    photograph.getInt("state_id"), photograph.getInt("Gender_Id"));
            
            return p;
        }else{
            return null;
        }
    }

    @Override
    public void updatePhotographState(int status, int PhotographId) throws SQLException {
        DB.iud("UPDATE photograph SET state_id='" + status + "' WHERE Photograph_Id = '" + PhotographId + "'");
    }

    @Override
    public ArrayList<Photograph> getPhotographByPhotographer(String photographerId) throws SQLException {
        ArrayList<Photograph> photos = new ArrayList<>();
        try {
            ResultSet photographs = DB.search("SELECT  * FROM photograph WHERE Photographer_Id = '" + photographerId + "'");

            while (photographs.next()) {
                Photograph p = new Photograph(photographs.getInt("Photograph_Id"), photographs.getString("path"),
                        photographs.getDouble("Width"), photographs.getDouble("Height"),
                        photographs.getString("Quality"), photographs.getString("Keywords"),
                        photographs.getDate("Uploaded_Date"), photographs.getBoolean("For_Sale"),
                        photographs.getBoolean("Undiscovered"), photographs.getString("Photographer_Id"),
                        photographs.getString("Title"), photographs.getInt("Photograph_category_id"),
                        photographs.getBoolean("People"), photographs.getInt("Orientation_Id"),
                        photographs.getInt("state_id"), photographs.getInt("Gender_Id"));

                photos.add(p);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return photos;
    }


    
}
