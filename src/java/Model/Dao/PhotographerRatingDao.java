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
    
     public void addLike(String photographerId, String loggedId) throws SQLException;

    public void addDisike(String photographerId, String loggedId) throws SQLException;

    public void addRateatBegin(String photographerId) throws SQLException;

    public int getLikes(String photographerId) throws SQLException;

    public int getDislikes(String photographerId) throws SQLException;

    public boolean checkLikes(String photographerId, String loggedId) throws SQLException;

    public boolean checkDislikes(String photographerId, String loggedId) throws SQLException;

    public void deleteLike(String photographerId, String loggedId) throws SQLException;

    public void deleteDisike(String photographerId, String loggedId) throws SQLException;

    public int getLikeCount(String photographerId) throws SQLException;

    public int getDislikeCount(String photographerId) throws SQLException;
    
}
