/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Event;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Sashini Shihara
 */
public interface EventDao {
    public void addEvent(Event event)throws SQLException;
    public List getPastEvents(String clientId)throws SQLException;
    public List getEvents(String eventId)throws SQLException;
    
}
