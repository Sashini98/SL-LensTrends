/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Photograph;
import Model.portfolio_photograph;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author kesh
 */
public interface PhotographDao {
    
    public List<Photograph> getPhotographByKeyWord(String keyword);
    public List getAllInReviewPhotographs() throws SQLException;
    public Photograph getPhotographById(int id) throws SQLException;
    public ArrayList<Photograph> getPhotographsByDate(String date) throws SQLException;
    public ArrayList<Photograph> getPhotographsByState(int stateID) throws SQLException;
    public ArrayList<Photograph> getAllphotosofPhotographer(String photographer_id) throws SQLException;
    public void  updatePhotographState(int status, int PhotographId) throws SQLException;
    public void deletephoto(int PhotographId, int status, String path, String uncompath) throws SQLException;
    public void uploadphotoforportfolio(portfolio_photograph uploadPhotograph ) throws SQLException; // concrete methods
    public void uploadphotoforsales(Photograph uploadforSales) throws SQLException;
    public Photograph getoriginalpath(String compath) throws SQLException;
    public void submitforreview(Photograph submittoreview) throws SQLException;
}
