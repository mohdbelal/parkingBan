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
        /*.table-bordered
        {
          border:2px solid green !important;

        }
        td
        {
          border:2px solid green !important;
        }*/
       
</style>
</head>
<body>

  <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="/"><span style="color: white;">Parking</span><span style="color: red;"> Barn!</span></a>
          </div>
          <ul class="nav navbar-nav">
           
            
          </ul>
          <ul class="nav navbar-nav navbar-right">
             <li ><a href="HomePage">Home</a></li>
            <!-- <li><a href="UserLogin"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
          </ul>
        </div>
      </nav>


<form  name="Landregistrationform" action="LocationDetails" method="POST">
  
        <div  align="center">
            <h1>Register</h1>
          </div>
     <hr>
    <table align="center">
     <tr>
        <td>Land Registration  : </td>
        <td><input type="text" id="LandRegNo" name="LandRegNo" onblur="chkeLandReg()"></td>
        <td><span id="landregspan"></span></td>
    
    <tr>
        <td>Plot No. : </td>
        <td><input type="text" id="PlotNo" name="PlotNo" onblur="chkePlotNo()" required>
        <td><span id="PlotNoSpan"></span></td>
    </tr>
    <tr>
        <td>Area : </td>
        <td><input type="text" id="Area" name="Area"onblur="chkeArea()" required></td>
        <td><span id="AreaSpan"></span></td>
    </tr>
     <tr>
        <td>City  : </td>
        <td><input type="text" id="Ucity" name="Ucity" onblur="checkCity()"></td>
        <td><span id="Checkcityspan"></span></td>
    </tr>
     <tr>
        <td>State  : </td>
        <td><input type="text" id="Ustate" name="Ustate" onblur="checkState()"></td>
        <td><span id="Checkstatespan"></span></td>
    </tr> 
    <tr>
        <td>LandMark : </td>
        <td><input type="text" id="LandMark" name="LandMark" onblur="checkLandMark()" required="required"></td>
        <td><span id="landMarkspan"></span></td>
    </tr>
    <tr>
        <td>LandSize  : </td>
        <td><input type="text" id="LandSize" name="LandSize" onblur="checkLandSize()" required="required"></td>
        <td><span id="landsizespan"></span></td>
    </tr>
    
    <tr>
    <td> ParkingFee : </td>
    <td><input type="text" id="ParkingFee" name="ParkingFee" onblur="checkParkFee()" required="required"></td>
    <td><span id="parkfeespan">.Sqft</span></td>
</tr>
    <tr>
        <td>Pincode : </td>
        <td><input type="number" id="Pincode" name="Pincode" onblur="pincodecheck()" required></td>
        <td><span id="pincodespan"></span><br>
    </tr>
    <tr>
      <td>Total Space Available : </td>
      <td><input type="text" name="space" id="space" onblur="SpaceAvailable()" required></td>
      <td><span id="checkavailableSize"></span></td>
    </tr>
        <tr>
        <td colspan="2">
          <hr>
            <input type="submit" id="RegSub"  name="RegSub" value="Register" style="width: 100%">
          <hr>
            </td>      
    </tr>
    </table>
</form>
<script>

/****************************Land Registration Exception********************************/
function chkeLandReg()
{
  var name = document.forms["Landregistrationform"]["LandRegNo"].value;
       if(name=="" ||name.length<=3)
       {
          document.getElementById("landregspan").style.color="red";
            document.getElementById("LandRegNo").style.borderColor="red";
            document.getElementById("landregspan").innerHTML=" Field can not be empty.Please  Enter LandRegistration Number.";
        } else {
            //alert('Please put 6  digit pin code number');
          document.getElementById("landregspan").style.color="green";
            document.getElementById("LandRegNo").style.borderColor="green";
            document.getElementById("landregspan").innerHTML="";
             document.getElementById("landregspan").innerHTML=" ";
        }
      }
/************************Plot_NO check************************************/      
 function chkePlotNo()
{
  var name = document.forms["Landregistrationform"]["PlotNo"].value;
    if(name.length==4){
      document.getElementById("PlotNoSpan").style.color="green";
         document.getElementById("PlotNo").style.borderColor="green";
         document.getElementById("PlotNoSpan").innerHTML="";
     } else {
         //alert('Please put 6  digit pin code number');
      document.getElementById("PlotNoSpan").style.color="red";
         document.getElementById("PlotNo").style.borderColor="red";
         document.getElementById("PlotNoSpan").innerHTML=" Field can not be empty.Please Enter the Valid Plot no. Number.";
         document.getElementById("PlotNoSpan").innerHTML="";
     }
}
/******************check area********************/
  function chkeArea()
{
  var name = document.forms["Landregistrationform"]["Area"].value;
    if(name==""||name.search("[a-zA-Z]")==-1)
    {
      document.getElementById("AreaSpan").style.color="red";
        document.getElementById("Area").style.borderColor="red";
        document.getElementById("AreaSpan").innerHTML=" Field can not be empty.Please Enter  Area.";
          document.getElementById("Area").innerHTML="";
 
        
     } else
     {
         //alert('Please put 6  digit pin code number');
      document.getElementById("AreaSpan").style.color="green";
         document.getElementById("Area").style.borderColor="green";
         document.getElementById("AreaSpan").innerHTML="Done!.";
           document.getElementById("AreaSpan").innerHTML="";
     }
} 
 /******************check City********************/
 function checkCity()
{
  var name = document.forms["Landregistrationform"]["Ucity"].value;
    if(name.search("[0-9]")==-1)
    {
      if(name=="")
      {
      document.getElementById("Checkcityspan").style.color="red";
        document.getElementById("Ucity").style.borderColor="red";
        document.getElementById("Checkcityspan").innerHTML=" Field can not be empty.Please Enter Valid City Name.";
      }
        
      else 
      {
         //alert('Please put 6  digit pin code number');
      document.getElementById("Checkcityspan").style.color="green";
         document.getElementById("Ucity").style.borderColor="green";
         document.getElementById("Checkcityspan").innerHTML="Done!.";
          document.getElementById("Checkcityspan").innerHTML="";
     }
    }
} 
 /***************************check state*************************/
 
 function checkState()
 {
  var name = document.forms["Landregistrationform"]["Ustate"].value;
    if(name==""||name.search("[a-zA-Z]")==-1){
      document.getElementById("Checkstatespan").style.color="red";
        document.getElementById("Ustate").style.borderColor="red";
        document.getElementById("Checkstatespan").innerHTML=" Field can not be empty.Enter Valid State";
 
        
     } else {
         //alert('Please put 6  digit pin code number');
      document.getElementById("Checkstatespan").style.color="green";
         document.getElementById("Ustate").style.borderColor="green";
         document.getElementById("Checkstatespan").innerHTML="";
         document.getElementById("Checkstatespan").innerHTML="";
     }
} 
 /**************check LandMark**********/
  function checkLandMark() 
 {
   var name = document.forms["Landregistrationform"]["LandMark"].value;
      if(name==""||name.search("[a-zA-Z]")==-1 ){
        document.getElementById("landMarkspan").style.color="red";
          document.getElementById("LandMark").style.borderColor="red";
          document.getElementById("landMarkspan").innerHTML=" Field can not be empty.Please Enter Valid LandMark!.";
   
          
       } else {
           //alert('Please put 6  digit pin code number');
        document.getElementById("landMarkspan").style.color="green";
           document.getElementById("LandMark").style.borderColor="green";
           document.getElementById("landMarkspan").innerHTML="Done!.";
                 document.getElementById("landMarkspan").innerHTML="";
       }
  
} 
 /***********************************************/
  function checkLandSize() {
  
  var name = document.forms["Landregistrationform"]["LandSize"].value;
         if(name=="" ||name.length<0){
           console.log(document.getElementById("LandSize").value);
             document.getElementById("landsizespan").style.color="red";
             document.getElementById("LandSize").style.borderColor="red";
             document.getElementById("landsizespan").innerHTML=" Field can not be empty.Please Enter Land Size";
         } else {
             //alert('Please put 6  digit pin code number');
           console.log(document.getElementById("LandSize").value);
             document.getElementById("landsizespan").style.color="green";
             document.getElementById("LandSize").style.borderColor="green";
             document.getElementById("landsizespan").innerHTML="";
         }
 }  

  /**********************Parking Fee check***************************/
function  checkParkFee()
  {
  var name = document.forms["Landregistrationform"]["ParkingFee"].value;
    if(name=="" ||name.length<0){
     console.log(document.getElementById("ParkingFee").value);
        document.getElementById("parkfeespan").style.color="red";
        document.getElementById("ParkingFee").style.borderColor="red";
        document.getElementById("parkfeespan").innerHTML=" Field can not be empty.Enter Parking Fee.";
    } else {
        //alert('Please put 6  digit pin code number');
     console.log(document.getElementById("ParkingFee").value);
        document.getElementById("parkfeespan").style.color="green";
        document.getElementById("ParkingFee").style.borderColor="green";
        document.getElementById("parkfeespan").innerHTML="";
    }
}  
 /*************************************Check pincode***************/
 function  pincodecheck()
  {
  
   var name = document.getElementById("Pincode").value;

 // var part=/^((\+[1-9]{1,4}[ \-]*)|(\([0-9]{2,3}\)[ \-]*)|([0-9]{2,4})[ \-]*)*?[0-9]{3,4}?[ \-]*[0-9]{3,4}?$/;


  if(name.length==6)
          {
           console.log(document.getElementById("Pincode").value);
             document.getElementById("pincodespan").style.color="green";
             document.getElementById("Pincode").style.borderColor="green";
             document.getElementById("pincodespan").innerHTML="";
          } 
          else 
          {
            console.log(document.getElementById("Pincode").value);
              document.getElementById("pincodespan").style.color="red";
              document.getElementById("Pincode").style.borderColor="red";
              document.getElementById("pincodespan").innerHTML=" Field can not be empty.Please Enter Valid Pincode Number";
        
          }
  }
       
/*************************Space Available**************************/
  function  SpaceAvailable()
  {
  var name=document.getElementById("space").value; 
  //alert(name.value);
       if(name.length>0)
          {
            console.log(document.getElementById("space").value);
              document.getElementById("checkavailableSize").style.color="green";
              document.getElementById("space").style.borderColor="green";
              document.getElementById("checkavailableSize").innerHTML="";
          } 
          else 
          {
              //alert('Please put 6  digit pin code number');
          
              console.log(document.getElementById("space").value);
              document.getElementById("checkavailableSize").style.color="red";
              document.getElementById("space").style.borderColor="red";
              document.getElementById("checkavailableSize").innerHTML=" Field can not be empty.Enter Valid Available Space";
      
          }
  }
 
</script></table>
</body>
</html>