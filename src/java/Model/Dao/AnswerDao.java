/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Answer;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Sashini Shihara
 */
public interface AnswerDao {
    
    public void addAnswer(Answer answer) throws SQLException;
    
     public List getAllAnswers(int questionId) throws SQLException;
      public int getLastId() throws SQLException ;
    
}
