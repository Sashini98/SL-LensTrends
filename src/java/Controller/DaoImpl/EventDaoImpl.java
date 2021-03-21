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
import java.text.SimpleDateFormat;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Sashini Shihara
 */
public class EventDaoImpl implements EventDao {

    @Override
    public void addEvent(Event event) throws SQLException {
        Date d=event.geteventDate();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String date = sdf.format(d);
        
        LocalTime t=event.geteventTime();
        SimpleDateFormat sdf1 = new SimpleDateFormat("hh.mm aa");
        String time=sdf1.format(t);
        
         DB.iud("INSERT INTO event (Event_Name, Type, Date, Time ,Client_Id , hall_no , Venue, street , city , province  ) VALUES ('"+event.geteventName()+"', '"+event.gettype()+"', '"+date+"', '"+time+"', '"+event.getclientId()+"' '"+event.gethallNo()+"','"+event.getvenue()+"','"+event.getstreet()+"','"+event.getcity()+"','"+event.getprovince()+"');");
    
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
