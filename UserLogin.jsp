<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>User_Login</h1>
<form action="userLogin" method="POST">
UserName:<input type="text" placeholder="Enter valid UserName" id="UserName" name="UserName"><br>
Password:<input type="password" placeholder="Enter valid Password" id="Password" name="Password"><br>
<input type="checkbox" name="rememberMe" value="yes" /> Remember Me <br/>
<input type="submit" value="Login" id="Login">
</form>
</body>
</html>
-->
<!DOCTYPE html>
<html>
<head>

        <!-- meta data & title -->
        <meta charset="utf-8">
        <title>ParkingBarn</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300">
        <link href='http://fonts.googleapis.com/css?family=PT+Sans' rel='stylesheet' type='text/css'>
        <link href="http://fonts.googleapis.com/css?family=Raleway" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <style type="text/css">
        	
        body
        {
        	background-color: white;
        }

        </style>
    </head>
<body>
      <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
           <a class="navbar-brand" href="#"><span style="color: white;">Parking</span><span style="color: red;"> Barn!</span></a>
          </div>
          
          <ul class="nav navbar-nav navbar-right">
             <li><a href="aboutusDet">About Us</a></li>
            <li><a href="contactUs">Contact Us</a></li>
          	<li><a href="/">Home</a></li>
            <li><a href="registerPage"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            
          </ul>
        </div>
      </nav>

      <form action="userLogin" method="POST">
      	<div  class="container-fluid " align="center">
          <h1>Login</h1>
          <p>Please fill in this form to log in your account.</p>
          <hr>

          <table align="center" >
		          <tr>
		                <td align="left"><label><b>User Name</b></label></td>
		                <td><input type="text" name="UserName" id="UserName" placeholder="Username" required></td>
		          </tr>
		          <tr>
                		<td align="left"><label><b>Password</b></label></td>
                		<td><input type="password" name="Password" id="Password" placeholder="Password" required></td>
          		  </tr>
		 </table>
		 <hr>
		

		 <button type="submit" class="registerbtn">Login</button>
		 
      </div>

      </form>

</body>
</html>