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
public class ReportedPhotographs {
    
    int reportId;
    String reason;
    String description;
    int photographId;
    String clientId;

    public ReportedPhotographs() {
    }

    public ReportedPhotographs(int reportId, String reason, String description, int photographId, String clientId) {
        this.reportId = reportId;
        this.reason = reason;
        this.description = description;
        this.photographId = photographId;
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

    public int getPhotographId() {
        return photographId;
    }

    public void setPhotographId(int photographId) {
        this.photographId = photographId;
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }
    
    
    
}
