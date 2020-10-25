/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import DbClasses.*;
import java.util.Date;

/**
 *
 * @author Madusha
 */
public class Question{
    
    int questionId;
    String question;
    String category;
    Date question_date;
    int clientId;
    int photographerId;

    public Question() {
    }
    
    
    public Question(int questionId, String question,String category,Date question_date, int clientId,int photographerId)
     {
    this.questionId=questionId;
    this.question=question;
    this.category=category;
    this.question_date=question_date;
    this.clientId=clientId;
    this.photographerId=photographerId;
    }


 public int getquestionId() {
        return questionId;
    }

    public void setquestionId(int questionId) {
        this.questionId = questionId;
    }
    
    public String getquestion() {
        return question;
    }

    public void setquestion(String question) {
        this.question = question;
    }

    
    public String getcategory() {
        return category;
    }

    public void setcategory(String category) {
        this.category = category;
 }

    
    public Date getquestion_date() {
        return question_date;
    }

    public void setquestion_date(Date question_date) {
        this.question_date = question_date;
    }

    
    public int getclientId() {
        return questionId;
    }

    public void setclientId(int clientId) {
        this.clientId = clientId;
    }

    
     public int getPhotographerId() {
        return photographerId;
    }

    public void setPhotographerId(int photographerId) {
        this.photographerId = photographerId;
    }
}    