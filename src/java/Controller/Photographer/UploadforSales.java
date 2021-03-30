/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import Model.Photograph;
import Model.Photographer;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.geometry.Orientation;
import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.stream.ImageOutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author ASUS
 */
public class UploadforSales extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            DiskFileItemFactory dfif = new DiskFileItemFactory();
            ServletFileUpload sfu = new ServletFileUpload(dfif);
//ServletFileUpload will scan through all the uploaded files
//(using an Iterator which parses the MIME stuff and knows how to deal
//with content length etc.).

            List<FileItem> fil = sfu.parseRequest(request);
//For each uploaded file, the parse method asks the FileItemFactory to create a 
//local representation for the uploaded file and then copies the contents from memory
//(e.g. from the HTTP POST request, which is held in memory) to the actual file on disk.

            FileItem fi = fil.get(0);
            String realpath = getServletContext().getRealPath("");
            String Comimagename = String.valueOf("Com" + System.currentTimeMillis());
            String Orgimagename = String.valueOf("Org" + System.currentTimeMillis());

            String Orgfilepath = realpath + "\\Resources\\Img\\Gallery Sample Images\\OriginalImageForSales\\" + Orgimagename + ".jpeg";
            String Comfilepath = realpath + "\\Resources\\Img\\Gallery Sample Images\\" + Comimagename + ".jpeg";

            File Orgfile = new File(Orgfilepath);
            fi.write(Orgfile);

            BufferedImage image = ImageIO.read(Orgfile);
            System.out.println("com1");
            File compressedImageFile = new File(Comfilepath);
            System.out.println("com2");
            OutputStream os = new FileOutputStream(compressedImageFile);

            Iterator<ImageWriter> writers = ImageIO.getImageWritersByFormatName("jpeg");
            ImageWriter writer = (ImageWriter) writers.next();

            ImageOutputStream ios = ImageIO.createImageOutputStream(os);
            writer.setOutput(ios);

            ImageWriteParam param = writer.getDefaultWriteParam();

            param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
            param.setCompressionQuality(0.2f);
            writer.write(null, new IIOImage(image, null, null), param);

//            File filecom = new File(filepathcom);
//            fi.write(filecom);
            os.close();
            ios.close();
            writer.dispose();

            int height = image.getHeight();
            int width = image.getWidth();

            int orientation = 0;
            if (width > height) {
                orientation += 1;
            } else if (height > width) {
                orientation += 2;
            } else if (height == width) {
                orientation += 3;
            }

            String compath = Comimagename + ".jpeg";
            String orgpath = Orgimagename + ".jpeg";
            int stateid = 1;

            Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
            String Photographer_Id = p.getPhotographerId();

            Photograph m = new Photograph();

            m.setStateId(stateid);
            m.setPath(compath);
            m.setUncompresedpath(orgpath);
            m.setWidth(width);
            m.setHeight(height);
            m.setUploadedDate(new Date());
            m.setPhotogrpherId(Photographer_Id);
            m.setOrientationId(orientation);
            m.setUndiscovered(true);
            m.setPeople(false);
            PhotographDao photoDao = new PhotographDaoImpl();

            photoDao.uploadphotoforsales(m);
//            System.out.println("hdjvbfh");

            response.getWriter().write("Successfully Uploaded");

        } catch (Exception ex) {
            Logger.getLogger(UploadforSales.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
