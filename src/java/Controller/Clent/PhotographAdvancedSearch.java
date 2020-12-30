/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Model.Photograph;
import java.io.IOException;
import java.util.LinkedList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class PhotographAdvancedSearch extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String sortBy = request.getParameter("sortBy");
        String orientation = request.getParameter("orientation");
        String sizeOfPixels = request.getParameter("sizePixel");

        double minWidth = 0.0;
        double maxWidth = 0.0;
        double minHeight = 0.0;
        double maxHeight = 0.0;

        if (!request.getParameter("minWidth").equals("")) {
            minWidth = Double.parseDouble(request.getParameter("minWidth"));
        }
        if (!request.getParameter("maxWidth").equals("")) {
            maxWidth = Double.parseDouble(request.getParameter("maxWidth"));
        }
        if (!request.getParameter("minHeight").equals("")) {
            minHeight = Double.parseDouble(request.getParameter("minHeight"));
        }
        if (!request.getParameter("maxHeight").equals("")) {
            maxHeight = Double.parseDouble(request.getParameter("maxHeight"));
        }

        String people = request.getParameter("people");
        String gender = request.getParameter("gender");
        boolean undiscovered = Boolean.parseBoolean(request.getParameter("undiscovered"));

        LinkedList<Photograph> photos = (LinkedList<Photograph>) request.getSession().getAttribute("searchedPics");

        // orientation sort
        if (orientation.equalsIgnoreCase("AllOrientations")) {
           
            if (orientation.equalsIgnoreCase("Horizontal")) {
                for (Photograph photo : photos) {
                    
                    if (photo.getOrientationId() != 2) {
                        photos.remove(photo);
                    }   
                }
            }else if (orientation.equalsIgnoreCase("Vertical")) {
                for (Photograph photo : photos) {
                    
                    if (photo.getOrientationId() != 3) {
                        photos.remove(photo);
                    }   
                }
            }else if (orientation.equalsIgnoreCase("Square")) {
                for (Photograph photo : photos) {
                    
                    if (photo.getOrientationId() != 4) {
                        photos.remove(photo);
                    }   
                }
            }else if (orientation.equalsIgnoreCase("Panoramic")) {
                for (Photograph photo : photos) {
                    
                    if (photo.getOrientationId() != 5) {
                        photos.remove(photo);
                    }   
                }
            }
            
        }
        
        // size sort
        if (minWidth != 0.0) {
            for (Photograph photo : photos) {
//                if (photo.get) {
//                    
//                }
            }
        }
        

    }
}
