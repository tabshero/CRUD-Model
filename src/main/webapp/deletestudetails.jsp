<%-- 
    Document   : deletestudetails
    Created on : 21 May, 2021, 7:20:11 PM
    Author     : akhil
--%>

<%@page import="mypack.modelstu"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
            if(session.getAttribute("uname")==null)
            
            {
                response.sendRedirect("index.html");
            }
            %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
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
        <form action="deletestudetails1.jsp" method="post">
        <%
            modelstu obj = new modelstu();
            out.println(obj.updateform());
        %>
           <input class="btn btn-primary" type="submit" value="Submit">
            
            
            </form>
         </div>
    </body>
</html>
