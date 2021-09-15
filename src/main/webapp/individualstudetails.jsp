<%-- 
    Document   : individualstudetails
    Created on : 22 May, 2021, 11:41:11 AM
    Author     : akhil
--%>

<%@page import="mypack.modelstu"%>
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
        <title>Student Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    </head>
    <body>
        <table class="table table-dark table-striped">
            <tr><th>RollNo</th><th>Name</th><th>Course</th><th>Marks</th></tr>
                    <%
                        int RollNo = Integer.parseInt(request.getParameter("RollNo"));
                        modelstu obj = new modelstu();
                        obj.setRollNo(RollNo);

                        out.print(obj.getIndividualDetails());

                    %>
        </table>
        <a href="homestu.jsp" class="btn btn-primary me-for">HOME PAGE</a>
    </body>
</html>
