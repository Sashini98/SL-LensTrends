/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import java.sql.SQLException;

/**
 *
 * @author kesh
 */
public interface PhotographerRatingDao {
    
    public void deleteClientPhotographerRating(String clientId) throws SQLException;
    
}