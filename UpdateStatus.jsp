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
       
</style>

    </head>

<body>

	        <nav style="color: black;"  id="navbar-section" class="navbar navbar-default navbar-static-top navbar-sticky" role="navigation">
        <div style="background-color: black;">
        
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

           
            </div>
        
            <div id="navbar-spy" class="collapse navbar-collapse navbar-responsive-collapse">
                <div class="navbar-header">
                   
                    <a class="navbar-brand" href="/"><span style="color:blanchedalmond">Parking</span><span style="color:red"> Barn!</a>
                    
                </div>
                <ul class="nav navbar-nav pull-right">
                    <!-- <li>
                        <a href="/" style="color:white">Home</a>
                    </li> -->
                    <li>
                        <a href="aboutusDet" style="color:white">AboutUs</a>
                    </li>
                    <li>
                        <a href="contactUs" style="color:white">ContactUs</a>
                    </li>
                    <li>
                    <li><a class="text1" href="registerPage"><span class="glyphicon glyphicon-user text1" ></span><span class="text1"> Sign Up</span></a></li>
                    </li>
                    <li>
                       <li><a href="UserLogin"><span class="glyphicon glyphicon-log-in text1"></span> <span class="text1"> Login</span></a></li>
                    </li>
                </ul>         
            </div>
        </div>
    </nav>

<form action="ShowBookedParking" method="POST"></form>

<center>
<h4>Search Result</h4>
		<table border="2" bordercolor="30"  align="center" width="1000px ">
		<thead>
	   		<tr>
	   			<td class="headcolor" width="250px">User Name</td>
		   		<td class="headcolor"width="250px">CheckInTime</td>
		   		<td class="headcolor"width="250px">CheckInDate</td>
		        <td class="headcolor"width="100px">Time</td>
		        <td class="headcolor"width="250px">PaymentStatus</td>
		        <td class="headcolor"width="100px">Status</td>
		        <td class="headcolor"></td>
		        <td class="headcolor"></td>
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
		       			<form action="exitUser" method="post">
						       <input type="hidden" value=${temp.getBookingId()} id="id" name="id"> 					        
						       <td><input style="width: 90%" type="submit" value="Exit!"></td>
		       			</form>  
		       			<form action="changePayS" method="post">
						       <input type="hidden" value=${temp.getBookingId()} id="id" name="id"> 	       
						       <td><input style="width: 90%" type="submit" value="Payment"></td>
		       			</form>  
		       			    			
		       </tr>
	       </c:forEach>
       </tbody>
   		<table>
   		
</body>
</html>