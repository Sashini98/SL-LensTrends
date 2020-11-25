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
public class FilterLoggedActor implements Filter{

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
         
        HttpServletRequest req = (HttpServletRequest) request;
         HttpServletResponse resp = (HttpServletResponse) response;

        Client loggedClient = (Client) req.getSession().getAttribute("loggedClient");
        Photographer loggedPhotographer = (Photographer) req.getSession().getAttribute("loggedPhotographer");
        Admin loggedAdmin = (Admin) req.getSession().getAttribute("loggedAdmin");
        
     
        
        if (loggedAdmin != null) {
            req.setAttribute("actor", "admin");
            chain.doFilter(request, response);
        }else if (loggedPhotographer != null) {
            req.setAttribute("actor", "photographer");
            chain.doFilter(request, response);
        }else if (loggedClient != null) {
            req.setAttribute("actor", "client");
            chain.doFilter(request, response);
        }else{
            resp.sendRedirect("/GroupProject/View/Error404.jsp");
        }
    }

    @Override
    public void destroy() {
        
    }
    
}
