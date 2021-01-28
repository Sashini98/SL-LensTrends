<%-- 
    Document   : PhotographerSearchTemplate
    Created on : Jan 28, 2021, 2:07:56 AM
    Author     : kesh
--%>

<%@page import="Controller.DaoImpl.PhotographerDaoImp"%>
<%@page import="Model.Dao.PhotographerDao"%>
<%@page import="Controller.DaoImpl.PhotographDaoImpl"%>
<%@page import="Model.Dao.PhotographDao"%>
<%@page import="Model.Photographer"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%

    ArrayList<Photographer> photographers = (ArrayList<Photographer>) session.getAttribute("searchedPhotographers");
    System.out.println(photographers.size() + " size");
    PhotographerDao pd = new PhotographerDaoImp();
    if (photographers.size() > 0) {

%>

<div class="column">
    <%        for (int i = 0; i < photographers.size(); i += 4) {
    %>
    <a href="../Photographer/UserViewPhotographerProfile.jsp?<%= photographers.get(i).getPhotographerId()%>" style="text-decoration: none;">
        <div class="profilebox">
            <div style="background-color: #00478a; padding-bottom: 2%; padding-top: 1%;">

                <div class="user-image">
                    <img src="../../Resources/Img/athavan.jpg">
                </div>

                <div class="username">
                    <% if (photographers.get(i).getGenderId() == 1) {%>
                    <p>Mr.<%= photographers.get(i).getFname() + " " + photographers.get(i).getLname()%></p>
                    <%} else {%>
                    <p>Ms.<%= photographers.get(i).getFname() + " " + photographers.get(i).getLname()%></p>

                    <%}%>
                </div>
                <div class="location">
                    <p><%= photographers.get(i).getProvince()%>,Srilanka</p>
                    <% if (!photographers.get(i).getWebsite().equals(null)) {%>
                    <p><%= photographers.get(i).getWebsite()%></p>
                    <% } %>
                </div>

            </div>
            <div class="bio"> 
                <div>
                    <%
                        ArrayList<String> categories = pd.getPhotographerCategories(photographers.get(i).getPhotographerId());
                        for (String category : categories) {
                               %>
                               <p><%=  category %></p>                    
                    <% 
                            }
                    %>

                </div>
            </div> 
        </div>
    </a>
    <%        }
    %>
</div> 


<div class="column">
    <%        for (int i = 1; i < photographers.size(); i += 4) {
    %>
    <a href="../Photographer/UserViewPhotographerProfile.jsp?<%= photographers.get(i).getPhotographerId()%>" style="text-decoration: none;">
        <div class="profilebox">
            <div style="background-color: #00478a; padding-bottom: 2%; padding-top: 1%;">

                <div class="user-image">
                    <img src="../../Resources/Img/athavan.jpg">
                </div>

                <div class="username">
                    <% if (photographers.get(i).getGenderId() == 1) {%>
                    <p>Mr.<%= photographers.get(i).getFname() + " " + photographers.get(i).getLname()%></p>
                    <%} else {%>
                    <p>Ms.<%= photographers.get(i).getFname() + " " + photographers.get(i).getLname()%></p>

                    <%}%>
                </div>
                <div class="location">
                    <p><%= photographers.get(i).getProvince()%>,Srilanka</p>
                    <% if (!photographers.get(i).getWebsite().equals(null)) {%>
                    <p><%= photographers.get(i).getWebsite()%></p>
                    <% } %>
                </div>

            </div>
            <div class="bio"> 
                <div>
                    <%
                        ArrayList<String> categories = pd.getPhotographerCategories(photographers.get(i).getPhotographerId());
                        for (String category : categories) {
                               %>
                               <p><%=  category %></p>                    
                    <% 
                            }
                    %>

                </div>
            </div> 
        </div>
    </a>
    <%        }
    %>
</div> 


<div class="column">
    <%        for (int i = 2; i < photographers.size(); i += 4) {
    %>
    <a href="../Photographer/UserViewPhotographerProfile.jsp?<%= photographers.get(i).getPhotographerId()%>" style="text-decoration: none;">
        <div class="profilebox">
            <div style="background-color: #00478a; padding-bottom: 2%; padding-top: 1%;">

                <div class="user-image">
                    <img src="../../Resources/Img/athavan.jpg">
                </div>

                <div class="username">
                    <% if (photographers.get(i).getGenderId() == 1) {%>
                    <p>Mr.<%= photographers.get(i).getFname() + " " + photographers.get(i).getLname()%></p>
                    <%} else {%>
                    <p>Ms.<%= photographers.get(i).getFname() + " " + photographers.get(i).getLname()%></p>

                    <%}%>
                </div>
                <div class="location">
                    <p><%= photographers.get(i).getProvince()%>,Srilanka</p>
                    <% if (!photographers.get(i).getWebsite().equals(null)) {%>
                    <p><%= photographers.get(i).getWebsite()%></p>
                    <% } %>
                </div>

            </div>
            <div class="bio"> 
                <div>
                    <%
                        ArrayList<String> categories = pd.getPhotographerCategories(photographers.get(i).getPhotographerId());
                        for (String category : categories) {
                               %>
                               <p><%=  category %></p>                    
                    <% 
                            }
                    %>

                </div>
            </div> 
        </div>
    </a>
    <%        }
    %>
</div> 


<div class="column">
    <%        for (int i = 3; i < photographers.size(); i += 4) {
    %>
    <a href="../Photographer/UserViewPhotographerProfile.jsp?<%= photographers.get(i).getPhotographerId()%>" style="text-decoration: none;">
        <div class="profilebox">
            <div style="background-color: #00478a; padding-bottom: 2%; padding-top: 1%;">

                <div class="user-image">
                    <img src="../../Resources/Img/athavan.jpg">
                </div>

                <div class="username">
                    <% if (photographers.get(i).getGenderId() == 1) {%>
                    <p>Mr.<%= photographers.get(i).getFname() + " " + photographers.get(i).getLname()%></p>
                    <%} else {%>
                    <p>Ms.<%= photographers.get(i).getFname() + " " + photographers.get(i).getLname()%></p>

                    <%}%>
                </div>
                <div class="location">
                    <p><%= photographers.get(i).getProvince()%>,Srilanka</p>
                    <% if (!photographers.get(i).getWebsite().equals(null)) {%>
                    <p><%= photographers.get(i).getWebsite()%></p>
                    <% } %>
                </div>

            </div>
            <div class="bio"> 
                <div>
                    <%
                        ArrayList<String> categories = pd.getPhotographerCategories(photographers.get(i).getPhotographerId());
                        for (String category : categories) {
                               %>
                               <p><%=  category %></p>                    
                    <% 
                            }
                    %>

                </div>
            </div> 
        </div>
    </a>
    <%        }
    %>
</div> 

<%} else {
%>

<div style="text-align: center;"> 
    <p>NO RESULTS FOUND</p>
</div>

<%
    }
%>