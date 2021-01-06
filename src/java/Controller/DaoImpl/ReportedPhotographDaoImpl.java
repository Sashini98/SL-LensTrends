/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.ReportedPhotographDao;
import Model.ReportedPhotographs;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Madusha
 */
public class ReportedPhotographDaoImpl implements ReportedPhotographDao{

    @Override
    public List getAllReportedPhotos() throws SQLException {
       
        ResultSet r =DB.search("SELECT * FROM reported_photo");
        ArrayList<ReportedPhotographs> a = new ArrayList();
        
        while(r.next())
        {
            ReportedPhotographs p =new ReportedPhotographs();
            p.setReportId(r.getInt("Report_Id"));
            p.setReason(r.getString("Reason"));
            p.setDescription(r.getString("Description"));
            p.setPhotographId(r.getInt("Photograph_Id"));
            p.setClientId(r.getString("Client_Id"));
            
            a.add(p);

        }
        return a;
    }
    
}
