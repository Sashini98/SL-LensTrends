/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Filters;

import Model.Admin;
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
public class FilterLoggedClient implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        Client c = (Client) req.getSession().getAttribute("loggedClient");
        Photographer p = (Photographer) req.getSession().getAttribute("loggedPhotographer");
        Admin a = (Admin) req.getSession().getAttribute("loggedAdmin");
        
        if (c != null) {
            chain.doFilter(request, response);
        } else if (p != null) {
            // 404
            resp.sendRedirect("/GroupProject/View/PhotographerHome.jsp");
        }else if (a != null) {
            //404
         
        }else{
             resp.sendRedirect("/GroupProject/View/login.jsp?action=User&loc=cu");
        
        }

    }

    @Override
    public void destroy() {

    }

}
