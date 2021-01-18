/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Question;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Sashini Shihara
 */
public interface QuestionDao {
    
    public void addQuestionifClient(Question question) throws SQLException;
    public void addQuestionifPhotographer(Question question) throws SQLException;
    public void addQuestionCategory(Question question)throws SQLException;
    public void addCategory(String category)throws SQLException;
    
    public List getAllQuestions() throws SQLException;
    public List getCategory(int questionId) throws SQLException;
    public int getCategory(String category)throws SQLException;
    public Question getQuestionbtId(int questionId) throws SQLException;
    public String getlastQuestionId() throws SQLException;
            
    
    public void deleteQuestion(int questionId) throws SQLException;
    
    public List getQuestionCategory() throws SQLException;
    
}
