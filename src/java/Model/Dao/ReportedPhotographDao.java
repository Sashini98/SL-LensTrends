/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.ReportedPhotographs;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Madusha
 */
public interface ReportedPhotographDao {
    
    public List getAllReportedPhotos() throws SQLException;
}