/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Dao;

import Model.PurchaseInvoice;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author kesh
 */
public interface PurchaseInvoiceDao {
    
    public ArrayList<PurchaseInvoice> getPurchacedPhotos(String clientId) throws SQLException;
    public void setPurchasedImage(PurchaseInvoice purchaseInvoice)throws SQLException; 
    public void deleteClientInvoices(String clientId) throws SQLException;
    
}
