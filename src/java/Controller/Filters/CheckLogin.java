/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Filters;

import Model.Client;
import Model.Photographer;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kesh
 */
public class CheckLogin implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        Client c = (Client) req.getSession().getAttribute("loggedClient");
        Photographer p = (Photographer) req.getSession().getAttribute("loggedPhotographer");

        if (c != null) {
            resp.sendRedirect("/GroupProject/View/Home.jsp");
        } else if (p != null) {
            resp.sendRedirect("/GroupProject/View/PhotographerHome.jsp");
        } else {

            String action = request.getParameter("action");
            String page = request.getParameter("loc");

            try {
                if (action.equals("User")) {
                    request.setAttribute("User", "Client");
                    req.getSession().setAttribute("PageLocation", page);
                    req.setAttribute("account", "selected");
                    chain.doFilter(request, response);
                } else {
                    request.setAttribute("User", "Photographer");
                    req.getSession().setAttribute("PageLocation", page);
                    req.setAttribute("account", "selected");
                    chain.doFilter(request, response);
                }

            } catch (Exception e) {
                // ask contrtibutor or client if its  same email and pw

                String attribute = (String) request.getAttribute("account");
                if (attribute != (null)) {
                    req.setAttribute("account", "true");

                } else {
                    req.setAttribute("account", "false");
                }

                chain.doFilter(request, response);
            }

        }
    }

    @Override
    public void destroy() {

    }

}
