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
import java.sql.*;

public class modelstu {

    private int RollNo;
    private String Name;
    private String Course;
    private double Marks;

    private String driver = "com.mysql.jdbc.Driver", dburl = "jdbc:mysql://localhost:3306/mca", user = "root", pswd = "";
    private Connection con = null;

    /**
     * @return the RollNo
     */
    public int getRollNo() {
        return RollNo;
    }

    /**
     * @param RollNo the RollNo to set
     */
    public void setRollNo(int RollNo) {
        this.RollNo = RollNo;
    }

    /**
     * @return the Name
     */
    public String getName() {
        return Name;
    }

    /**
     * @param Name the Name to set
     */
    public void setName(String Name) {
        this.Name = Name;
    }

    /**
     * @return the Course
     */
    public String getCourse() {
        return Course;
    }

    /**
     * @param Course the Course to set
     */
    public void setCourse(String Course) {
        this.Course = Course;
    }

    /**
     * @return the Marks
     */
    public double getMarks() {
        return Marks;
    }

    /**
     * @param Marks the Marks to set
     */
    public void setMarks(double Marks) {
        this.Marks = Marks;
    }

    public void openConnection() {
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(dburl, user, pswd);

            System.out.println("ConnectionSuccesful");

        } catch (Exception e) {
            System.out.println(e.toString());
        }
    }

    public void closeConnection() {
        try {

            if (con != null) {
                con.close();
            }

        } catch (Exception e) {
            System.out.println(e.toString());
        }
    }

    public String getStudentDetails() {
        String str = "";

        try {
            openConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from stu ");

            while (rs.next()) {
                setRollNo(rs.getInt("RollNo"));
                setName(rs.getString("Name"));
                setCourse(rs.getString("Course"));
                setMarks(rs.getDouble("Marks"));
                str += "<tr><td>" + getRollNo() + "</td><td>" + getName() + "</td><td>" + getCourse() + "</td><td>" + getMarks() + "</td></tr>";

            }

        } catch (Exception e) {
            str = e.toString();
        } finally {
            closeConnection();

        }
        return str;

    }

    public String addStudentResult() {
        String str = "";
        try {
            openConnection();
            Statement st = con.createStatement();
            String query = "insert into stu (Name,Course,Marks) values('" + Name + "','" + Course + "','" + Marks + "')";
            int rs = st.executeUpdate(query);
            str = rs + " Record's Update";
        } catch (Exception e) {
            System.out.println(e.toString());
        } finally {
            closeConnection();
        }
        return str;
    }

    public String updateStudentDetails() {
        String str = "";
        try {
            openConnection();
            Statement st = con.createStatement();
            String query = "update stu set Name='" + Name + "',Course='" + Course + "',Marks='" + Marks + "' where RollNo='" + RollNo + "';";
            int rs = st.executeUpdate(query);
            str = rs + " Record's Update";
        } catch (Exception e) {
            System.out.println(e.toString());
        } finally {
            closeConnection();
        }
        return str;
    }

    public String updateStudentMarks() {
        String str = "";
        try {
            openConnection();
            Statement st = con.createStatement();
            String query = "update stu set Marks='" + Marks + "';";
            int rs = st.executeUpdate(query);
            str = rs + " Record's Update";
        } catch (Exception e) {
            System.out.println(e.toString());
        } finally {
            closeConnection();
        }
        return str;
    }

    public String updateform() {
        String str = "";
        try {
            openConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from stu;");

            str = "<select name='RollNo'><option>Select a record</option>";
            while (rs.next()) {
                RollNo = rs.getInt("RollNo");
                Name = rs.getString("Name");

                str += "<option value='" + RollNo + "'>" + Name + "</option>";
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        } finally {
            closeConnection();
        }
        return str;
    }

    public String deleteStudentDetails() {
        String str = "";
        try {
            openConnection();
            Statement st = con.createStatement();
            int rs = st.executeUpdate("delete from stu where RollNo = '" + RollNo + "'");
            str = rs + "Record's deleted";

        } catch (Exception e) {
            System.out.println(e.toString());
        } finally {
            closeConnection();
        }
        return str;
    }

    public String getIndividualDetails() {
        String str = "";

        try {
            openConnection();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from stu where RollNo='" + RollNo + "';");

            while (rs.next()) {
                setRollNo(rs.getInt("RollNo"));
                setName(rs.getString("Name"));
                setCourse(rs.getString("Course"));
                setMarks(rs.getDouble("Marks"));
                str += "<tr><td>" + getRollNo() + "</td><td>" + getName() + "</td><td>" + getCourse() + "</td><td>" + getMarks() + "</td></tr>";

            }

        } catch (Exception e) {
            str = e.toString();
        } finally {
            closeConnection();

        }
        return str;

    }

    public String getStuDetailsByRollNo() {
        String str = "";

        try {
            openConnection();

            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from stu where RollNo=" + RollNo + ";");

            if (rs.next()) {
                String name = rs.getString("Name");
                String course = rs.getString("Course");
                double marks = rs.getDouble("Marks");
                setName(name);
                setCourse(course);
                setMarks(marks);

            }

        } catch (Exception e) {
            str = e.toString();
        } finally {
            closeConnection();

        }
        return str;
    }

}
