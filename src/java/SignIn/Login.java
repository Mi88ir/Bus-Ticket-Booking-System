package SignIn;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mihir
 */
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
                HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String username="";
                Statement stmt = null; //Query Executor 

                //STORING USERNAME AND USERPHONENUMBER IN VARIABLES HAPPENS HERE
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/brs", "root", "root");

            stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

            ResultSet rs = stmt.executeQuery("select * from registration where email='" + email + "'");
            while (rs.next()) {
                username = rs.getString(1);
                
            }
            rs.close();
        } catch (Exception e) {
            System.out.println(e);
        }

        //VALIDATING THE USER CREDENTIALS HAPPENS HERE
        if (LoginDao.validate(email, password)) {
            System.out.println("YES IT IS VALID");
            session.setAttribute("username", username);
            response.sendRedirect("dashboard.jsp");
        }
    
    }
    
}
