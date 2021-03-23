/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.time.LocalTime;
import java.util.Date;

/**
 *
 * @author Sashini Shihara
 */
public class Event {

    String eventId;
    String eventName;
    String type;
    String eventDate;
    String eventTime;
    /*time eventTime;*/
    String area;
    String clientId;
    String hallNo;
    String venue;
    String street;
    String city;
    String province;

    public Event() {
    }

    public Event(String eventId, String eventName, String type, String eventDate, String eventTime, String area, String clientId, String hallNo, String venue, String street, String city, String province) {
        this.eventId = eventId;
        this.eventName = eventName;
        this.type = type;
        this.eventDate = eventDate;
        this.eventTime = eventTime;
        this.area = area;
        this.clientId = clientId;
        this.hallNo = hallNo;
        this.venue = venue;
        this.street = street;
        this.city = city;
        this.province = province;

    }

    public String geteventId() {
        return eventId;
    }

    public void seteventId(String eventId) {
        this.eventId = eventId;
    }

    public String geteventName() {
        return eventName;
    }

    public void seteventName(String eventName) {
        this.eventName = eventName;
    }

    public String gettype() {
        return type;
    }

    public void settype(String type) {
        this.type = type;
    }

    public String geteventDate() {
        return eventDate;
    }

    public void seteventDate(String eventDate) {
        this.eventDate = eventDate;
    }

    public String geteventTime() {
        return eventTime;
    }

    public void seteventTate(String eventTime) {
        this.eventTime = eventTime;
    }

    public String getarea() {
        return area;
    }

    public void setarea(String area) {
        this.area = area;
    }

    public String getclientId() {
        return clientId;
    }

    public void setclientId(String clientId) {
        this.clientId = clientId;
    }

    public String gethallNo() {
        return hallNo;
    }

    public void sethallNo(String hallNo) {
        this.hallNo = hallNo;
    }

    public String getvenue() {
        return venue;
    }

    public void setvenue(String venue) {
        this.venue = venue;
    }

    public String getstreet() {
        return street;
    }

    public void setstreet(String street) {
        this.street = street;
    }

    public String getcity() {
        return city;
    }

    public void setcity(String city) {
        this.city = city;
    }

    public String getprovince() {
        return province;
    }

    public void setprovince(String province) {
        this.province = province;
    }
}
