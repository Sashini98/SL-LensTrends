/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.PhotographDaoImpl;
import Model.Dao.PhotographDao;
import Model.Photograph;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
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
  
        String keyword = request.getParameter("keyword");
        String sortBy = request.getParameter("sortBy");
        String orientation = request.getParameter("orientation");
        String sizeOfPixels = request.getParameter("sizePixel");

        double minWidth = 0.0;
        double maxWidth = 0.0;
        double minHeight = 0.0;
        double maxHeight = 0.0;

        if (!request.getParameter("minWidth").equals("")) {
            minWidth = Double.parseDouble(request.getParameter("minWidth"));
            if (sizeOfPixels.equals("MegaPixel")) {
                minWidth *= 1000;
            }
        }
        if (!request.getParameter("maxWidth").equals("")) {
            maxWidth = Double.parseDouble(request.getParameter("maxWidth"));
            if (sizeOfPixels.equals("MegaPixel")) {
                maxWidth *= 1000;
            }
        }
        if (!request.getParameter("minHeight").equals("")) {
            minHeight = Double.parseDouble(request.getParameter("minHeight"));
            if (sizeOfPixels.equals("MegaPixel")) {
                minHeight *= 1000;
            }
        }
        if (!request.getParameter("maxHeight").equals("")) {
            maxHeight = Double.parseDouble(request.getParameter("maxHeight"));
            if (sizeOfPixels.equals("MegaPixel")) {
                maxHeight *= 1000;
            }
        }

        String people = request.getParameter("people");
        String gender = request.getParameter("gender");

        boolean undiscovered = Boolean.parseBoolean(request.getParameter("undiscovered"));

        //simple keyword search
        PhotographDao pd = new PhotographDaoImpl();

        ArrayList<Photograph> photographByKeyWord = (ArrayList<Photograph>) pd.getPhotographByKeyWord(keyword);

        if (photographByKeyWord == null) {
            photographByKeyWord = new ArrayList<>();
        }

        List<Photograph> photosContainer = photographByKeyWord;

        LinkedList<Photograph> photos = new LinkedList<>();

        for (Photograph e : photosContainer) {
            photos.add(e);
        }

        Iterator<Photograph> photoIterator = photos.iterator();
        HashSet<Photograph> removingPhotos = new HashSet<>();

        while (photoIterator.hasNext()) {

            Photograph photo = photoIterator.next();
            boolean isNeeded = false;

            // orientation filter
            if (orientation.contains("AllOrientations")) {
                isNeeded = true;

            } else {
                if (orientation.contains("Horizontal")) {
                    if (photo.getOrientationId() == 2) {
                        isNeeded = true;
                    }

                }
                if (orientation.contains("Vertical")) {
                    if (photo.getOrientationId() == 3) {
                        isNeeded = true;
                    }

                }
                if (orientation.contains("Square")) {
                    if (photo.getOrientationId() == 4) {
                        isNeeded = true;
                    }

                }
                if (orientation.contains("Panoramic")) {
                    if (photo.getOrientationId() == 5) {
                        isNeeded = true;
                    }

                }

            }
            if (!isNeeded) {
                removingPhotos.add(photo);
            }

            // size filter
            if (minWidth != 0.0) {

                if (!(photo.getWidth() >= minWidth)) {
                    removingPhotos.add(photo);
                }

            }
            if (minHeight != 0.0) {

                if (!(photo.getHeight() >= minHeight)) {
                    removingPhotos.add(photo);
                }

            }
            if (maxWidth != 0.0) {

                if (!(photo.getWidth() <= maxWidth)) {
                    removingPhotos.add(photo);
                }

            }
            if (maxHeight != 0.0) {

                if (!(photo.getHeight() <= maxHeight)) {
                    removingPhotos.add(photo);
                }

            }

            // people filter
            if (people.equalsIgnoreCase("WithPeople")) {
                if (!photo.isPeople()) {
                    removingPhotos.add(photo);
                }
                if (!gender.equals("")) {
                    boolean picNeeded = false;
                    if (gender.contains("Both")) {
                        if (photo.getGenderId() == 3) {
                            picNeeded = true;
                        }
                    }
                    if (gender.contains("Male")) {
                        if (photo.getGenderId() == 1) {
                            picNeeded = true;
                        }
                    }
                    if (gender.contains("Female")) {
                        if (photo.getGenderId() == 2) {
                            picNeeded = true;
                        }
                    }
                    if (!picNeeded) {
                        removingPhotos.add(photo);
                    }
                }

            } else if (people.equalsIgnoreCase("WithoutPeople")) {
                if (photo.isPeople()) {
                    removingPhotos.add(photo);
                }
            }

            //undiscovered sort
            if (undiscovered) {

                if (!photo.isUndiscovered()) {
                    removingPhotos.add(photo);
                }

            }

        }

        photos.removeAll(removingPhotos);

        //content filter
        if (sortBy.equalsIgnoreCase("relevant")) {

            LinkedList<Photograph> contains = new LinkedList<>();
            LinkedList<Photograph> notContains = new LinkedList<>();

            if (keyword != null) {
                for (Photograph photo : photos) {

                    if (photo.getTitle().toLowerCase().trim().contains(keyword.toLowerCase().trim())) {
                        contains.add(photo);
                    } else {
                        notContains.add(photo);
                    }
                }
                photos.clear();
                photos.addAll(contains);
                photos.addAll(notContains);
            }

        } else {

            Collections.sort(photos, new Comparator<Photograph>() {
                @Override
                public int compare(Photograph o1, Photograph o2) {

                    return o2.getUploadedDate().compareTo(o1.getUploadedDate());
                }
            });

        }
        ArrayList<Photograph> sortedPhotos = new ArrayList(photos);
        request.getSession().setAttribute("searchedPics", sortedPhotos);
        request.getRequestDispatcher("View/User/AdvancedSearchPhotographTemplate.jsp").forward(request, response);

    }
}
