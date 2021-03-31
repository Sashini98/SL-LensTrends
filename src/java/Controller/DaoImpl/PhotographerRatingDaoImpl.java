/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.PhotographerRatingDao;
import static java.lang.Integer.parseInt;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author kesh
 */
public class PhotographerRatingDaoImpl implements PhotographerRatingDao {

    @Override
    public int getLikeCount(String photographerId) throws SQLException {
        ResultSet likes = DB.search("SELECT Llikes FROM photographer_rating where Photographer_Id = '" + photographerId + "'");
        int cnt = 0;
        while (likes.next()) {
            cnt = parseInt(likes.getString("Llikes"));
        }
        return cnt;
    }

    @Override
    public int getDislikeCount(String photographerId) throws SQLException {
        ResultSet dislikes = DB.search("SELECT Dislikes FROM photographer_rating where Photographer_Id = '" + photographerId + "'");
        int cnt = 0;

        while (dislikes.next()) {

            cnt = parseInt(dislikes.getString("Dislikes"));
        }
        return cnt;

    }

    @Override
    public void addLike(String photographerId, String loggedId) throws SQLException {
        int cnt = getLikeCount(photographerId);
        int cnt2 = cnt + 1;

        DB.iud("UPDATE photographer_rating SET Llikes='" + cnt2 + "'  where Photographer_Id = '" + photographerId + "'");
        DB.iud("INSERT INTO photographer_likes(Photographer_Id, Client_Id) VALUES ('" + photographerId + "','" + loggedId + "')");

    }

    @Override
    public void addDisike(String photographerId, String loggedId) throws SQLException {

        int cnt = getDislikeCount(photographerId);
        int cnt2 = cnt + 1;

        DB.iud("UPDATE photographer_rating SET Dislikes='" + cnt2 + "'  where Photographer_Id = '" + photographerId + "'");
        DB.iud("INSERT INTO photographer_dislikes(Photographer_Id, Client_Id) VALUES ('" + photographerId + "','" + loggedId + "')");

    }

    @Override
    public void addRateatBegin(String photographerId) throws SQLException {
        DB.iud("INSERT INTO photographer_rating(Llikes, Dislikes,  Photographer_Id) VALUES ('" + 0 + "', '" + 0 + "' ,'" + photographerId + "')");
    }

    @Override
    public int getLikes(String photographerId) throws SQLException {
        ResultSet likes = DB.search("SELECT Llikes FROM photographer_rating where Photographer_Id = '" + photographerId + "'");
        int cnt = 0;
        while (likes.next()) {
            cnt = parseInt(likes.getString("Llikes"));
        }
        return cnt;
    }

    @Override
    public int getDislikes(String photographerId) throws SQLException {

        ResultSet dislikes = DB.search("SELECT Dislikes FROM photographer_rating where Photographer_Id = '" + photographerId + "'");
        int cnt = 0;
        while (dislikes.next()) {

            cnt = parseInt(dislikes.getString("Dislikes"));
        }
        return cnt;
    }

    @Override
    public boolean checkLikes(String photographerId, String loggedId) throws SQLException {
        ResultSet like = null;

        like = DB.search("SELECT * from photographer_likes where Photographer_Id = '" + photographerId + "' AND Client_Id ='" + loggedId + "' ");;

        if (!like.isBeforeFirst()) {
            return false;
        } else {
            return true;
        }

    }

    @Override
    public boolean checkDislikes(String photographerId, String loggedId) throws SQLException {
        ResultSet dislike = null;

        dislike = DB.search("SELECT * from photographer_dislikes where Photographer_Id = '" + photographerId + "' AND Client_Id ='" + loggedId + "' ");;

        if (!dislike.isBeforeFirst()) {
            return false;
        } else {
            return true;
        }
    }

    @Override
    public void deleteLike(String photographerId, String loggedId) throws SQLException {
        int cnt = getLikeCount(photographerId);
        int cnt2;
        if (cnt == 0) {
            cnt2 = 0;
        } else {
            cnt2 = cnt - 1;
        }

        DB.iud("UPDATE photographer_rating SET Llikes='" + cnt2 + "'  where Photographer_Id = '" + photographerId + "'");
        DB.iud("DELETE FROM photographer_likes WHERE  Photographer_Id = '" + photographerId + "' AND Client_Id ='" + loggedId + "' ");

    }

    @Override
    public void deleteDisike(String photographerId, String loggedId) throws SQLException {
        int cnt = getDislikeCount(photographerId);
        int cnt2;
        if (cnt == 0) {
            cnt2 = 0;
        } else {
            cnt2 = cnt - 1;
        };

        DB.iud("UPDATE photographer_rating SET Dislikes='" + cnt2 + "'  where Photographer_Id = '" + photographerId + "'");
        DB.iud("DELETE FROM photographer_dislikes WHERE  Photographer_Id = '" + photographerId + "' AND Client_Id ='" + loggedId + "' ");

    }

}
