/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author Madusha
 */
public class Question{
    
    int questionId;
    String title;
    String question;
    int categoryId;
    Date question_date;
    String clientId;
    String photographerId;
    int answerCount;    

    public Question() {
    }
    
    
    public Question(int questionId, String title, String question,int categoryId,Date question_date, String clientId,String photographerId,int answerCount)
     {
    this.questionId=questionId;
    this.question=question;
    this.categoryId=categoryId;
    this.question_date=question_date;
    this.clientId=clientId;
    this.photographerId=photographerId;
    this.answerCount=answerCount;
    }


 public int getquestionId() {
        return questionId;
    }

    public void setquestionId(int questionId) {
        this.questionId = questionId;
    }
    
    public String gettitle() {
        return title;
    }

    public void settitle(String title) {
        this.title = title;
    }
    
    public String getquestion() {
        return question;
    }

    public void setquestion(String question) {
        this.question = question;
    }

    
    public int getcategoryId() {
        return categoryId;
    }

    public void setcategoryId(int categoryId) {
        this.categoryId = categoryId;
 }

    
    public Date getquestion_date() {
        return question_date;
    }

    public void setquestion_date(Date question_date) {
        this.question_date = question_date;
    }

    
    public String getclientId() {
        return clientId;
    }

    public void setclientId(String clientId) {
        this.clientId = clientId;
    }

    
     public String getPhotographerId() {
        return photographerId;
    }

    public void setPhotographerId(String photographerId) {
        this.photographerId = photographerId;
    }

    public void setquestion_date(String d) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public int getanswerCount() {
        return answerCount;
    }

    public void setanswerCount(int answerCount) {
        this.answerCount = answerCount;
    }
    
    
    
}    