/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.QuestionRatingDao;
import static java.lang.Integer.parseInt;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Sashini Shihara
 */
public class QuestinRatingDaoImpl implements QuestionRatingDao {
    
    @Override
    public int getLikeCount(int answerId) throws SQLException {
        ResultSet likes = DB.search("SELECT Likes FROM answerrating where Answer_Id = '" + answerId + "'");
        likes.next();
        int cnt = parseInt(likes.getString("Likes"));
        return cnt;
    }

    @Override
    public int getDislikeCount(int answerId) throws SQLException {
         ResultSet dislikes = DB.search("SELECT Dislikes FROM answerrating where Answer_Id = '" + answerId + "'");
        dislikes.next();

        int cnt = parseInt(dislikes.getString("Dislikes"));
        return cnt;

    }

    @Override
    public void addLike(int answerId, String loggedId) throws SQLException {
        int cnt=getLikeCount(answerId);
        int cnt2 = cnt+1;

        DB.iud("UPDATE answerrating SET Likes='" + cnt2 + "'  where Answer_Id = '" + answerId + "'");

        int index = loggedId.indexOf('C');
        if (index == -1) {
            DB.iud("INSERT INTO answer_rate_likes(Answer_Id, Photographer_Id) VALUES ('" + answerId + "','" + loggedId + "')");
        } else {
            DB.iud("INSERT INTO answer_rate_likes(Answer_Id, Client_Id) VALUES ('" + answerId + "','" + loggedId + "')");
        }
    }

    @Override
    public void addDisike(int answerId, String loggedId) throws SQLException {

       int cnt=getDislikeCount(answerId);
        int cnt2 = cnt+1;

        DB.iud("UPDATE answerrating SET Dislikes='" + cnt2 + "'  where Answer_Id = '" + answerId + "'");

        int index = loggedId.indexOf('C');
        if (index == -1) {
            DB.iud("INSERT INTO answer_rate_dislikes(Answer_Id, Photographer_Id) VALUES ('" + answerId + "','" + loggedId + "')");
        } else {
            DB.iud("INSERT INTO answer_rate_dislikes(Answer_Id, Client_Id) VALUES ('" + answerId + "','" + loggedId + "')");
        }

    }

    @Override
    public void addRateatBegin(int answerId) throws SQLException {
        DB.iud("INSERT INTO answerrating(Likes, Dislikes,  Answer_Id) VALUES ('" + 0 + "', '" + 0 + "' ,'" + answerId + "')");
    }

    @Override
    public int getLikes(int answerId) throws SQLException {
        ResultSet likes = DB.search("SELECT Likes FROM answerrating where Answer_Id = '" + answerId + "'");
        likes.next();
        int cnt = parseInt(likes.getString("Likes"));
        return cnt;
    }

    @Override
    public int getDislikes(int answerId) throws SQLException {

        ResultSet dislikes = DB.search("SELECT Dislikes FROM answerrating where Answer_Id = '" + answerId + "'");
        dislikes.next();

        int cnt = parseInt(dislikes.getString("Dislikes"));
        return cnt;
    }

    @Override
    public boolean checkLikes(int answerId, String loggedId) throws SQLException {
        ResultSet like = null;

        int index = loggedId.indexOf('C');

        if (index == -1) {
            like = DB.search("SELECT * from answer_rate_likes where Answer_Id = '" + answerId + "' AND Photographer_Id ='" + loggedId + "' ");
        } else {
            like = DB.search("SELECT * from answer_rate_likes where Answer_Id = '" + answerId + "' AND Client_Id ='" + loggedId + "' ");;
        }

        if (!like.isBeforeFirst()) {
            return false;
        } else {
            return true;
        }

    }

    @Override
    public boolean checkDislikes(int answerId, String loggedId) throws SQLException {
        ResultSet dislike = null;

        int index = loggedId.indexOf('C');

        if (index == -1) {
            dislike = DB.search("SELECT * from answer_rate_dislikes where Answer_Id = '" + answerId + "' AND Photographer_Id ='" + loggedId + "' ");
        } else {
            dislike = DB.search("SELECT * from answer_rate_dislikes where Answer_Id = '" + answerId + "' AND Client_Id ='" + loggedId + "' ");;
        }

        if (!dislike.isBeforeFirst()) {
            return false;
        } else {
            return true;
        }
    }

    @Override
    public void deleteLike(int answerId, String loggedId) throws SQLException {
        int cnt=getLikeCount(answerId);
        int cnt2 = cnt-1;

        DB.iud("UPDATE answerrating SET Likes='" + cnt2 + "'  where Answer_Id = '" + answerId + "'");

        int index = loggedId.indexOf('C');
        if (index == -1) {
            DB.iud("DELETE FROM answer_rate_likes WHERE where Answer_Id = '" + answerId + "' AND Photographer_Id ='" + loggedId + "' ");
        } else {
            DB.iud("DELETE FROM answer_rate_likes WHERE where Answer_Id = '" + answerId + "' AND Client_Id ='" + loggedId + "' ");
        }
        
    }

    @Override
    public void deleteDisike(int answerId, String loggedId) throws SQLException {
       int cnt=getDislikeCount(answerId);
        int cnt2 = cnt-1;

        DB.iud("UPDATE answerrating SET Dislikes='" + cnt2 + "'  where Answer_Id = '" + answerId + "'");

        int index = loggedId.indexOf('C');
        if (index == -1) {
            DB.iud("DELETE FROM answer_rate_dislikes WHERE where Answer_Id = '" + answerId + "' AND Photographer_Id ='" + loggedId + "' ");
        } else {
            DB.iud("DELETE FROM answer_rate_dislikes WHERE where Answer_Id = '" + answerId + "' AND Client_Id ='" + loggedId + "' ");
        }
    }

    

}
