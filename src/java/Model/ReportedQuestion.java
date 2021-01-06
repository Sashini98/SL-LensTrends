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
public class ReportedQuestion {
    
    int reportId;
    String reason;
    String description;
    int questionId;
    String clientId;
    String photographerId;

    public ReportedQuestion() {
    }

    public ReportedQuestion(int reportId, String reason, String description, int questionId, String clientId, String photographerId) {
        this.reportId = reportId;
        this.reason = reason;
        this.description = description;
        this.questionId = questionId;
        this.clientId = clientId;
        this.photographerId = photographerId;
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

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public String getPhotographerId() {
        return photographerId;
    }

    public void setPhotographerId(String photographerId) {
        this.photographerId = photographerId;
    }
    
    
}
