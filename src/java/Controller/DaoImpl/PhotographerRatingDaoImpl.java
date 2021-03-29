/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.PhotographerRatingDao;
import java.sql.SQLException;

/**
 *
 * @author kesh
 */
public class PhotographerRatingDaoImpl implements PhotographerRatingDao {

    @Override
    public void deleteClientPhotographerRating(String clientId) throws SQLException {
        DB.iud("DELETE FROM photographer_rating where Client_Id = '" + clientId + "'");

    }
}
