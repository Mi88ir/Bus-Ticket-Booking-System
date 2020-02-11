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
                background-image: url(images/11.jpg);
                background-size:cover;
                background-repeat: no-repeat;
            }
    #login{
    
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    }
    
 
        </style>
    <title>Vroom Bus Service </title>
    </head>
    <script>
        window.onload=function home()
        {
            document.getElementById("login").click();
        }
        function func(id){

        if(id=="login"){
            document.getElementById("loginform").style.display="block";
            document.getElementById(id).style.display="none";
            
        }
        }
    </script>
    
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
        
        <div style="display: block;margin-left: 45%;margin-top: 25%;">
            <!--<table><tr><td><input type="button" value="Login" id="login" onclick="func(this.id)"></td></tr></table>-->
            <br>
           <div id="loginform" style="display: block;">
              <div class="box" >
           <h2>Login</h2>
             <form  method="post" action="Login">
        <div class="inputBox">
            <input type="text" name="email" required="">
            <label>Email</label>
        </div>

    
        <div class="inputBox">
            <input type="Password" name="password" required="">
            <label>Password</label>
        </div>
                 <input type="submit" value="Login"><br></br>
                 <a href="Registration.jsp">New User? Register Here</a>
             </form>
              </div>
           </div>
        </div>
           <style>
.box
{
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 400px;
    padding: 40px;
    background: rgba(0,0,0,.6);
    box-sizing: border-box;
    box-shadow:   0 15px 25px rgba(0,0,0,.9);
    border-radius: 0px;
}
.box h2
{
    margin: 0 0 30px;
    padding: 0;
    color: #3FC2F9;
    text-align: center;

}
.box .inputBox
{
    position: relative;
    
}

.box .inputBox input
{
    width: 100%;
    padding: 10px 0;
    font-size: 16px;
    color: #fff;
    margin-bottom: 30px;
    border: none;
    border-bottom:  1px solid #fff;
    outline: none;
    background: transparent;
    
}
.box .inputBox label
{
    position: absolute;
    top: 0;
    left: 0;
    padding: 10px 0;
    font-size: 16px;
    color: #fff;
    pointer-events: none;
    transition: .5s;

}
.box .inputBox input:focus ~ label,
.box .inputBox input:valid ~ label
{
    top: -30px;
    left: 0px;
    color: #03a9f4;
    font-size: 1;
}
.box input[ type="submit"]
{
    background: transparent;
    border: none;
    outline: none;
    color: #fff;
    margin-left: 35%;
    background: #03a9f4;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 5px;
}
.box a{
    text-align: center;
    color: orange;
    margin-left: 20%;
    text-decoration: none;
    font-size: 17px;
}
    </style>
            
        </div>
        </div>
        
                
    </body>
</html>
