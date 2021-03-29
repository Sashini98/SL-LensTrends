/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.ReportedPhotographer;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Madusha
 */
public interface ReportedPhotographerDao {

    public List getAllReportedUsers() throws SQLException;

    public int reportedUserCount() throws SQLException;

    public void deleteReportedPhotographerByClient(String clientId) throws SQLException;
}
