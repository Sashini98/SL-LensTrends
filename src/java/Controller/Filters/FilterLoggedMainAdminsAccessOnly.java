/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Filters;

import Model.Admin;
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
public class FilterLoggedMainAdminsAccessOnly implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;

        Admin a = (Admin) req.getSession().getAttribute("loggedAdmin");

        if (a != null) {
            if (a.getType().equalsIgnoreCase("Main")) {
                chain.doFilter(request, response);

            } else {
                // 404
                resp.sendRedirect("/GroupProject/View/Error404.jsp");
            }
        } else {
            // 404 

        }
    }

    @Override
    public void destroy() {

    }

}
