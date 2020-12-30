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
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class PhotographSearch extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String keyword = request.getParameter("keyword");
        PhotographDao pd = new PhotographDaoImpl();
        
        LinkedList<Photograph> photographByKeyWord = (LinkedList<Photograph>) pd.getPhotographByKeyWord(keyword);
        
        if (photographByKeyWord == null) {
            photographByKeyWord = new LinkedList<>();
        }
        
        request.getSession().setAttribute("searchedPics", photographByKeyWord);
        
        request.setAttribute("photos", photographByKeyWord);
        request.getRequestDispatcher("View/User/AdvancedSearchPhotographTemplate.jsp").forward(request, response);
    }


}
