/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Photographer;

import Model.portfolio_photograph;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
public class UploadforPortfolio extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        portfolio_photograph upload = new portfolio_photograph();

        String realpath = getServletContext().getRealPath("");
        String imagename = String.valueOf(System.currentTimeMillis());
        String filepath = "";
        filepath = realpath + "\\Resources\\Img\\Gallery Sample Images\\" + imagename + ".jpg";

        File file = new File(filepath);
        
        
        response.getWriter().write("Successfully Uploaded");

    }

}
