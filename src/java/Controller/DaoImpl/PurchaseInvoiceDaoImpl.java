/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.PhotographDao;
import Model.Dao.PurchaseInvoiceDao;
import Model.Photograph;
import Model.PurchaseInvoice;
import java.lang.reflect.Array;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

/**
 *
 * @author kesh
 */
public class PurchaseInvoiceDaoImpl implements PurchaseInvoiceDao {

    @Override
    public ArrayList<PurchaseInvoice> getPurchacedPhotos(String clientId) throws SQLException {

        ArrayList<PurchaseInvoice> photos = new ArrayList<>();

        try {
            ResultSet photoInvoices = DB.search("SELECT  * FROM purchaseinvoice WHERE Client_Id = '" + clientId + "'");

            while (photoInvoices.next()) {
                PurchaseInvoice p = new PurchaseInvoice();
                p.setInvoice_id(photoInvoices.getString("Invoice_Id"));
                p.setDate(photoInvoices.getDate("Date"));
                p.setTime(photoInvoices.getDate("Time"));
                p.setTotal(photoInvoices.getDouble("Total"));

                PhotographDao p2 = new PhotographDaoImpl();
                Photograph photographById = p2.getPhotographById(photoInvoices.getInt("Photograph_Id"));

                p.setPhotograph(photographById);

                p.setClientId(photoInvoices.getString("Client_Id"));

                photos.add(p);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        }
        return photos;

    }

    public static synchronized String getNewInvoiceId() throws SQLException {
        ResultSet ids = DB.search("SELECT Invoice_Id FROM purchaseinvoice ORDER BY Client_Id DESC LIMIT 1;");
        String newID;
        if (ids.next()) {
            int id = Integer.parseInt(ids.getString("Invoice_Id").split("INV")[1]);
            id += 1;
            newID = "INV"+id;

        } else {
            newID = "INV1";
        }

        return newID;
    }

    @Override
    public void setPurchasedImage(PurchaseInvoice pi) throws SQLException {
        Date date = pi.getDate();
        Date time = pi.getTime();
        SimpleDateFormat sdff = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sdff2 = new SimpleDateFormat("HH:mm:ss");
        String timefor = sdff2.format(time);
        String format = sdff.format(date);
        DB.iud("INSERT INTO purchaseinvoice (Invoice_Id,Date,Time,Total,Photograph_Id,Client_Id) "
                + "VALUES ('" + pi.getInvoice_id() + "', '" + format + "', '" + timefor + "', '" + pi.getTotal() + "', '" + pi.getPhotograph().getId() + "', '" + pi.getClientId() + "')");
    }

    @Override
    public void deleteClientInvoices(String clientId) throws SQLException {
         DB.iud("DELETE FROM purchaseinvoice where Client_Id = '" + clientId + "'");
    }

//    @Override
//    public double gettotalearning(String pid) throws SQLException {
//        DB.iud("SELECT Total FROM purchaseinvoice ");
//        return 0;        
//    }

}
