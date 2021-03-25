/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;
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
    ArrayList<Comment> comments;
    int likes;
    int dislikes;

    public Answer() {
    }

    public Answer(int answerId, String answer, Date answerDate, int questionId, String photographerId, ArrayList<Comment> comments,int likes,int dislikes) {
        this.answerId = answerId;
        this.answer = answer;
        this.answerDate = answerDate;
        this.questionId = questionId;
        this.photographerId = photographerId;
        this.comments = comments;
        this.likes=likes;
        this.dislikes=dislikes;
    }

    public int getanswerId() {
        return answerId;
    }

    public void setanswerId(int answerId) {
        this.answerId = answerId;
    }

    public String getanswer() {
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

    public ArrayList<Comment> getComments() {
        return comments;

    }

    public void setComments(ArrayList<Comment> comments) {
        this.comments = comments;
    }
    
    public int getlikes() {
        return likes;
    }

    public void setlikes(int likes) {
        this.likes = likes;
    }
    
     public int getdislikes() {
        return dislikes;
    }

    public void setdislikes(int dislikes) {
        this.dislikes = dislikes;
    }

}
