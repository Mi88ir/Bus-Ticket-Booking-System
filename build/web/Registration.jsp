<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/index.css">
        <title>Sign Up</title>
        <style type="text/css">
             body{
                  margin: 0;
                padding: 0;
                background-image: url(images/7.jpg);
                background-size:cover;
                background-repeat: no-repeat;
            }
               #signup{
    background-color: green; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    }
        </style>
    </head>
    <script>
        window.onload=function home()
        {
            document.getElementById("signup").click();
        }
        function func(id) {
        if(id=="signup"){
                        document.getElementById("registrationform").style.display="block";

            document.getElementById(id).style.display="none";
            
        }
    }
    </script>
    <body>
        <div class="topnav" id="Navbar">
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
    padding:0px 0px;
    margin-top:0;
}

/* Style the links inside the navigation bar */
.topnav img{
    margin-left:5px;
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
       <div style="display: block;margin-left: 45%;margin-top: 25%;">
           

            <table><input type="button" value="Sign Up" id="signup" onclick="func(this.id)"></td></tr></table>
        <div id="registrationform" style="display: none;">
            <form method="post" action="Registration"><br></br>
                
           <div class="box" >
           <h2>Signup</h2>
        
           <form method="post" action="Registration">
        <div class="inputBox">
            <input type="text" name="username" required="">
            <label>Full Name</label>
        </div>
        
        <div class="inputBox">
            <input type="text" name="email" required="">
            <label>Email</label>
        </div>
        <div class="inputBox">
            <input type="text" name="DateOfBirth" required="" onfocus="(this.type='date')" onfocusout="(this.type='text')">
            <label>DateOfBirth</label>
        </div>
        <div class="inputBox">
            <select type="text" name="Gender" required="" onfocus="(this.type='text')" onfocusout="(this.type='text')">
                <option value="">Gender</option>
                <option value="male">Male</option>
                <option value="fmale">Female</option>
            </select>
            <style>.inputBox select{
                    -webkit-appearance: none;
                    -moz-appearance: none;

                    width: 100%;
                    padding: 10px 0;
                    font-size: 16px;
                    color: #fff;
                    margin-bottom: 30px;
                    border: none;
                    border-bottom:  1px solid #fff;
                    outline: none;
                    display: run-in;
                    background:rgba(0,0,0,0.8);
                }
            </style>
            
            
        </div>
        <div class="inputBox">
            <input type="Password" name="password" required="">
            <label> Create Password</label>
        </div>
        
    <input type="submit" value="Register">
        
    </form>
                
                
            <style>

        .box
{
    position: fixed;
    top: 55%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 400px;
    padding: 17px;
    background: rgba(0,0,0,.8);
    box-sizing: border-box;
    box-shadow:  0 15px 25px rgba(0,0,0,.8);
    
    border-color: black;
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
    margin-left: 35%;
    color: #fff;
    background: #03a9f4;
    padding: 10px 20px;
    cursor: pointer;
    border-radius: 5px;
}
   </style>
        
    </body>
</html>
