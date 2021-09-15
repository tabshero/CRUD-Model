<%-- 
    Document   : updatestudetails1
    Created on : 21 May, 2021, 6:16:35 PM
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
        <title>update details</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <style>
            input[type="text"]
            {
                border: 3px solid #e1f1ff;
                border-radius: 10px;
                margin-bottom: 15px; 
            }
            div
            {
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
        <%
            int RollNo = Integer.parseInt(request.getParameter("RollNo"));
            modelstu obj = new modelstu();
            obj.setRollNo(RollNo);

            obj.getStuDetailsByRollNo();

        %><div>
            <form action="updatestudetails2.jsp" method="post">

                <input type='hidden' name='RollNo' value=<% out.println(obj.getRollNo()); %>><br>
                <input type='text' name='Name' value='<% out.println(obj.getName()); %>' placeholder="Name"><br>
                <input type='text'name='Course' value='<% out.println(obj.getCourse()); %>' placeholder="Course"><br>
                <input type='text'name='Marks' value='<% out.println(obj.getMarks());%>' placeholder="Marks"><br>
                <input class="btn btn-primary" type="submit" value="Submit">
            </form>
        </div>
    </body>
</html>
