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
       
        ResultSet msg =DB.search("SELECT * FROM message");
        ArrayList<Messages> a = new ArrayList();
        
        while(msg.next())
        {
            Messages m =new Messages();
            m.setMessageId(msg.getInt("id"));
            m.setMessage(msg.getString("Message"));
            m.setName(msg.getString("name"));
            m.setMessage_date(msg.getDate("date"));
            m.setEmail(msg.getString("email"));
            m.setMobile(msg.getString("phone"));
            m.setTime(msg.getTime("time"));
            
            a.add(m);

        }
        return a;
        
    
    
}
}
