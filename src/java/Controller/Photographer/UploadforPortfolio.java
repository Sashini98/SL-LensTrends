/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import Model.Photographer;
import Model.portfolio_photograph;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class UploadforPortfolio extends HttpServlet {

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
//            System.out.println();

            String realpath = getServletContext().getRealPath("");
            String imagename = String.valueOf(System.currentTimeMillis());
            String compressedimagename = String.valueOf(System.currentTimeMillis() + 5);
//
            String filepathorg = "";
            String filepathcom = "";
            filepathorg = realpath + "\\Resources\\Img\\Gallery Sample Images\\CompressedImage\\" + imagename + ".jpeg";
            filepathcom = realpath + "\\Resources\\Img\\Gallery Sample Images\\" + compressedimagename + ".jpeg";
////             System.out.println(filepath);
            File fileorg = new File(filepathorg);
            fi.write(fileorg);

//            File input = new File(filepathorg);
            BufferedImage image = ImageIO.read(fileorg);

            File compressedImageFile = new File(filepathcom);
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

//            String title = request.getParameter("title");
            int id = 0;
            String path = compressedimagename + ".jpeg";
            String title = fil.get(1).getString();
            System.out.println(title);
            Photographer p = (Photographer) request.getSession().getAttribute("loggedPhotographer");
            String Photographer_Id = p.getPhotographerId();

            portfolio_photograph m = new portfolio_photograph();

            m.setId(id);
            m.setPath(path);
            m.setTitle(title);
            m.setPhotogrpherId(Photographer_Id);

            PhotographDao photoDao = new PhotographDaoImpl();
            photoDao.uploadphotoforportfolio(m);

            response.getWriter().write("Successfully Uploaded");

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

}
