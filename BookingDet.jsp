
<!DOCTYPE html>
<html lang="en">
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
          background-color:white;
        }
        .headcolor
        {
          background-color: rgb(76,175,80);
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
     <li ><a href="/">Home</a></li>
    <li><a href="UserLogin"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
  </ul>
</div>
</nav>


      <form action="addBookingDet" method="POST" >
        <div  class="container-fluid" align="center">
          <h1>Booking Details</h1>
          <p></p>
          <hr>
      
        <table align="center" >

         
		   <tr>
		        <td class="headcolor" align="left"><label><b>CheckinDate</b></label> 
		        <td><input type="date" name="CheckinDate" id="Date" placeholder="CheckinDate" onblur="checkBookingDate()" required="required"><span id="chkBookingDate"></span></td>
		  </tr>
           <tr>
                <td class="headcolor" align="left"><label><b>CheckinTime</b></label> 
                <td><input type="time" name="CheckinTime" id="CheckinTime" placeholder="CheckinTime" onblur="CheckinTimeValidate()" required="required"><span id="CheckinTimespan"></span></td>
          </tr>

          <tr>
                <td class="headcolor" align="left"><label><b>Time</b></label></td>
                <td>
                <select id="LeaveTime" name="LeaveTime">
                	<option value="1">1 hr</option>
                   	<option value="2">2 hr</option>                	
                   	<option value="3">3 hr</option>
                	<option value="4">4 hr</option>
                	<option value="6">6 hr</option>
                	<option value="12">12 hr</option>
                	<option value="24">24 hr</option>
                </select>
                </td>
          </tr>
         
              </div>
            </td>

          </tr>


          </table>
          <hr>
        
          <button type="submit" class="registerbtn">Confirm Booking7</button>

          <hr>
     

      </form>
      
       <script>   
  
     function checkBookingDate() 
      {  
      var  flag=false;
    	 var dt=new Date();
    	 dt=document.getElementById("Date").value;//read user entered date
    	 var datearray=dt.split("-");//split and read
        var newdateformate=datearray[1]+'/'+datearray[2]+'/'+datearray[0];//create new formate of date
    console.log("user DAte for: "+newdateformate);//print user entered date
    var currebtDate=new Date();//read current date:
    console.log("system date"+currebtDate);
  // var currentDatearray=currebtDate.split(" ");
   
    var cuurYear=currebtDate.getFullYear();
   var cuurrMonth=currebtDate.getMonth()+1;
   var currDay=currebtDate.getDate(); 
   var newCurrentDateFormate=cuurrMonth+'/'+currDay+'/'+cuurYear;//create new formate of date
  
   console.log("system date "+newCurrentDateFormate);
   /*  console.log("current year "+cuurYear);
   console.log("current month "+cuurrMonth);
   console.log("current month "+currDay); */



   if(datearray[0] < cuurYear)//with preiviouse year
	{
	flag=false;
	
		
	}
   else if(datearray[0] == cuurYear)
	{
	   if(datearray[2] < cuurrMonth)//with previouse month
		{
		flag=false;
		  
		  }
		
	}
   else if(datearray[0] == cuurYear)
	{
	   if(datearray[1] == cuurrMonth)//with previouse month
	   {
	   if(datearray[2] <= currDay)
	     {
	     flag=false;
		 
		  }
		
     	}
	}
	  else (datearray[0] == cuurYear)
	{
	   if(datearray[1] == cuurrMonth)//with previouse month
	   {
	   if(datearray[2] >= currDay)
	     {
	     flag=true;
		 
		  }
		
     	}
	}
	if(flag==true)
	{
	document.getElementById("chkBookingDate").innerHTML="valid date";
	     document.getElementById("chkBookingDate").style.color="green";
	}
	else
	{
	document.getElementById("chkBookingDate").innerHTML="Invalid date";
	     document.getElementById("chkBookingDate").style.color="red";
	}
}
 
   
   /*   console.log(newCurrentDateFormate); //read current date
 
    */
/*     	 console.log(dt);//read date
    	 
    	 console.log(currebtDate); 
    	// alert(dt===currebtDate);
    	 var dt1=dt.getDate();
    	 console.log("date is :"+dt1);
 */    	 
  /*****************validate check-in time**************/
         function CheckinTimeValidate() 
 		{
	 var getUSerTime=document.getElementById("CheckinTime").value;
	// alert("user chk time "+getUSerTime);
	var userChktTime=getUSerTime.split(":");
	// alert("user chk time "+userChktTime[0]+" min :"+serChktTime[1]);
	
		var getSystemtime=new Date();
		var systemTime= getSystemtime.getHours() + ":" + getSystemtime.getMinutes() + ":" + getSystemtime.getSeconds();
		
		if(userChktTime[0] < getSystemtime.getHours())
			{
			document.getElementById("CheckinTimespan").innerHTML="Invalid Time";
			//document.getElementById("CheckinTimespan").styl.color="red";
		   }
		else if(userChktTime[0] == getSystemtime.getHours())
			{
			if(userChktTime[1] < getSystemtime.getMinutes())
				{
				document.getElementById("CheckinTimespan").innerHTML="Invalid Time";
				//document.getElementById("CheckinTimespan").styl.color="red";
				}
			}
		else 
			{
			document.getElementById("CheckinTimespan").innerHTML="";
			document.getElementById("CheckinTimespan").styl.bordercolor="green";
			}
		}
   
      </script>

</body>
</html>