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
             <li ><a href="SessLog">Home</a></li>
            <!-- <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
          </ul>
        </div>
      </nav>

<h3 style="color:green">${msg}</h3>

<h1>Welcome ${userName}</h1>
<h3><center><form action="showOldBooking"><input type="submit" value="Show Old Booking!" style="width:30%"></form></center></h3>
<center>
<h4>Search Result</h4>
		<table border="2" bordercolor="30"  align="center" width="1000px ">
		<thead>
	   		<tr>
		   		<td class="headcolor"></td>
		   		<td class="headcolor"width="250px">PlotNo</td>
		   		<td class="headcolor"width="250px">Area</td>
		        <td class="headcolor"width="100px">Ucity</td>
		        <td class="headcolor"width="250px">Ustate</td>
		        <td class="headcolor" width="100px">LandMark</td>
		        <td class="headcolor"width="100px">LandSize</td>
		        <td class="headcolor"width="100px">ParkingFee</td>
		        <td class="headcolor" width="100px">Pincode</td>
		        <td class="headcolor"width="100px">Total Space</td>
		        <td class="headcolor"></td>
		        <td class="headcolor"></td>
	        </tr>
        </thead>
        <tbody>
	        <c:forEach items="${listLoc}" var="temp" >
		       <tr>
		       <td><form action="ShowBookedParking" method="POST">
      			<input type="hidden" value=${temp.getLandRegNo()} id="landRegNo" name="landRegNo">
      			<td>${temp.getPlotNo()}</td>
      			<td>${temp.getArea()}</td>
      			<td>${temp.getUcity()}</td>
      			<td>${temp.getUstate()}</td>
      			<td>${temp.getLandMark()}</td>
      			<td>${temp.getLandSize()}</td>
      			<td>${temp.getParkingFee()}</td>
      			<td>${temp.getPincode()}</td>
      			<td>${temp.getSpace()}</td>
      			<td><input type="submit" value="View Bookings" style="width:98%" align="center"></td>		     
      			</form>
      			<td><form action="someExit">
      			<input type="hidden" value=${temp.getLandRegNo()} id="landRegNo" name="landRegNo">
      			<input type="submit" value="Update Booking Status!" style="width:98%" align="center"></form></td>
		       </tr>
	       </c:forEach>
       </tbody>
   		<table>
   		<!-- <a href="logout"><button>Logout</button></a> -->
   		
   		<form action="addMoreLoc">
   			<input type="hidden" value=${abc} id="loc" name="loc">
   			<input type="submit" value="Add More Locations">
   		</form>
   		
   		<form action="logout">
   		
   		<input type="submit" value="LOGOUT">
   		</form>
</body>
</html>