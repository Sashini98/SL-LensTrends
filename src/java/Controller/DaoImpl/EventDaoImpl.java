/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.EventDao;
import Model.Event;
import Model.PastEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sashini Shihara
 */
public class EventDaoImpl implements EventDao {

    @Override
    public void addEvent(Event event) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List getPastEvents(String eventId) throws SQLException {
        ResultSet event=DB.search("SELECT * FROM completed_events WHERE Event_Id='"+eventId+"'");
        ArrayList<PastEvent> a = new ArrayList();
        
        while(event.next())
        {
           PastEvent e=new PastEvent();
           e.seteventId(event.getString("Event_Id"));
           e.setcompletedEventId(event.getInt("Completed_Event_Id"));
           e.setcomment(event.getString("Comments"));
           e.setPhotographerId(event.getString("Photographer_Id"));
            
           a.add(e);

        }
        return a;
    }

    @Override
    public List getEvents(String eventId) throws SQLException {
        ResultSet event=DB.search("SELECT * FROM event WHERE Event_Id='"+eventId+"'");        
        ArrayList<Event> a = new ArrayList();
        
        while(event.next())
        {
           Event e=new Event();
          e.seteventName(event.getString("Event_Name"));
          e.seteventDate(event.getDate("Date"));
          e.setclientId(event.getString("Client_Id"));
          e.settype(event.getString("Type"));
          e.sethallNo(event.getString("hall_No"));
          e.setvenue(event.getString("Venue"));
          e.setstreet(event.getString("street"));
          e.setcity(event.getString("city"));
          e.setprovince(event.getString("province"));
            
           a.add(e);

        }
        return a;
        
    }

    @Override
    public List getPastEventList(String clientId) throws SQLException {
        ResultSet event=DB.search("SELECT Event_Id FROM event WHERE Client_Id='"+clientId+"'");
        ArrayList a = new ArrayList();
        
        while(event.next())
        {
           
           a.add(event.getString("Event_Id"));         

        }
        return a;
    }
    
}
