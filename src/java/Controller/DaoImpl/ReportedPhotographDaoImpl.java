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

    @Override
    public ReportedPhotographs getReportedPhotographById(int id) throws SQLException {
      
         ResultSet report = DB.search("SELECT * FROM reported_photo WHERE Report_Id = '" + id + "'");
         
         if (report.next()) {
            ReportedPhotographs p = new ReportedPhotographs(report.getInt("Report_Id"), report.getString("Reason"), 
              report.getString("Description"), report.getInt("Photograph_Id"), report.getString("Photographer_Id"),
              report.getString("Client_Id"));
            
            return p;
        }else{
        return null;
    }
    
}

    @Override
    public void addReportedPhotograph(ReportedPhotographs photograph) throws SQLException {
        DB.iud("INSERT INTO reported_photo(Reason,Description,Photograph_Id,Client_Id,Photographer_Id) VALUES "
                + "('"+ photograph.getReason() +"', '"+ photograph.getDescription() +"', '"+ photograph.getPhotographId() +"', '"+ photograph.getClientId() +"', '"+ photograph.getPhotographerId() +"')");
    }

    @Override
    public boolean hasPerviousReports(int photographId, String clientId) throws SQLException {
        ResultSet search = DB.search("SELECT * FROM reported_photo WHERE Photograph_Id = '"+ photographId +"' AND Client_Id = '"+ clientId +"'");
        boolean b = false;
        if (search.next()) {
            b = true;
        }
        
        return b;
    }
}
