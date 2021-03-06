/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.PurchaseInvoiceDaoImpl;
import Model.Client;
import Model.Dao.PurchaseInvoiceDao;
import Model.Photograph;
import Model.PurchaseInvoice;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class DownloadImage extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Photograph p = (Photograph) request.getSession().getAttribute("photo");
        
         try {
            Photograph photo = (Photograph) request.getSession().getAttribute("photo");
            Client client = (Client) request.getSession().getAttribute("loggedClient");
            PurchaseInvoiceDaoImpl dao1 = new PurchaseInvoiceDaoImpl();
            String newInvoiceId = dao1.getNewInvoiceId();
            
            PurchaseInvoice pi = new PurchaseInvoice();
            pi.setInvoice_id(newInvoiceId);
            pi.setDate(new Date());
            pi.setTime(new Date());
            pi.setTotal(photo.Price());
            pi.setPhotograph(photo);
            pi.setClientId(client.getClientId());
            
            
            dao1.setPurchasedImage(pi);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
//            response.setHeader("ContentDisposition", "inline");
        String realpath = getServletContext().getRealPath("");
        String imagename = p.getUncompresedpath();
        
        String path = realpath + "\\Resources\\Img\\Gallery Sample Images\\OriginalImageForSales\\" + imagename;
        String title = p.getTitle();

        File downloadFile = new File(path);
        FileInputStream inStream = new FileInputStream(downloadFile);

        response.setContentType("image/jpeg");
        response.setContentLength((int) downloadFile.length());
        response.setHeader("Content-Disposition", "attachment; filename=" + title+".jpeg");

        OutputStream outStream = response.getOutputStream();
        System.out.println(downloadFile.length());
        byte[] buffer = new byte[(int)downloadFile.length()];
        int bytesRead = -1;

        while ((bytesRead = inStream.read(buffer)) != -1) {
            outStream.write(buffer, 0, bytesRead);
        }

        inStream.close();
        outStream.close();
//        response.getWriter().write(outStream);
    }

}
