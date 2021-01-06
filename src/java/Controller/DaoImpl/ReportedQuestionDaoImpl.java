/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.ReportedQuestionDao;
import Model.ReportedQuestion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Madusha
 */
public class ReportedQuestionDaoImpl implements ReportedQuestionDao{

    @Override
    public List getAllReportedQuestions() throws SQLException {
        
        ResultSet rq =DB.search("SELECT * FROM reported_question");
        ArrayList<ReportedQuestion> a = new ArrayList();
        
        while(rq.next())
        {
            ReportedQuestion p =new ReportedQuestion();
            p.setReportId(rq.getInt("Report_Id"));
            p.setReason(rq.getString("Reason"));
            p.setDescription(rq.getString("Description"));
            p.setQuestionId(rq.getInt("Question_Id"));
            p.setClientId(rq.getString("Client_Id"));
            p.setPhotographerId(rq.getString("Photographer_Id"));
            
            a.add(p);

        }
        return a;
    }
    
}
