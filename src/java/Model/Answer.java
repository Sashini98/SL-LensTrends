/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author Sashini Shihara
 */
public class Answer {
    
    int answerId;
    String answer;
    Date answerDate;
    int questionId;
    String photographerId;
    
    public Answer()
    {}
    
    public Answer(int answerId,String answer,Date answerDate,int questionId,String photographerId)
    {
        this.answerId=answerId;
        this.answer=answer;
        this.answerDate=answerDate;
        this.questionId=questionId;
        this.photographerId=photographerId;
    }
    
    public int getanswerId()
    {
        return answerId;
    }
    
    public void setanswerId(int answerId) {
        this.answerId = answerId;
    }
    
    public String getanswer()
    {
        return answer;
    }
    
     public void setanswer(String answer) {
        this.answer = answer;
    }
     
     public Date getanswerDate() {
        return answerDate;
    }

    public void setanswerDate(Date answerDate) {
        this.answerDate = answerDate;
    }
    
     public int getquestionId() {
        return questionId;
    }

    public void setquestionId(int questionId) {
        this.questionId = questionId;
    }
    
     public String getPhotographerId() {
        return photographerId;
    }

    public void setPhotographerId(String photographerId) {
        this.photographerId = photographerId;
    }
    
    
}
