/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.AnswerDao;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Sashini Shihara
 */
public class AnswerDaoImpl implements AnswerDao{

    @Override
    public int answerCount(int questionId) throws SQLException {
        int cnt=0;
        ResultSet num = DB.search("SELECT COUNT(*)AS rowcount FROM Answer WHERE Question_Id=" + questionId + "");
        num.next();
        cnt = num.getInt("rowcount");
        return cnt;
    }
    
}
