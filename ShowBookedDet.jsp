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
            <li><a href="UserLogin"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
          </ul>
        </div>
      </nav>

<form action="ShowBookedParking" method="POST"></form>

<center>
<h4>Search Result</h4>
		<table border="2" bordercolor="30"  align="center" width="1000px ">
		<thead>
	   		<tr>
	   			<td class="headcolor" width="250px">User Name</td>
		   		<td class="headcolor" width="250px">CheckInTime</td>
		   		<td  class="headcolor"width="250px">CheckInDate</td>
		        <td class="headcolor" width="100px">Time</td>
		        <td  class="headcolor"width="250px">PaymentStatus</td>
		        <td  class="headcolor"width="100px">Status</td>
		        <td  class="headcolor"></td>
		        <td  class="headcolor"></td>  
	        </tr>
        </thead>
        <tbody>
	        <c:forEach items="${listLoc}" var="temp" >
		       <tr>
		       
		       			<td>${temp.bdet.getUserName()}</td>
		       			<td>${temp.getCheckinTime()}</td>
		       			<td>${temp.getCheckinDate()}</td>
		       			<td>${temp.getTime()}</td>
		       			<td>${temp.isPayStatus()}</td>
		       			<td>${temp.isStatus()}</td>
		       			<form action="AcceptPage" method="post">
						       <input type="hidden" value=${temp.getBookingId()} id="bookingid" name="bookingid"> 
						       <input type="hidden" value=${temp.locationDet.getLandRegNo()} id="landrgno" name="landrgno"> 
						       <input type="hidden" value=${temp.bdet.getUserName()} id="username" name="username">
						        
						       		<td><input style="width: 90%;" type="submit" value="Accept"></td>
						   		
		       			</form>  
		       			<form action="DenyBooking" method="post">
						       <input type="hidden" value=${temp.getBookingId()} id="bookingid" name="bookingid"> 
						       <input type="hidden" value=${temp.locationDet.getLandRegNo()} id="landrgno" name="landrgno"> 
						       <input type="hidden" value=${temp.bdet.getUserName()} id="username" name="username">
						       <td><input style="width: 90%;" type="submit" value="Deny"></td>
		       			</form>      			
		       </tr>
	       </c:forEach>
       </tbody>
   		<table>
   		
</body>
</html>