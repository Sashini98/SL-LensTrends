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
public class ReportedQuestionDaoImpl implements ReportedQuestionDao {

    @Override
    public List getAllReportedQuestions() throws SQLException {

        ResultSet rq = DB.search("SELECT * FROM reported_question");
        ArrayList<ReportedQuestion> a = new ArrayList();

        while (rq.next()) {
            ReportedQuestion p = new ReportedQuestion();
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

    @Override
    public ReportedQuestion getReportedQuestionById(int id) throws SQLException {

        ResultSet report = DB.search("SELECT * FROM reported_question WHERE Report_Id = '" + id + "'");

        if (report.next()) {
            ReportedQuestion p = new ReportedQuestion(report.getInt("Report_Id"), report.getString("Reason"),
                    report.getString("Description"), report.getInt("Question_Id"), report.getString("Photographer_Id"),
                    report.getString("Client_Id"));

            return p;
        } else {
            return null;
        }
    }

    @Override
    public void addReportedQuestion(String log, ReportedQuestion rep) throws SQLException {
        if (log.equalsIgnoreCase("client")) {
            DB.iud("INSERT INTO reported_question(Reason, Description, Question_Id, Client_Id) VALUES ('"+rep.getReason()+"','"+rep.getDescription()+"','"+rep.getQuestionId()+"','"+rep.getClientId()+"')");

        } else {
            DB.iud("INSERT INTO reported_question(Reason, Description, Question_Id, Photographer_Id) VALUES ('"+rep.getReason()+"','"+rep.getDescription()+"','"+rep.getQuestionId()+"','"+rep.getPhotographerId()+"')");
            

        }
    }

    @Override
    public void deleteReportedQuestionsByClient(String clientId) throws SQLException {
        DB.iud("DELETE FROM reported_question where Client_Id = '" + clientId + "'");
    }

    @Override
    public void deleteReportedQuestion(int QuestionId) throws SQLException {
        DB.iud("DELETE FROM reported_question WHERE Question_Id = '" + QuestionId + "'");
    }

}
