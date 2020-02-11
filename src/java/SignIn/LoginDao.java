/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SignIn;
import java.sql.*;  
  
public class LoginDao {  
public static boolean validate(String email,String password){  
boolean status=false;  
try{  
 Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/brs","root","root");  
      
PreparedStatement ps=con.prepareStatement(  
"select * from login where email=? and password=?");  
ps.setString(1,email);  
ps.setString(2,password);  
      
ResultSet rs=ps.executeQuery();  
status=rs.next();  
          
}catch(Exception e){System.out.println(e);}  
return status;  
}  
}  