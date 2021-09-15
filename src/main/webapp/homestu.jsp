<%-- 
    Document   : homestu
    Created on : 22 May, 2021, 2:10:55 PM
    Author     : akhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("uname1") == null) {
        response.sendRedirect("index.html");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

        <link rel="stylesheet" href="home.css">
    </head>
    <body>
        <h1 class="display-2">STUDENT HOME PAGE</h1>
        <div class = "home">
            <a href="studentform.jsp">Result</a>
            <a id="logout" href="logout.jsp">Logout</a>
        </div> 
    </body>
</html>
