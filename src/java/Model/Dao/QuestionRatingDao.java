/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import java.sql.SQLException;

/**
 *
 * @author Sashini Shihara
 */
public interface QuestionRatingDao {
    
    public void addLike(int answerId) throws SQLException;
    public void addDisike(int answerId) throws SQLException;
    public void addRateatBegin(int answerId) throws SQLException;
    
    public int getLikes(int answerId) throws SQLException;
    public int getDislikes(int answerId) throws SQLException;
}
