/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Clent;

import Controller.DaoImpl.PhotographerDaoImp;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class PhotographerSearch extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String keyword = request.getParameter("keyword");
            String category = request.getParameter("photographerCategory");
            String city = request.getParameter("photographerCity");
            String province = request.getParameter("photographerProvince");
            System.out.println(category + " 5555555555");
            String gender = request.getParameter("gender");

            //keyword Search
            PhotographerDao pd = new PhotographerDaoImp();

            ArrayList<Photographer> photographersByName = (ArrayList<Photographer>) pd.getPhotographByName(keyword);

            if (photographersByName == null) {
                photographersByName = new ArrayList<>();
            }

            List<Photographer> photographerContainer = photographersByName;

            LinkedList<Photographer> photographers = new LinkedList<>();

            for (Photographer e : photographerContainer) {
                photographers.add(e);
            }

            HashSet<Photographer> removingPhotographers = new HashSet<>();

            //category filter
            HashMap<Integer, String> photogrpaherCategories = pd.getPhotogrpaherCategories();

            if (!category.equals("")) {
                int categoryID = -1;
                System.out.println("cat awaaaaaaaa");

                d:
                for (Map.Entry<Integer, String> photogrpaherCategory : photogrpaherCategories.entrySet()) {
                    System.out.println(photogrpaherCategory.getValue() + " vallllllllll");
                    if (photogrpaherCategory.getValue().equalsIgnoreCase(category)) {
                        categoryID = photogrpaherCategory.getKey();
                        System.out.println(categoryID + "  IDddddddddddd");
                        break d;
                    }
                }

                if (categoryID != -1) {
                    ArrayList<String> photographerIDByCategory = (ArrayList<String>) pd.getPhotographerIDByCategory(categoryID);
                    System.out.println(photographerIDByCategory + " idbycat");

                    for (Photographer photographer : photographers) {
                        boolean notwanted = true;

                        for (String string : photographerIDByCategory) {
                            if (photographer.getPhotographerId().equals(string)) {
                                notwanted = false;
                                break;
                            }

                        }
                        if (notwanted) {
                            removingPhotographers.add(photographer);

                        }

                    }

                }

            }

            for (Photographer photographer : photographers) {

                //city filter
                if (!city.equals("")) {
                    if (!photographer.getCity().equalsIgnoreCase(city)) {
                        removingPhotographers.add(photographer);
                    }
                }

                // province filter
                if (!province.equals("")) {
                    if (!photographer.getProvince().equalsIgnoreCase(province)) {
                        removingPhotographers.add(photographer);
                    }
                }

                //gender filter
                if (!gender.equals("")) {
                    if (gender.equals("Male")) {
                        if (photographer.getGenderId() != 1) {
                            removingPhotographers.add(photographer);
                        }
                    } else if (gender.equals("Female")) {
                        if (photographer.getGenderId() != 2) {
                            removingPhotographers.add(photographer);
                        }
                    }
                }

            }

            photographers.removeAll(removingPhotographers);
            ArrayList<Photographer> sortedPhotographers = new ArrayList(photographers);
            request.getSession().setAttribute("searchedPhotographers", sortedPhotographers);
            request.getRequestDispatcher("View/User/PhotographerSearchTemplate.jsp").forward(request, response);

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

}
