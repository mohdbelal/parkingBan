<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <li ><a href="UserHome">Home</a></li>
            
            <!-- <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
            <li><a href="UserLogin"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
          </ul>
        </div>
      </nav>

<form action="search" method="POST">
<div align="center" style="margin-top: 10px;">
	<b>Search For Parking Spot:</b>
</div>
<div class="usersearch">
	<input style="width: 20%" type="text" placeholder="Enter PinCode" name="searchPark">
</div>
<div align="center">
	<input type="submit" id="search" value="Search" name="search">
</div>

<center>
<b>Search Result</b>
		<table class="table table-bordered" border="2" bordercolor="30"  align="center" width="1000px ">
		<thead>
	   		<tr>
		   		<td class="headcolor" width="250px">LandRegNo</td>
		   		<td class="headcolor" width="250px">PlotNo</td>
		   		<td  class="headcolor" width="250px">Area</td>
		        <td class="headcolor" width="100px">Ucity</td>
		        <td class="headcolor" width="250px">Ustate</td>
		        <td class="headcolor" width="100px">LandMark</td>
		        <td  class="headcolor"width="100px">LandSize</td>
		        <td class="headcolor" width="100px">Pincode</td>
	        </tr>
        </thead>
        <tbody>
	        <c:forEach items="${listLoc}" var="temp">
		       <tr>
		       			<td>${temp.getLandRegNo()}</td>	
		       			<td>${temp.getPlotNo()}</td>
		       			<td>${temp.getArea()}</td>
		       			<td>${temp.getUcity()}</td>
		       			<td>${temp.getUstate()}</td>
		       			<td>${temp.getLandMark()}</td>
		       			<td>${temp.getLandSize()}</td>
		       			<td>${temp.getPincode()}</td>		
		       </tr>
	       </c:forEach>
       </tbody>
   		<table>
   		</form>
</body>
</html>