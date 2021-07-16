<%-- 
    Document   : contact
    Created on : May 18, 2021, 1:26:48 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style/contactstyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="header.jsp" %>
            <div class="content">
                <div class="container wrapper-content">
                    <div class="left contact-left">
                        <div class="left-heading"><h4>Contact</h4></div>
                        <h4>PHOTOGRAPHER</h4>
                        <br>
                       
                        <div class="left-content">
                            
                            <table class="contact-info">
                                
                                <tbody>
                                    
                                    <tr>
                                        <td>Address: </td>
                                        <td>${contact.address}</td>
                                    </tr>
                                    <tr>
                                        <td>City: </td>
                                        <td>${contact.city}</td>
                                    </tr>
                                    <tr>
                                        <td>Country: </td>
                                        <td>${contact.country}</td>
                                    </tr>
                                    <tr>
                                        <td class="tel">Tel: </td>
                                        <td class="tel">${contact.telephone}</td>
                                    </tr>
                                    <tr>
                                        <td>Email: </td>
                                        <td>${contact.email}</td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        <div class="map">
                            <img src="${contact.map}" alt=""/>
                        </div>
                       
                    </div>
                    <%@include file="right.jsp" %>
                </div>
            </div>
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
