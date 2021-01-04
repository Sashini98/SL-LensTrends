/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Sashini Shihara
 */
public class Comment {

    int commentId;
    String comment;
    int answerId;
    String clientId;
    String photographerId;

    public Comment() {
    }
    
    public Comment(int commentId,String comment,int answerId,String clientId,String photographerId) {
        this.commentId=commentId;
        this.comment=comment;
        this.answerId=answerId;
        this.clientId=clientId;
        this.photographerId=photographerId;
    }
    
    public int getcommentId()
    {
        return commentId;
    }
    
    public void setcommentId(int commentId)
    {
        this.commentId=commentId;
    }
    
    public String getcomment()
    {
        return comment;
    }
    
    public void setcomment(String comment)
    {
        this.comment=comment;
    }
    
    public int getanswerId()
    {
        return answerId;
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

    
    public void setanswerId(int answerId) {
        this.answerId = answerId;
    }
    
        
    }
            
