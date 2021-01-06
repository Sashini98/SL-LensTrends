/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Model.Photograph;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
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

        for (Photograph photo : photos) {

            // orientation filter
            if (orientation.equalsIgnoreCase("Horizontal")) {

                if (photo.getOrientationId() != 2) {
                    photos.remove(photo);
                    continue;
                }

            } else if (orientation.equalsIgnoreCase("Vertical")) {

                if (photo.getOrientationId() != 3) {
                    photos.remove(photo);
                    continue;
                }

            } else if (orientation.equalsIgnoreCase("Square")) {

                if (photo.getOrientationId() != 4) {
                    photos.remove(photo);
                    continue;
                }

            } else if (orientation.equalsIgnoreCase("Panoramic")) {

                if (photo.getOrientationId() != 5) {
                    photos.remove(photo);
                    continue;
                }

            }

            // size filter
            if (minWidth != 0.0) {

                if (!(photo.getWidth() > minWidth)) {
                    photos.remove(photo);
                    continue;
                }

            }
            if (minHeight != 0.0) {

                if (!(photo.getHeight() > minHeight)) {
                    photos.remove(photo);
                    continue;
                }

            }
            if (maxWidth != 0.0) {

                if (!(photo.getWidth() < maxWidth)) {
                    photos.remove(photo);
                    continue;
                }

            }
            if (maxHeight != 0.0) {

                if (!(photo.getHeight() < maxHeight)) {
                    photos.remove(photo);
                    continue;
                }

            }

            // people filter
            if (people.equalsIgnoreCase("WithPeople")) {
                if (!photo.isPeople()) {
                    photos.remove(photo);
                    continue;
                }

                if (gender.equalsIgnoreCase("Both")) {
                    if (photo.getGenderId() != 3) {
                        photos.remove(photo);
                        continue;
                    }
                } else if (gender.equalsIgnoreCase("Male")) {
                    if (photo.getGenderId() != 1) {
                        photos.remove(photo);
                        continue;
                    }
                } else if (gender.equalsIgnoreCase("Female")) {
                    if (photo.getGenderId() != 2) {
                        photos.remove(photo);
                        continue;
                    }
                }
            } else if (people.equalsIgnoreCase("WithoutPeople")) {
                if (photo.isPeople()) {
                    photos.remove(photo);
                    continue;
                }
            }

            //undiscovered sort
            if (undiscovered) {

                if (!photo.isUndiscovered()) {
                    photos.remove(photo);
                    continue;
                }

            }
        }

        ArrayList<Photograph> sortedPhotos = new ArrayList(photos);
        request.setAttribute("photos", sortedPhotos);
        request.getRequestDispatcher("View/User/AdvancedSearchPhotographTemplate.jsp").forward(request, response);

    }
}
