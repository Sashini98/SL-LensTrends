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
public interface AnswerDao {
    
    
    public int answerCount(int questionId) throws SQLException;
    
}
