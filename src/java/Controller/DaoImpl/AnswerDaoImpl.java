/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Answer;
import Model.Comment;
import Model.Dao.AnswerDao;
import Model.Question;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Sashini Shihara
 */
public class AnswerDaoImpl implements AnswerDao {

    

    @Override
    public List getAllAnswers(int questionId) throws SQLException {
        ResultSet answ = DB.search("SELECT * FROM answer where  Question_Id=" + questionId + "");
        ArrayList<Answer> a = new ArrayList();

        while (answ.next()) {
            ResultSet comm = DB.search("SELECT * FROM comment where  Answer_Id=" + answ.getInt("Answer_Id") + "");
            ArrayList<Comment> b = new ArrayList();
            
            while(comm.next())
        {
            Comment c=new Comment();
            c.setcommentId(comm.getInt("Comment_Id"));
            c.setcomment(comm.getString("Comment"));
            c.setclientId(comm.getString("Client_Id"));
            c.setPhotographerId(comm.getString("Photographer_Id"));
            
            b.add(c);

        }
            
            Answer an = new Answer();
            an.setanswerId(answ.getInt("Answer_Id"));
            an.setanswer(answ.getString("Answer"));
            an.setanswerDate(answ.getDate("Answe_Date"));
            an.setPhotographerId(answ.getString("Photographer_Id"));
            an.setComments(b);

            a.add(an);

        }
        return a;
    }

    @Override
    public void addAnswer(Answer answer) throws SQLException {
        Date d = answer.getanswerDate();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date = sdf.format(d);
        DB.iud("INSERT INTO answer (Answer, Answe_Date, Question_Id, Photographer_Id) VALUES ('" + answer.getanswer() + "', '" + date + "', '" + answer.getquestionId() + "', '" + answer.getPhotographerId() + "');");
    }
    
    @Override
    public int getLastId() throws SQLException {
       int id;
       ResultSet aid=DB.search("SELECT Answer_Id as aid FROM answer ORDER BY Answer_Id DESC LIMIT 1; ");
           
        if (aid.next()) {
            id=aid.getInt("aid");
            return id;

        } else {
            return 0;
        }
       
    }

}
