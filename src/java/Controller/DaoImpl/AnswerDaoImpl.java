/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Answer;
import Model.Dao.AnswerDao;
import Model.Question;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sashini Shihara
 */
public class AnswerDaoImpl implements AnswerDao{

    @Override
    public int answerCount(int questionId) throws SQLException {
        int cnt=0;
        ResultSet num = DB.search("SELECT COUNT(*)AS rowcount FROM Answer WHERE Question_Id=" + questionId + "");
        num.next();
        cnt = num.getInt("rowcount");
        return cnt;
    }

    @Override
    public List getAllAnswers(int questionId) throws SQLException {
        ResultSet answ=DB.search("SELECT * FROM answer where  Question_Id=" + questionId + "");
        ArrayList<Answer> a = new ArrayList();
        
        while(answ.next())
        {
            Answer an=new Answer();
            an.setanswerId(answ.getInt("Answer_Id"));
            an.setanswer(answ.getString("Answer"));
            an.setanswerDate(answ.getDate("Answe_Date"));
            an.setPhotographerId(answ.getString("Photographer_Id"));
            
            a.add(an);

        }
        return a;
    }
    
}
