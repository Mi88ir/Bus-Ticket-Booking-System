
package Services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Fury
 */
public class Paid extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        Statement stmt = null;
        String sr = session.getAttribute("sr").toString();
        String busnumber = session.getAttribute("busnumberforpay").toString();
        
        int pv = 30;
        String sql;
        try{
            sql = "select * from busservice;";
            ResultSet set = stmt.executeQuery(sql);
            while(set.next()){
                if(busnumber.contains(set.getString("busnumber").toString())){
                    pv = Integer.parseInt(set.getString("seats_available").toString());
                    break;
                }
            }
        }
        catch(Exception e1){}
        
        int SeatReq = Integer.parseInt(sr);
        int seatUpdate = pv - SeatReq;
        System.out.println(seatUpdate);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/brs", "root", "root");
            stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

            sql = "UPDATE busservice SET seats_available = " + seatUpdate + " WHERE busnumber = \"" + busnumber + "\";";
            stmt.executeUpdate(sql);
            System.out.println("Bus number:" + busnumber);
            System.out.println("Updated");
            response.sendRedirect("Bill.jsp");
        } catch (Exception e) {
            System.out.println(e);
        }
    }

}
