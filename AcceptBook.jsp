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

	<body>
      <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
           <a class="navbar-brand" href="#"><span style="color: white;">Parking</span><span style="color: red;"> Barn!</span></a>
          </div>
          
          <ul class="nav navbar-nav navbar-right">
           
            <li><a href="/">Home</a></li>
            <li><a href="UserLogin"><span class="glyphicon glyphicon-user"></span> Log Out</a></li>
            
          </ul>
        </div>
      </nav>

<form action="AcceptBooking" method="post">
<table align="center">
	<tr>
		<td>Enter Parking Space No </td>
		<td><input type="text" name="lotno" id="lotno"></td>
	</tr>
	<tr colspan="2" align="center">
        <div>
		<td><input style="width: 50%;" type="submit" ></td>
    </div>
	</tr>
</table>
</form>

</body>		
</html>