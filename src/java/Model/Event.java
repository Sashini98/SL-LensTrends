/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.Date;

/**
 *
 * @author Sashini Shihara
 */
public class Event {
    
    String eventId;
    String eventName;
    String type;
    Date eventDate;
    /*time eventTime;*/
    float estimatedBudget;
    String area;
    String photographerId;
    String clientId;
    String hallNo;
    String venue;
    String street;
    String city;
    String province;
    String comment; 
    
    public Event()
    {}
    
    public Event(String eventId,String eventName,String type,Date eventDate,/*time eventTime,*/float estimatedBudget,String area,String photographerId,String clientId,String hallNo,String venue,String street,String city,String province,String comment)
    {
        this.eventId=eventId;
        this.eventName=eventName;
        this.type=type;
        this.eventDate=eventDate;
        /* this.eventTime=eventTime;*/
        this.estimatedBudget=estimatedBudget;
        this.area=area;
        this.photographerId=photographerId;
        this.clientId=clientId;
        this.hallNo=hallNo;
        this.venue=venue;
        this.street=street;
        this.city=city;
        this.province=province;
        this.comment=comment;
    }
    
    public String eventId()
    {
        return eventId;
    }
    
    
    
}
