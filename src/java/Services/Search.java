
package Services;

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

public class Search extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            HttpSession session=request.getSession();
              PrintWriter out=response.getWriter();
              String source=request.getParameter("sourceSelection");
              String destination=request.getParameter("dstSelection");
              String sr=request.getParameter("seatsrequired");
              int seatsrequired=Integer.parseInt(sr);
              System.out.println("data from srice:"+sr);
                Statement stmt = null;
                int seatsAvail[] = new int[5];
                int i=0;
               try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/brs", "root", "root");

            stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

            ResultSet rs = stmt.executeQuery("select * from busservice where source='" + source + "' and destination='"+destination+"'");
            while (rs.next()) {
                seatsAvail[i]=Integer.parseInt(rs.getString(7));
                
                if(seatsAvail[i]>=seatsrequired && seatsrequired!=0){
                session.setAttribute("sr", seatsrequired);
                session.setAttribute("busservicename"+i,"<tr><td id='busservicename"+i+"'>"+rs.getString(3)+"</td>");
                session.setAttribute("busnumberforpay", rs.getString(4));
                session.setAttribute("busnumber"+i,"<td id='busnumber"+i+"'>"+ rs.getString(4)+"</td>");
                session.setAttribute("departuretime"+i, "<td id='departuretime"+i+"'>"+rs.getString(5)+"</td>");
                session.setAttribute("arrivaltime"+i, "<td id='arrivaltime"+i+"'>"+rs.getString(6)+"</td>");
                session.setAttribute("seatsavailable"+i,"<td id='seatsavailable"+i+"'>"+ rs.getString(7)+"</td>");
                session.setAttribute("acornonac"+i,"<td id='acornonac"+i+"'>"+ rs.getString(8)+"</td>");
                session.setAttribute("Cost_per_Seat"+i,"<td id='Cost_per_Seat"+i+"'>"+ rs.getString(9)+"</td>");
                session.setAttribute("bookbtn"+i, "<td><input type=\"submit\" value=\"Book Ticket\" id="+i+" onclick=\"bookticket(this.id)\"></td> </tr>");
                i++;
                session.setAttribute("noOfBusAvailable", i);
                }
                else{
                session.setAttribute("noOfBusAvailable", "0");
                
                }
            }
            rs.close();
        } catch (Exception e) {
            System.out.println(e);
        }
               
               response.sendRedirect("dashboard2.jsp");
    }
}
