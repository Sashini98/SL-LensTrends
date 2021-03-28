/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.ReportedQuestion;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Madusha
 */
public interface ReportedQuestionDao {
    public void addReportedQuestion(String log,ReportedQuestion rep)throws SQLException;
    
    public List getAllReportedQuestions() throws SQLException;
    public ReportedQuestion getReportedQuestionById(int id) throws SQLException;
}
