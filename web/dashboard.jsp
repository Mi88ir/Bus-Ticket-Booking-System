
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/index.css">
        <title>Hi, <% out.print(session.getAttribute("username")); %></title>
    </head>
    <font color="white">

        <style type="text/css">
          
            body{
                margin: 0;
                 padding: 0;
                background-image: url(images/dash.jpg);
                background-size: cover;
                background-attachment: fixed;
                font-weight: 300;
                background-repeat: no-repeat;
            }

        </style>
        <div class="topnav" id="myTopnav">
            <img class="logo"src="images/bus.png">
            <a href="index.jsp">Vroom</a>
            <a href="contacts.jsp">Contact Us</a>
            <a href="about.jsp">About Us</a>
</div>
        
        <style>
             .topnav {
    position:relative;
    background-color: rgba(0,0,0,0.7);
    overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav img{
    margin:auto;
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
    background-color: #ddd;
    color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
    background-color: #4CAF50;
    color: white;
}
        </style>
    
    <body>
      <div class="box">
        <div style="display:block; margin-left:5%; margin-top: 2%">

            <select id="partSelection" name="state" required="">
                <option value="" placeholder="Select state">Select state</option>
                <option value="southindia">Karnataka</option>

                <input type="button" value="Select" onclick="func()" required="">
            </select>
          </div>
          <style>
          body{
            margin: 0;
            width: 768;
          }
            .box {
              position: absolute;
              top: 20%;
              left: 20%;
              transform: translate(-0%,-0%);
              width: 900px;
              padding: 50px;
              background: rgba(5, 24, 46  ,.9);
              box-sizing: border-box;
              box-shadow: 0 15px 25px rgba(0,0,0,.5);
              border-radius: 5px;
            }
            select{
              -webkit-appearance: none;
              -moz-appearance: none;

              display: run-in;
              border: none;
              outline: none;
              margin: 5px 0px;
              font-family: Lucida Grande;
              color: gray ;
              background-color: black;
              padding: 5px 40px 5px 5px;
              border-radius: 5px;

            }

             input[ type="button"]
            {
                position: relative;
                background: transparent;
                left: 35px;
                border: none;
                outline: none;
                color: #fff;
                background: #F37741  ;
                padding: 5px 10px;
                cursor: pointer;
                border-radius: 5px;
            }

          </style>

        <div id="southsourceanddst" style="display:block; margin-left:5%; margin-top: 2%">
            <form method="post" action="Search">
            <table>
                <tr><td>Source</td><td></td><td>Destination</td><td>Date</td><td></td><td></td></tr>
                        <tr>
                            <td>
                                <select id="sourceSelection" name="sourceSelection" required="">
                                      <option value="">select</option>
                                      <option value="bangalore">Bangalore</option>
                                      <option value="mysore">Mysore</option>
                                      <option value="belgaum">Belgaum</option>
                                      <option value="hubli">Hubli</option>
                                      <option value="dharwad">Dharwad</option>

                                </select>
                            </td>
                            <td></td>

                            <td>
                                <select id="dstSelection" name="dstSelection" required="">
                                        <option value="">select</option>
                                        <option value="bangalore">Bangalore</option>
                                        <option value="mysore">Mysore</option>
                                        <option value="belgaum">Belgaum</option>
                                        <option value="hubli">Hubli</option>
                                        <option value="dharwad">Dharwad</option>

                                </select>
                            </td>
                            <td>
                                <input type="date" name="date" placeholder="Date" required="">
                                <style>
                            input[ type="date"]
                           {
                               position: relative;
                               -webkit-appearance: none;
                               -moz-appearance: none;
                               left: 5px;
                               border: none;
                               outline: none;
                               color: white;
                               background: Black  ;
                               padding: 5px 10px;
                               cursor: pointer;
                               border-radius: 5px;
                           }</style>
                            </td>

                            <td></td>
                            <td><input type="text" name="seatsrequired" placeholder="Seats Required" required="">
                            <style>
                            input[ type="text"]
                           {
                               position: relative;

                               left: 35px;
                               border: none;
                               outline: none;
                               color: white;
                               background: Black  ;
                               padding: 5px 10px;
                               cursor: pointer;
                               border-radius: 5px;
                           }</style></td>
                            <td></td>
                            <td><input type="submit" value="Search"><style>input[ type="submit"]
                           {
                               position: relative;
                               background: transparent;
                               left: 20px;
                               border: none;
                               outline: none;
                               color: #fff;
                               background: #F37741  ;
                               padding: 5px 10px;
                               cursor: pointer;
                               border-radius: 5px;
                           }</style></td>
                        </tr>
            </table>
            </form>
        </div>
      </div>
                
    </body>
</html>
