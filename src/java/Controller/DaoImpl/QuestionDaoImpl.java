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
import static java.lang.Integer.parseInt;
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
         DB.iud("INSERT INTO question ( title, Question, Question_Date, Client_Id, Answer_Count) VALUES ( '"+question.gettitle()+"', '"+ question.getquestion()+"', '"+date+"', '"+question.getclientId()+"', '0');");
    }
    
    
    @Override
    public void addQuestionifPhotographer(Question question) throws SQLException {
        Date d=question.getquestion_date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date = sdf.format(d);
        DB.iud("INSERT INTO question ( title, Question, Question_Date, Photographer_Id, Answer_Count) VALUES ( '"+question.gettitle()+"', '"+ question.getquestion()+"', '"+date+"', '"+question.getPhotographerId()+"', '0');");
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
            q.setanswerCount(ques.getInt("Answer_Count"));
            
            
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
        ResultSet category=DB.search("SELECT category_id  as cid FROM question_has_question_category where Question_Id = '" + questionId + "'");
        ArrayList a = new ArrayList();
        
        while(category.next())
        {
            ResultSet cat=DB.search("SELECT * FROM question_category WHERE id='"+category.getString("cid")+"' ");
            
            while(cat.next())
            {
             QuestionCategory qu=new QuestionCategory();
             qu.setcategoryId(cat.getInt("id"));
             qu.setCategory(cat.getString("category"));
             
             a.add(qu);
            }
            
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

    

    @Override
    public String getlastQuestionId() throws SQLException {
       String id="";
       ResultSet qid=DB.search("SELECT Question_Id as qid FROM question ORDER BY Question_Id DESC LIMIT 1; ");
           
        if (qid.next()) {
            id=qid.getString("qid");
            return id;

        } else {
            return null;
        }
       
    }

    

    @Override
    public void addQuestionCategory(Question question) throws SQLException {
       DB.iud("INSERT INTO question_has_question_category(Question_Id, category_id) VALUES ('"+question.getquestionId()+"','"+question.getcategoryId()+"')");
    }

    @Override
    public int getCategory(String category) throws SQLException {
        int i=0;
        ResultSet cat=DB.search("SELECT id FROM question_category WHERE category='"+category+"' ");
        
        if(cat.next())
        {
            i=cat.getInt("id");
            return i;
        }
        
        else{
            return 0;
        }
    }

    @Override
    public void addCategory(String category) throws SQLException {
        DB.iud("INSERT INTO question_category(category) VALUES ('"+category+"')");
    }

    @Override
    public String getCategoryName(int catId) throws SQLException {
        String name="";
        ResultSet cat=DB.search("SELECT category FROM question_category WHERE id='"+catId+"' ");
        
        if (cat.next())
        {
            name=cat.getString("category");
            return name;
        }
        
        else
        {
            return null;
        }
        
    }

    

    @Override
    public List<Question> getQuestfilter(String keyword, String filter, String sort) throws SQLException {
       List<Question> a = new ArrayList<>();
       ResultSet ques=null;
       
        try {
       
       if(filter.equalsIgnoreCase("NoAnswer")){
           if(sort.equalsIgnoreCase("newest")){
                 ques=DB.search("SELECT * FROM Question WHERE title like '%" + keyword + "%' AND Answer_Count=0 ORDER BY Question_Date ASC; ");
               
           }
           
           if(sort.equalsIgnoreCase("oldest")){
                 ques=DB.search("SELECT * FROM Question WHERE title like '%" + keyword + "%' AND Answer_Count=0 ORDER BY Question_Date DESC; ");
               
           }
           
           if(sort.equalsIgnoreCase("count")){
                 ques=DB.search("SELECT * FROM Question WHERE title like '%" + keyword + "%' AND Answer_Count=0 ORDER BY Answer_Count ASC; ");
               
           }
            
        }
        
         if(filter.equalsIgnoreCase("100plus")){
              if(sort.equalsIgnoreCase("newest")){
                ques=DB.search("SELECT * FROM Question WHERE title like '%" + keyword + "%' AND Answer_Count>100 ORDER BY Question_Date ASC; ");
               
           }
           
           if(sort.equalsIgnoreCase("oldest")){
                ques=DB.search("SELECT * FROM Question WHERE title like '%" + keyword + "%' AND Answer_Count>100 ORDER BY Question_Date DESC; ");
               
           }
           
           if(sort.equalsIgnoreCase("count")){
                ques=DB.search("SELECT * FROM Question WHERE title like '%" + keyword + "%' AND Answer_Count>100 ORDER BY Answer_Count ASC; ");
               
           }
            
        }
        
       if(filter.equalsIgnoreCase("none")){
            if(sort.equalsIgnoreCase("newest")){
               ques=DB.search("SELECT * FROM Question WHERE title like '%" + keyword + "%' ORDER BY Question_Date ASC; ");
               
           }
           
           if(sort.equalsIgnoreCase("oldest")){
               ques=DB.search("SELECT * FROM Question WHERE title like '%" + keyword + "%' ORDER BY Question_Date DESC; ");
               
           }
           
           if(sort.equalsIgnoreCase("count")){
               ques=DB.search("SELECT * FROM Question WHERE title like '%" + keyword + "%' ORDER BY Answer_Count ASC; ");
               
           }
           
       }
       
       
        while(ques.next())
        {
            Question q=new Question();
            q.setquestionId(ques.getInt("Question_Id"));
            q.settitle(ques.getString("title"));
            q.setquestion(ques.getString("Question"));
            q.setquestion_date(ques.getDate("Question_Date"));
            q.setclientId(ques.getString("Client_Id"));
            q.setPhotographerId(ques.getString("Photographer_Id"));
            q.setanswerCount(ques.getInt("Answer_Count"));
            
            
            a.add(q);

        }

        } catch (SQLException ex) {
            ex.printStackTrace();
//            Logger.getLogger(PhotographDaoImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return a;
    }

    @Override
    public void updateAnswCount(int questionId) throws SQLException {
         ResultSet answ=DB.search("SELECT Answer_Count FROM question where Question_Id = '" + questionId + "'");
        answ.next();
        int cnt=answ.getInt("Answer_Count");    
        System.out.println("c1;"+cnt);
        int cnt2=cnt+1;
        System.out.println("c2 :"+cnt2);
        
        DB.iud("UPDATE question SET Answer_Count='"+cnt2+"'  where Question_Id = '" + questionId + "'");
    }

    @Override
    public List getQuestionsByPerson(String log,String id) throws SQLException {
        ResultSet ques=null;
        
        if(log.equalsIgnoreCase("client")){
        ques=DB.search("SELECT * FROM Question Client_Id = '" + id + "'");
        }
        
        if(log.equalsIgnoreCase("photog")){
        ques=DB.search("SELECT * FROM Question Photographer_Id = '" + id + "'");
        }
        
        
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
            q.setanswerCount(ques.getInt("Answer_Count"));
            
            
            a.add(q);

        }
        return a;
    }

  
    
    
}
