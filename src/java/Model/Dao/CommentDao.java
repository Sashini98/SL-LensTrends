/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Comment;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Sashini Shihara
 */
public interface CommentDao {
    public void  addCommentifClient(Comment comment) throws SQLException;
     public void  addCommentifPhotographer(Comment comment) throws SQLException;
    
    public List getCommentbyId(int answerId) throws SQLException;
}
