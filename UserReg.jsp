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

      <form name="registrationform" action="addUserDet" method="POST">
        <div  class="container-fluid" align="center">
          <h1>New Register</h1>
          <p>Please fill in this form to create an account.</p>
          <hr>
      
        <table align="center" >
        	
          <tr>
                <td align="left"><label onclick="test()"><b>User Name</b></label> 
                <td><input type="text"  placeholder="Enter User Name" name="UserName" id="UserName" placeholder="Username"  onblur="checkUSerName()" required></td>
                <br/><span id="fnamespan">Enter User Name(small , capital letter and number combination)</span>
          
                 
                 <td><span id="output"></span></td>
                 </tr>

			<tr>
				 <td align="left"><label><b> Name</b></label> 
                <td><input type="text"  placeholder="Enter Your Name" name="Uname" id="Uname" placeholder="Name"  onblur="NameCheck()"  required></td>
              
			</tr>
          <tr>
                <td align="left"><label><b>Password</b></label></td>
                <td><input type="password" name="Password" id="Password" placeholder="Enter Password" onblur="pwdcheck()" required></td>
                <td><span  id="Passwordspan"></span></td>
                
          </tr>
          <tr>
                <td align="left"><label><b>Confirm Password</b></label></td>
              
                <td><input type="password" name="CnfPass" id="CnfPass" placeholder="Confirm Password" onblur="confirmPasswordCheck()" required><br><span id="confirmPasswordspan"></span></td>
                
          </tr> 

          <tr>
                <td align="left"><label><b>Email</b></label> 
                <td><input type="text" name="Uemail" id="Uemail" placeholder="Email ID" onblur="emailcheck()" required><span id="emailspan"></span></td>
                
          </tr>
          
          <tr>
                <td align="left"><label><b>City</b></label> 
                <td><input type="text" name="Ucity" id="Ucity" placeholder="Enter City Name"  onblur="checkCity()" required><span id="cityspan"></span></td>
          </tr>

         <tr>
                <td align="left"><label><b>State</b></label> 
                <td><input type="text" name="Ustate" id="Ustate" placeholder="State" onblur="stateCheck()" required><span id="statespan"></span></td>
          </tr>



          <tr>
                <td align="left"><label><b>Address</b></label> 
                <td><input type="text" name="Uaddr" id="Uaddr" placeholder="Address" onblur="addrCheck()" required><span id="addressspan"></span></td>
          </tr>


          <tr>
                <td align="left"><label><b>Mobile No</b></label> 
                <td><input type="number" name="Umob" id="Umob" placeholder="Mobile No" onblur="mobilenocheck()" required><span id="mobispan"></span></td>
                
          </tr>
          
          <tr>
                <td align="left"><label><b>Pincode</b></label> 
                <td><input type="number" name="Pincode" id="Pincode" placeholder="Pincode" onblur="pincodecheck()" required><span id="pincodespan"></span></td>
          </tr>
    <tr>
           <td align="left"><label><b>User Type</b></label>
            <td>
              <div class="dropdown" align="center">
                   
                    <select id="Utype" name="Utype">
  		<option value="null" selected="selected">None</option>
  		<option value="owner">Owner</option>
  		<option value="user">Customer</option>
	</select>
              </div>
            </td>
          </tr>
          </table>
          <hr>
          <p id="par"></p>
          <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

          <button type="submit" class="registerbtn">Register</button>

          <hr>
     <p>If already have an account,click on <span><a href="login.html"><b>Login </b></a></span>here.</p>

      </form>
      


</body>


<script>
function checkUSerName()
{
	var name = document.getElementById("UserName").value;

		
	   //alert( name.length<=3);

		    if (name == "" || name.search("[a-zA-Z]")==-1 || name.search("[0-9]")<-1 || name.length<=3 ||  name.length>=20)                                  
		    { 
		     
		       document.getElementById("fnamespan").innerHTML="Please Enter Valid User Name.";
		       document.getElementById("fnamespan").style.color="red";
			      document.getElementById("UserName").style.borderColor="red";
		         
		        return false; 
		    } 
		    else
		     {
		         document.getElementById("fnamespan").innerHTML="";
		         document.getElementById("fnamespan").style.borderColor="green";
		         document.getElementById("UserName").style.borderColor="green";
		   }    
	}
/***********************check Name*************************/
function NameCheck()
{
	var name =document.getElementById("Uname").value;
//	$con = mysqli_connect('localhost:3306', 'root', '', 'parkingsys1'); 
//		$username = mysqli_real_escape_string($con,$name );
//	$sql = "SELECT user_name FROM user_details WHERE user_name = '".$username."'";
//	$result = mysqli_query($con, $sql);
//	$count = mysqli_num_rows($result);
//	alert(count);
//	if (count==1)
//		{
//		document.getElementById("chkNamespan").innerHTML="USer Alreday exist.";
//		}
//	else
//		{
//		document.getElementById("chkNamespan").innerHTML="USer not Alreday exist.";
//		}
	if (name == "" || name.search("[a-zA-Z]")==-1)                                  
	    {
	     
	       document.getElementById("chkNamespan").innerHTML="Please Enter Valid  Name.";
	       document.getElementById("chkNamespan").style.color="red";
		      document.getElementById("Uname").style.borderColor="red";
	         
	        return false; 
	    } 
	    else
	     {
	         document.getElementById("chkNamespan").innerHTML="";
	         document.getElementById("chkNamespan").style.borderColor="green";
	         document.getElementById("Uname").style.borderColor="green";
	   }             
};
/*********************Check State*******************/

function stateCheck(){
	var name = document.forms["registrationform"]["Ustate"].value;
	//alert( name.length<=3);

	    if (name == "" || name.search("[a-zA-Z]")==-1 || name.length<=3)                                  
	    { 
	     
	       document.getElementById("statespan").innerHTML="Please enter Valid state Name.";
	       document.getElementById("statespan").style.color="red";
	      document.getElementById("Ustate").style.borderColor="red";
	         
	        return false; 
	    } 
	    else
	     {
	         document.getElementById("statespan").innerHTML="";
	         document.getElementById("statespan").style.color="green";
	         document.getElementById("Ustate").style.borderColor="green";
	   }             
};
/********************* Check City*******************/

function checkCity(){
	var name = document.forms["registrationform"]["Ucity"].value;
	//alert( name.length<=3);

	    if (name == "" || name.search("[a-zA-Z]")==-1 ||  name.length<=3)                                  
	    { 
	     
	       document.getElementById("cityspan").innerHTML="Please Enter Valid City Name";
	       document.getElementById("cityspan").style.color="red";
		      document.getElementById("Ucity").style.borderColor="red";
	         
	        return false; 
	    } 
	    else
	     {
	         document.getElementById("cityspan").innerHTML="";
	         document.getElementById("Ucity").style.borderColor="green";
	         document.getElementById("Ucity").style.borderColor="green";
	   }             
};
    /********************password check********************/

function pwdcheck()
{
pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}";
pattern1=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{7,20}$/;//asD1 | asDF1234 | ASPgo123

var password = document.getElementById("Password").value; 
if(password.match(pattern1))
{
    document.getElementById("Passwordspan").innerHTML="";
    document.getElementById("Passwordspan").style.color="green";
    document.getElementById("Password").style.borderColor="green";
}else{
   
    document.getElementById("Passwordspan").innerHTML="Not valid password";
    document.getElementById("Passwordspan").style.color="red";
    document.getElementById("Password").style.borderColor="red";
}


};
 /*****************confirm check***********************/

function confirmPasswordCheck(){

    var password = document.getElementById("Password"); 
    var confirmPassword=document.getElementById("CnfPass");
    
      if(password.value==confirmPassword.value)
       {
          console.log(document.getElementById('Password').value);
          document.getElementById("confirmPasswordspan").style.color='green';
          document.getElementById("CnfPass").style.borderColor="green";

          document.getElementById("confirmPasswordspan").innerHTML="Matched.";
      }else{
          document.getElementById("confirmPasswordspan").style.color='red';
          document.getElementById("CnfPass").style.borderColor="red";

          document.getElementById("confirmPasswordspan").innerHTML="Password Did Not Matched.";
      }
    };
 


      function  emailcheck()
         {        
            var reg1=/^([a-z 0-9\.-]+)@([a-z0-9-]+).([a-z]{2,8})(.[a-z]{2,8})?$/;
             var name = document.forms["registrationform"]["Uemail"].value;
  //alert(reg1.test(name));
  if (reg1.test(name) )                               
         { 
    	   document.getElementById("emailspan").style.color="green";
      	document.getElementById("Uemail").style.borderColor="green";
      
    document.getElementById("emailspan").innerHTML=" email id is ok";
    	       } 
     else
      	{
    	 
    		 document.getElementById("emailspan").innerHTML="Please Enter Valid Email Id";
     	document.getElementById("emailspan").style.color="red";
     	document.getElementById("emailspan").style.borderColor="red";
     
      	} 
      };
       /***************Pincode Check*************************/
      
        function  pincodecheck()

        {
            var pincode = document.forms["registrationform"]["Pincode"].value;
            pat2=/^[a-zA-Z]/;
            pat1=/^\d{6}$/;
            if(pat1.test(pincode))
            {
              document.getElementById("pincodespan").innerHTML=" ";
                document.getElementById("pincodespan").style.color="green";
           document.getElementById("pincodespan").style.borderColor="green";
           return false;
            }
            else{
                document.getElementById("pincodespan").innerHTML="Please Enter Valid Code.. ";
                document.getElementById("pincodespan").style.color="red";
                document.getElementById("pincodespan").style.borderColor="red";

            } 
       
    };

    /*********************Check Address*******************/

    function addrCheck(){
    	var name = document.forms["registrationform"]["Uaddr"].value;
    	//alert( name.length<=3);

    	    if (name == "" || name.search("[a-zA-Z]")==-1 || name.length<=3)                                  
    	    { 
    	     
    	       document.getElementById("addressspan").innerHTML=" Please Enter Valid Address.";
    	       document.getElementById("addressspan").style.color="red";
    	      document.getElementById("Uaddr").style.borderColor="red";
    	         
    	        return false; 
    	    } 
    	    else
    	     {
    	         document.getElementById("addressspan").innerHTML="";
    	         document.getElementById("addressspan").style.color="green";
    	         document.getElementById("Ustate").style.borderColor="green";
    	   }             
    };
  

</script>



<script type = "text/javascript">

function  mobilenocheck()
{       
//alert("in mobi check");
 var name = document.forms["registrationform"]["Umob"].value;
 //var name = document.getElementById("Umob").value;
 p=/^[789]\d{9}$/;
//alert(name.length="");
 if(name==""){
	 
	 }
 }
else if (name.length < 10)                                  
{ 
	document.getElementById("mobispan").innerHTML=" Invalid Mobile Number ";
    document.getElementById("mobispan").style.color="red";
	document.getElementById("Umob").style.borderColor="red";
 
} 
else if(name.length > 10)      
{  
	document.getElementById("mobispan").innerHTML=" Invalid Mobile Number ";
    document.getElementById("mobispan").style.color="red";
	document.getElementById("Umob").style.borderColor="red";
} 
else
{
document.getElementById("mobispan").innerHTML="";
    document.getElementById("Umob").style.color="green";
    document.getElementById("Umob").style.borderColor="green";
}
/***********************check Name*************************/
function NameCheck()
{
	var name =document.getElementById("Uname").value;
	//alert( name.length<=3);

	    if (name == "" || name.search("[a-zA-Z]")==-1 || name.search("[0-9]")>-1 || name.length<=3)                                  
	    { 
	     
	       document.getElementById("chkNamespan").innerHTML="Please Enter Valid User Name.";
	       document.getElementById("chkNamespan").style.color="red";
		      document.getElementById("Uname").style.borderColor="red";
	         
	        return false; 
	    } 
	    else
	     {
	         document.getElementById("chkNamespan").innerHTML="";
	         document.getElementById("chkNamespan").style.borderColor="green";
	         document.getElementById("Uname").style.borderColor="green";
	   }             
};
</script>



</html>