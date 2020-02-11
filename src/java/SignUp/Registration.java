
package SignUp;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Mihir and Sandeep
 */
public class Registration extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out=response.getWriter();
            String userid="";
            String username=request.getParameter("username");
            String email=request.getParameter("email");
            String DateOfBirth=request.getParameter("DateOfBirth");
            String Gender=request.getParameter("Gender");
            String password=request.getParameter("password");
            
            try{
                Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/brs","root","root");
            
            PreparedStatement ps = con.prepareStatement(
                    "insert into registration(username,email,DateOfBirth,Gender,password) values(?,?,?,?,?)");
            
            ps.setString(1, username);
            ps.setString(2, email);
            ps.setString(3, DateOfBirth);
            ps.setString(4, Gender);
            ps.setString(5, password);
           //ps.setString(4,userid);
            int i = ps.executeUpdate();
            ps.close();
            System.out.println("Registration Insert Complete!");

           PreparedStatement ps1 = con.prepareStatement(
                    "insert into login values(?,?)");
            ps1.setString(1, email);
            ps1.setString(2, password);
               ps1.executeUpdate();
               
            }catch(Exception e){
                System.out.println("Error in Registration:"+e.getMessage());
            }
           response.sendRedirect("index.jsp");
    }
        
}
