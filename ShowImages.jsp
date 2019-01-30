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
        td, th
        {
    		padding: 5px;
		}

        .zoom 
        {
		  /*padding: 50px;*/
		  
		  transition: transform .2s; /* Animation */
		  width: 200px;
		  height: 200px;
		  margin: 40;
		}

		.zoom:hover 
		{
  		  transform: scale(1.5); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
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
<h4><b>Search Result</b></h4>
		<table border="2" bordercolor="30"  align="center" width="1000px ">
		<thead>
	   		<tr style="width: 70px;">
		   		<td class="headcolor"></td>
		   		<td  width="250px" class="headcolor" align="center">Images</td>
		   		<td class="headcolor"></td>
		   		
	        </tr>
        </thead>
        <tbody>
	        <c:forEach items="${listLoc}" var="temp" >
		       <tr>
		       		
		       			<td style="width: 25%; " align="center"><input style="width: 70%; " type="text" value=${temp.details.getUserName()} name="UserName" disabled></td>
		       			
		       			<td style="width: 20%;" align="center">
		       				<img class="zoom" src="${temp.getPath()}" width="500px" height="500px"></img>
		       			</td> <!--  -->
		       	
		       			<td style="width: 20%; ">
		       				<div align="center">
		       			 <form action="RejectOwner" method="POST">
			       				
			       				<input type="hidden" value=${temp.details.getUserName()} name="UserName">
			       				<input style="width: 90%; " type="submit" value="Reject">
			       		 </form>
			       				<br>
			       				<form action="AcceptOwner" method="POST">
			       				
			       				<input type="hidden" value=${temp.details.getUserName()} name="UserName">
			       				<input style="width: 90%;" type="submit" value="Accept">
			       				</form>
		       				</div>
		       			</td>
		       			</form>
		       </tr>
	       </c:forEach>
       </tbody>
   		<table>
   		<!-- <a href="logout"><button>LOGOUT</button></a> -->
   		<input type="submit" formaction="logout" value="LOGOUT">
</body>
</html>