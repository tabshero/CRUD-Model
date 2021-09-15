<%-- 
    Document   : logout
    Created on : 22 May, 2021, 1:40:03 PM
    Author     : akhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
       <%
         session.removeAttribute("uname");
        session.removeAttribute("uname1");
      
         response.sendRedirect("index.html");
       %>

    </body>
</html>
