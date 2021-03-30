/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Model.Photograph;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
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

//            response.setHeader("ContentDisposition", "inline");
        String realpath = getServletContext().getRealPath("");
        String imagename = p.getUncompresedpath();
        
        String path = realpath + "\\Resources\\Img\\Gallery Sample Images\\OriginalImageForSales\\" + imagename;
        String title = p.getTitle();

        File downloadFile = new File(path);
        FileInputStream inStream = new FileInputStream(downloadFile);

        response.setContentType("image/jpeg");
        response.setContentLength((int) downloadFile.length());
        response.setHeader("Content-Disposition", "attachment; filename=" + title);

        OutputStream outStream = response.getOutputStream();

        byte[] buffer = new byte[100000];
        int bytesRead = -1;

        while ((bytesRead = inStream.read(buffer)) != -1) {
            outStream.write(buffer, 0, bytesRead);
        }

        inStream.close();
        outStream.close();

    }

}
