/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Sashini Shihara
 */
public class PastEvent {

    int completedEventId;
    String comment;
    String photographerId;
    String eventId;

    public PastEvent() {
    }

    public PastEvent(int completedEventId, String comment, String photographerId, String eventId) {
        this.completedEventId = completedEventId;
        this.comment = comment;
        this.photographerId = photographerId;
        this.eventId = eventId;
    }

    public int getcompletedEventId() {
        return completedEventId;
    }

    public void setcompletedEventId(int completedEventId) {
        this.completedEventId = completedEventId;
    }

    public String getcomment() {
        return comment;
    }

    public void setcomment(String comment) {
        this.comment = comment;
    }

    public String getPhotographerId() {
        return photographerId;
    }

    public void setPhotographerId(String photographerId) {
        this.photographerId = photographerId;
    }

    public String geteventId() {
        return eventId;
    }

    public void seteventId(String eventId) {
        this.eventId = eventId;
    }

}
