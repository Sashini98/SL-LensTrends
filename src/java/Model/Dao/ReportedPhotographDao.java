/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.Photograph;
import Model.ReportedPhotographs;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Madusha
 */
public interface ReportedPhotographDao {
    
    public List getAllReportedPhotos() throws SQLException;
    public ReportedPhotographs getReportedPhotographById(int id) throws SQLException;
    public void addReportedPhotograph(ReportedPhotographs photograph) throws SQLException;
    public void deleteReportedPhotographByClient(String clientId) throws SQLException;
    public boolean hasPerviousReports(int photographId, String clientId) throws SQLException;
    public void deleteReportedPhotograph(int PhotographId) throws SQLException;
}
