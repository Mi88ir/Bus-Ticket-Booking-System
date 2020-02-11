<%-- 
    Document   : Bill
    Created on : Nov 25, 2017, 4:41:57 PM
    Author     : Sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
    <div class="topnav" id="myTopnav">
     <img class="logo"src="images/bus.png">
     <a href="index.jsp">Vroom</a>
    <a href="Contact.jsp">Contact Details</a>
    <a href="Registration.jsp"style="float: right">Sign Up!</a>
    <a href="about.jsp">About</a>
</div>
        
        <style>
           body{
                margin:0;
                background-image: url(images/18.jpg);
                background-size:cover;
                background-repeat: no-repeat;
            }
            
            .topnav {
    position:relative;
    margin:0;
    background-color: rgba(0,0,0,0.8);
    overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav img{
    margin-left: 5px;
    filter:invert(100%);
    float: left;
}
.topnav a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-size: 17px;
}

.topnav b {
    float: right;
    display: block;
    color: white;
    text-align: center;
}

/* Change the color of links on hover */
.topnav a:hover {
    background-color: #555555;
    color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
    background-color: #4CAF50;
    color: white;
}
table{
    width: 600px;
    margin: auto;
    text-align: center;
    background-color: rgba(0,0,0,0.8);
    table-layout:fixed;
    border-color: 1px white;
}
table, tr ,th, td{
    padding: 13px;
    color: white;
    
    border: 10px white;
    border-collapse: collapse;
    font-size: 18px;
    font-family: sans-serif;
    
    
}
        </style>   
        <<table>
            <tr>
                <th>
                    TICKET NO.
                </th>
                <td>
                    1
                </td>
            </tr>
            <tr>
                <th>
                    NAME
                </th>
                <td>
                    SANDEEP
                </td>
            </tr>
            <tr>
                <th>
                    SOURCE
                </th>
                <td>
                    BELGAUM 
                </td>
            </tr>
            <tr>
                <th>
                    DESTINATION
                </th>
                <td>
                    BANGALORE
                </td>
            </tr>
            <tr>
                <th>
                    BUS NUMBER
                </th>
                <td>
                    775
                </td>
            </tr>
            <tr>
                <th>
                    SEAT NUMBER
                </th>
                <td>
                    32
                </td>
            </tr>
            <tr>
                <th>
                    AMOUNT
                </th>
                <td>
                    665
                </td>
            </tr>

        </table>
    </body>
</html>
