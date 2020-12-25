/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Madusha
 */
public class ReportedPhotographer {
    
    int reportId;
    String reason;
    String description;
    String photographerId;
    String clientId;

    public ReportedPhotographer() {
    }

    public ReportedPhotographer(int reportId, String reason, String description, String photographerId, String clientId) {
        this.reportId = reportId;
        this.reason = reason;
        this.description = description;
        this.photographerId = photographerId;
        this.clientId = clientId;
    }

    public int getReportId() {
        return reportId;
    }

    public void setReportId(int reportId) {
        this.reportId = reportId;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhotographerId() {
        return photographerId;
    }

    public void setPhotographerId(String photographerId) {
        this.photographerId = photographerId;
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }
    
    
    
}
