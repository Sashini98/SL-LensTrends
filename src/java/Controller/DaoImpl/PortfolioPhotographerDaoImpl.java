/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.PortfolioPhotographerDao;
import Model.Photograph;
import Model.portfolio_photograph;
import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ASUS
 */
public class PortfolioPhotographerDaoImpl implements PortfolioPhotographerDao {

    @Override
    public ArrayList<portfolio_photograph> getAllphotosofPhotographer(String photographer_id) throws SQLException {
        ResultSet porfoliophotographs = DB.search("SELECT * FROM portfolio_photograph WHERE Photographer_Id = '" + photographer_id + "'");
        ArrayList<portfolio_photograph> Loadphotos = new ArrayList();

        while (porfoliophotographs.next()) {
            portfolio_photograph p = new portfolio_photograph( //p is an object of portfolio_photograph modal
                    porfoliophotographs.getInt("id"), porfoliophotographs.getString("path"),
                    porfoliophotographs.getString("title"), porfoliophotographs.getString("Photographer_Id")
            );

            Loadphotos.add(p);

        }
        return Loadphotos;
    }

    @Override
    public void deletephoto(int PhotographId, String path) throws SQLException {
        File myObj = new File(path);
        myObj.delete();
        DB.iud("DELETE FROM portfolio_photograph WHERE id = '" + PhotographId + "'");
    }

    @Override
    public portfolio_photograph getPhotographById(int id) throws SQLException {
        ResultSet photograph = DB.search("SELECT * FROM portfolio_photograph WHERE id = '" + id + "'");
        
        if(photograph.next()){
            portfolio_photograph p = new portfolio_photograph (
            photograph.getInt("id"),photograph.getString("path"),
                    photograph.getString("title"),photograph.getString("Photographer_Id")
            );
            return p;
        }
        return null;
    }

}
