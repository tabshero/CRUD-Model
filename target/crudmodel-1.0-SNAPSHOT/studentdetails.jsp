<%-- 
    Document   : studentdetails
    Created on : 20 May, 2021, 5:27:27 PM
    Author     : akhil
--%>

<%@page import="mypack.modelstu"%>
<%@page import="java.io.*" %>

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
        <title>Student details</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    </head>
    <body>
        <table class="table table-dark table-striped">
            <tr><th>RollNo</th><th>Name</th><th>Course</th><th>Marks</th></tr>

            <%
                modelstu obj = new modelstu();
                out.println(obj.getStudentDetails());

            %>
        </table>
        <a href="home.jsp" class="btn btn-primary">HOME PAGE</a>
    </body>
</html>
