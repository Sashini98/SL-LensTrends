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
public class QuestinRatingDaoImpl implements QuestionRatingDao{

    

    @Override
    public void addLike(int answerId) throws SQLException {
        ResultSet likes=DB.search("SELECT Likes FROM answerrating where Answer_Id = '" + answerId + "'");
        likes.next();
        int cnt=parseInt(likes.getString("Likes"));
        
        int cnt2=cnt++;
        
        DB.iud("INSERT INTO answerrating(Likes, Answer_Id) VALUES ('"+cnt2+"','"+answerId+"')");
    }

    @Override
    public void addDisike(int answerId) throws SQLException {
        
        ResultSet dislikes=DB.search("SELECT Dislikes FROM answerrating where Answer_Id = '" + answerId + "'");
        dislikes.next();
        
        int cnt=parseInt(dislikes.getString("Dislikes"));
        
        int cnt2=cnt++;
        
        DB.iud("INSERT INTO answerrating(Dislikes, Answer_Id) VALUES ('"+cnt2+"','"+answerId+"')");
        
    }
    
}
