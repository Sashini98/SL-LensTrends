/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Comment;
import Model.Dao.CommentDao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sashini Shihara
 */
public class CommentDaoImpl implements CommentDao{

       @Override
    public List getCommentbyId(int answerId) throws SQLException {
        ResultSet comm=DB.search("SELECT * FROM comment where  Answer_Id=" + answerId + "");
        ArrayList<Comment> a = new ArrayList();
        
        while(comm.next())
        {
            Comment c=new Comment();
            c.setcommentId(comm.getInt("Comment_Id"));
            c.setcomment(comm.getString("Comment"));
            c.setclientId(comm.getString("Client_Id"));
            c.setPhotographerId(comm.getString("Photographer_Id"));
            
            a.add(c);

        }
        return a;
      
    }

    @Override
    public void addCommentifClient(Comment comment) throws SQLException {
         DB.iud("INSERT INTO comment (Comment, Answer_Id, Client_Id) VALUES ('"+comment.getcomment()+"', '"+comment.getanswerId()+"', '"+comment.getclientId()+"');");
    }

    @Override
    public void addCommentifPhotographer(Comment comment) throws SQLException {
         DB.iud("INSERT INTO comment (Comment, Answer_Id, Photographer_Id) VALUES ('"+comment.getcomment()+"', '"+comment.getanswerId()+"', '"+comment.getPhotographerId()+"');");
    }
    
}
