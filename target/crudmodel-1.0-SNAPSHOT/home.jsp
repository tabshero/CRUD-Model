<%-- 
    Document   : home
    Created on : 22 May, 2021, 1:49:14 PM
    Author     : akhil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("uname") == null) {
        response.sendRedirect("index.html");

    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <link rel="stylesheet" href="home.css">
        <title>Home Page</title>
    </head>

    <body>
        <h1 class="display-2">CRUD MODEL OPERATOINS</h1>

        <div class="home">
            <a href="studentdetails.jsp">Fetch result</a>
            <a href="resultform.jsp">Insert result</a>
            <a href="updatestudetails.jsp">Update result </a>
            <a href="deletestudetails.jsp">Delete result</a>
            <a id="logout" href="logout.jsp">Logout</a>
        </div>
    </body>

</html>