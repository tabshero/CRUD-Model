<%-- 
    Document   : updatestudetails2
    Created on : 21 May, 2021, 6:29:08 PM
    Author     : akhil
--%>

<%@page import="mypack.modelstu"%>
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
        <title>Student details updated</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <style>

            div{
                background-color: #90e0ef;
                border-radius: 5%;
                padding: 35px 45px;
                text-align: center;
                text-transform: uppercase;
                width: 35%;

                justify-content: center;
                margin: auto;

            }
        </style>
    </head>
    <body>
        <div>
            <%
                int RollNo = Integer.parseInt(request.getParameter("RollNo"));
                String Name = request.getParameter("Name");
                String Course = request.getParameter("Course");
                double Marks = Double.parseDouble(request.getParameter("Marks"));
                modelstu obj = new modelstu();
                obj.setRollNo(RollNo);
                obj.setName(Name);
                obj.setCourse(Course);
                obj.setMarks(Marks);
                out.println(obj.updateStudentDetails());
            %>
            <a href="home.jsp" class="btn btn-primary me-for">HOME PAGE</a>
        </div>
    </body>
</html>
