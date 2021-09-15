/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

/**
 *
 * @author akhil
 */
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.sql.*;
import javax.servlet.http.HttpSession.*;

@WebServlet(urlPatterns = {"/authentication"})
public class authentication extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");

        PrintWriter out = res.getWriter();

        String uname = req.getParameter("username");
        String pass = req.getParameter("password");
        String driver = "com.mysql.jdbc.Driver", dburl = "jdbc:mysql://localhost:3306/mca", user = "root", pswd = "";
        Connection con = null;
        boolean userfound = false;
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(dburl, user, pswd);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from auth where username= '" + uname + "' and password= '" + pass + "'; ");

            if (rs.next()) {
                userfound = true;
                HttpSession session = req.getSession();
                session.setAttribute("uname",uname);
                res.sendRedirect("home.jsp");

            }
            con.close();

        } catch (Exception e) {
            out.println(e.toString());
        }

        if (userfound == false) {
            out.println("<h3 style='color:red'>*Invalid User*</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/teacherlogin.html");
            rd.include(req, res);
        }

    }

}
