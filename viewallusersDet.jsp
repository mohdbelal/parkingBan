<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
        .headcolor
        {
        	background-color: rgb(0,208,0);
        }
        .table-bordered
        {
        	border:2px solid green !important;

        }
        td
        {
        	border:2px solid green !important;
        }
        .usersearch
        {
        	/*width: 20%;*/
        	text-align: center;
        }
       
</style>

</head>

<body>

	<nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#"><span style="color: white;">Parking</span><span style="color: red;"> Barn!</span></a>
          </div>
          <ul class="nav navbar-nav">
           
            
          </ul>
          <ul class="nav navbar-nav navbar-right">
             <li ><a href="adminHome">Home</a></li>
            <!-- <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
          </ul>
        </div>
      </nav>

<center>
	<div align="center" style="margin-top: 10px;">
		<b style="position: relative;top: 27px;">USER DETAILS</b>
	</div>
<br>
		<table class="table table-bordered" border="2" bordercolor="30"  align="center" width="1000px ">
		<thead>
	   		<tr>
		   		
		   		<td class="headcolor" width="250px">UserName</td>
		   		<td class="headcolor" width="250px">Name</td>
		        <td class="headcolor" width="100px">City</td>
		        <td class="headcolor" width="250px">State</td>
		        <td class="headcolor" width="100px">Pincode</td>
		        <td class="headcolor" width="100px">Address</td>
		        <td class="headcolor" width="100px">Email</td>
		        <td class="headcolor" width="100px">Mobile No.</td>
		        <td class="headcolor"></td>
	        </tr>
        </thead>
        <tbody>
	        <c:forEach items="${listLoc}" var="temp" >
		       <tr>
		       			<form action="viewallusersbooking" method="POST">
		       				<!-- <div class="usersearch"> -->
		       					<input style="width: 20%; margin-bottom: 50px;" type="hidden" value=${temp.getUserName()} id="username" name="username">
		       					<!-- </div> -->
		       			<td>${temp.getUserName()}</td>
		       			<td>${temp.getUname()}</td>
		       			<td>${temp.getUcity()}</td>
		       			<td>${temp.getUstate()}</td>
		       			<td>${temp.getPincode()}</td>
		       			<td>${temp.getUaddr()}</td>
		       			<td>${temp.getUemail()}</td>
		       			<td>${temp.getUmob()}</td>
		       			<td><input style="width: 100%;" type="submit" value="ViewBookings"></td>
		       			</form>
		       </tr>
	       </c:forEach>
       </tbody>
   		<table>
   		<!-- <a href="logout"><button>LOGOUT</button></a> -->
   		<form action="logout">
   		<input type="submit" value="LOGOUT">
   		</form>
</body>
</html>