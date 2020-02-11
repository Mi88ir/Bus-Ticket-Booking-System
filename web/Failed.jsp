<%-- 
    Document   : Failed
    Created on : Nov 26, 2017, 7:53:18 PM
    Author     : Sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/index.css">
        <style type="text/css">
          
            body{
                margin:0;
                background-image: url(images/17.jpg);
                background-size:cover;
                background-repeat: no-repeat;
            }
        </style>
        
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
        </style> 
        <div class="Box">
            <h1>Oops no seats available at present...</h1>
            
            <img class="logo" align="center" src="images/sad.jpg">
            <a href="dashboard.jsp">Try once again here...</a>
        </div>
        <style>
            .Box
{
    position: fixed;
    top: 10%;
    left: 20%;
    width: 800px;
    padding: 200px;
    background: rgba(0,0,0,.9);
    box-sizing: border-box;
    box-shadow:   0 15px 25px rgba(0,0,0,.9);
    border-radius: 0px;
}
                .Box h1 {
                        
 			margin-left: -15%;
 			margin-top: -26%;
 			font-weight: 300;
 			font-size: 30px;
 			font-style: bold;
 			color: orange;
                        border-radius:10px;

 		}
                .Box a{
                    text-align: center;
                    color: #3FC2F9;
                    display: block;
                    text-decoration: none;
                    font-size: 17px;
                }
                .Box img  {
 			float:center;
 			margin-left: 40px;
 			margin-top: 10px;
 			filter: invert(100%);
 		}
        </style>
        
    </body>
</html>
