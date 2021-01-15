/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.QuestionDao;
import Model.Question;
import Model.QuestionCategory;
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
public class QuestionDaoImpl implements QuestionDao {

        
    @Override
    public void addQuestionifClient(Question question) throws SQLException {
        Date d=question.getquestion_date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date = sdf.format(d);
         DB.iud("INSERT INTO question ( title, Question, Question_Date, Client_Id) VALUES ( '"+question.gettitle()+"', '"+ question.getquestion()+"', '"+date+"', '"+question.getclientId()+"');");
    }
    
    
    @Override
    public void addQuestionifPhotographer(Question question) throws SQLException {
        DB.iud("INSERT INTO question ( title, Question, Question_Date, Photographer_Id) VALUES ( '"+question.gettitle()+"', '"+ question.getquestion()+"', '"+question.getcategory()+"', '"+question.getquestion_date()+"', '"+question.getPhotographerId()+"');");
    }


    @Override
    public List getAllQuestions() throws SQLException {
        ResultSet ques=DB.search("SELECT * FROM Question");
        ArrayList<Question> a = new ArrayList();
        
        while(ques.next())
        {
            Question q=new Question();
            q.setquestionId(ques.getInt("Question_Id"));
            q.settitle(ques.getString("title"));
            q.setquestion(ques.getString("Question"));
            q.setquestion_date(ques.getDate("Question_Date"));
            q.setclientId(ques.getString("Client_Id"));
            q.setPhotographerId(ques.getString("Photographer_Id"));
            
            a.add(q);

        }
        return a;
    }

    @Override
    public void deleteQuestion(int questionId) throws SQLException {
         DB.iud("DELETE FROM Question where QuestionId = '" + questionId + "'");
    }

    @Override
    public List getCategory(int questionId) throws SQLException {
        ResultSet category=DB.search("SELECT category_id FROM question_has_question_category where Question_Id = '" + questionId + "'");
        ArrayList a = new ArrayList();
        
        while(category.next())
        {
            a.add(category.getString("category_id"));
        }
        return a;
    }

    @Override
    public List getQuestionCategory() throws SQLException {
        ArrayList<QuestionCategory> a = new ArrayList();
        ResultSet categ=DB.search("SELECT category FROM question_category");
        
        while(categ.next())
        {
            QuestionCategory q=new QuestionCategory();
            q.setCategory(categ.getString("category"));
            
            a.add(q);
        }
        
        return a;
    }

    @Override
    public Question getQuestionbtId(int questionId) throws SQLException {
        
         ResultSet ques=DB.search("SELECT * FROM Question where Question_Id = '" + questionId + "'");
          Question q=new Question();
         if(ques.next())
         {
            
            q.settitle(ques.getString("title"));
            q.setquestion(ques.getString("Question"));
            q.setquestion_date(ques.getDate("Question_Date"));
            q.setclientId(ques.getString("Client_Id"));
            q.setPhotographerId(ques.getString("Photographer_Id"));
             
         }
         return q;
        
    }

  
    
    
}
