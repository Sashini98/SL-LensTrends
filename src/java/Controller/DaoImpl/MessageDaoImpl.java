/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.MessageDao;
import Model.Messages;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Madusha
 */
public class MessageDaoImpl implements MessageDao{

    @Override
    public List getAllMessages() throws SQLException {
       
        ResultSet msg =DB.search("SELECT * FROM messages");
        ArrayList<Messages> a = new ArrayList();
        
        while(msg.next())
        {
            Messages m =new Messages();
            m.setMessageId(msg.getInt("Question_Id"));
            m.setMessage(msg.getString("title"));
            m.setName(msg.getString("Question"));
            m.setMessage_date(msg.getDate("Question_Date"));
            m.setEmail(msg.getString("Client_Id"));
            m.setMobile(msg.getString("Photographer_Id"));
            m.setTime(msg.getTime("time"));
            
            a.add(m);

        }
        return a;
        
    
    
}
}
