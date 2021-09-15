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

@WebServlet(urlPatterns = {"/authentication1"})
public class authentication1 extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html");

        PrintWriter out = res.getWriter();

        String uname1 = req.getParameter("username");
        String pass1 = req.getParameter("password");
        String driver = "com.mysql.jdbc.Driver", dburl = "jdbc:mysql://localhost:3306/mca", user = "root", pswd = "";
        Connection con = null;
        boolean userfound = false;
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(dburl, user, pswd);
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from auth1 where username= '" + uname1 + "' and password= '" + pass1 + "'; ");

            if (rs.next()) {
                userfound = true;
                HttpSession session = req.getSession();
                session.setAttribute("uname1", uname1);
                res.sendRedirect("homestu.jsp");

            }
            con.close();

        } catch (Exception e) {
            out.println(e.toString());
        }

        if (userfound == false) {
            out.println("<h3 style='color:red'>*Invalid User*</h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/studentlogin.html");
            rd.include(req, res);
        }

    }

}
