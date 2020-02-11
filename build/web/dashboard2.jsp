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
       <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <style type="text/css">

            body{
                margin: 0;
                padding: 0;
                background-image: url(images/14.jpg);
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
    position: relative;
    top: 0%;
    background-color: rgba(0,0,0,0.7);
    overflow: hidden;
    display: block;
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
    <script>

        function func(){
            var part=document.getElementById("partSelection").value;

          //  if(part=="southindia"){
        document.getElementById("southsourceanddst").style.display="block";
            //}
         }

        <%  String nobc=session.getAttribute("noOfBusAvailable").toString(); int NoOfBusc=Integer.parseInt(nobc); %>
        var busAvail=<% out.print(NoOfBusc); %>    
        
        if(busAvail==0){
            //alert("No buses available for Now! Please try again later!")
            window.location.href="Failed.jsp"
        }
//            var seatRequested="";
//            var Cost_per_Seat="";
//            var total="";
        bookticket();
        function bookticket(id){
              var busservicename=document.getElementById("busservicename"+id).innerHTML;
               var busnumber=document.getElementById("busnumber"+id).innerHTML;
               var departuretime=document.getElementById("departuretime"+id).innerHTML;
               var arrivaltime=document.getElementById("arrivaltime"+id).innerHTML;
               var seatsavailable=document.getElementById("seatsavailable"+id).innerHTML;
             var acornonac=document.getElementById("acornonac"+id).innerHTML;
                var Cost_per_Seat=document.getElementById("Cost_per_Seat"+id).innerHTML;
            
           var seatRequested="<% out.print(session.getAttribute("sr")); %>";
          // System.out.println(seatRequested);
           var Cost_per_Seat="<% out.print(session.getAttribute("Cost_per_Seat"));%>";
            var total=parseInt(seatRequested)*Cost_per_Seat;
            //var PricePerTicket=100;

    //var matches = departuretime.match(/[a-zA-Z]+/g);


           document.getElementById("bsn").innerHTML=busservicename;
            document.getElementById("bn").innerHTML=busnumber;
          document.getElementById("dt").innerHTML=departuretime;
            document.getElementById("ea").innerHTML=arrivaltime;
            document.getElementById("sreq").innerHTML=seatRequested;
            document.getElementById("sa").innerHTML=seatsavailable;
            document.getElementById("acnac").innerHTML=acornonac;

         //     if(acornonac=="AC")PricePerTicket=PricePerTicket+25;
          //if(matches[0]=="AM")PricePerTicket=PricePerTicket+100;

//            document.getElementById("total").innerHTML=total;

}

        function pay(){
            window.location.href="portal.jsp"
        }
        </script>
    <body>
      
        <div class="inputBox">
        <div id="busChart" style="display:block;">

     <% String nob=session.getAttribute("noOfBusAvailable").toString(); int NoOfBus=Integer.parseInt(nob); %>
            <table>
                <tr><th>Bus Service Name</th>
                  <th>Bus Number</th>
                  <th>Departure Time</th>
                  <th>Expected Arrival</th>
                  <th>Seats Available</th>
                  <th>AC OR NON-AC</th>
                  <th>Cost_per_Seat</th></tr>
                <% for(int i=0;i<NoOfBus;i++)out.print(session.getAttribute("busservicename"+i)); %><% for(int i=0;i<NoOfBus;i++)out.print(session.getAttribute("busnumber"+i)); %><% for(int i=0;i<NoOfBus;i++)out.print(session.getAttribute("departuretime"+i)); %><% for(int i=0;i<NoOfBus;i++)out.print(session.getAttribute("arrivaltime"+i)); %><% for(int i=0;i<NoOfBus;i++)out.print(session.getAttribute("seatsavailable"+i)); %><% for(int i=0;i<NoOfBus;i++)out.print(session.getAttribute("acornonac"+i)); %><% for(int i=0;i<NoOfBus;i++)out.print(session.getAttribute("Cost_per_Seat"+i)); %><% for(int i=0;i<NoOfBus;i++)out.print(session.getAttribute("bookbtn"+i)); %>
            </table>

        </div>

            <div id="bookOnline" style="display:block;">
                <h3>Invoice</h3>
                <table>

                  <br>
                    <form action="Paid" method="post">
                    <tr>
                          <th>Bus Service Name</th>
                          <th>Bus Number</th>
                          <th>Departure Time</th>
                          <th>Expected Arrival</th>
                          <th>Seats Required</th>
                          <th>Seats Available</th>
                          <th>AC OR NON-AC</th>
                          <th>Total</th>

                        </tr>

                        <tr>
                          <td id="bsn"></td>
                          <td id="bn"></td>
                          <td id="dt"></td>
                          <td id="ea"></td>
                          <td id="sreq"></td>
                          <td id="sa"></td>
                          <td id="acnac"></td>
                          <td id="total"></td>

                        </table>
                        <tr><td></td><td></td></tr>
                            <input type="text" required="" placeholder="Card Number">
                            <style>
                            .inputBox input[ type="text"]
                           {
                               position: absolute;
                               top: 20px;
                               border: none;
                               outline: none;
                               color: white;
                               background: Black;
                               padding: 5px 10px;
                               cursor: pointer;
                               border-radius: 5px;
                           }</style>
                          </td>
                          <td>


                            <tr><td></td><td></td></tr>
                            <input type="text" required="" placeholder="CVV">
                            <style>
                            .inputBox input[ type="text"]
                           {
                               position: relative;
                               top: 40px;
                               left: 20px;
                               border: none;
                               outline: none;
                               color: white;
                               background: Black  ;
                               padding: 5px 10px;
                               cursor: pointer;
                               border-radius: 5px;
                           }</style>
                         </tr>
                          </td>
                          <td>
                            <input type="submit" value="Pay">
                            <style>
                            .inputBox input[ type="submit"]
                           {
                              top: 40px;
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
                           }</style>
                          </td>
                    </tr>
                  </form>

            </div>
          </div>
          <style>
            .inputBox {
              margin: auto;
              padding: 10px;
              position: absolute;
              top: 20%;
              left: 10%;
              width: 1200px;
              padding: 100px;
              background: rgba(5, 24, 46  ,.9);
              box-sizing: border-box;
              box-shadow: 0 15px 25px rgba(0,0,0,.5);
              border-radius: 5px;
            }
            .inputBox table{

            }
            .inputBox table th{
              color: gray;
              text-align: center;
              background-color: black;
              padding: 4px 30px 4px 8px;
            }
            .inputBox table td{
              border: 1px solid black;
              padding: 4px 8px;
            }
            .inputBox h3{
              margin: 0 0 30px;
              padding: 20px;
              color: #fff;
              text-align: left;
            }
          </style>
    </body>
</html>
