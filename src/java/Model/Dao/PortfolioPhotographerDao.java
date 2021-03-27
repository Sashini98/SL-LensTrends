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

/**
 *
 * @author ASUS
 */
public interface PortfolioPhotographerDao {
    public ArrayList<portfolio_photograph> getAllphotosofPhotographer(String photographer_id) throws SQLException;
    public void deletephoto(int PhotographId, String path) throws SQLException;
    public portfolio_photograph getPhotographById(int id) throws SQLException;
    
}
