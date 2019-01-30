<script type="text/javascript">

function fnCheck(){
	var name = document.forms["registrationform"]["UserName"].value;
	alert( name.length<=3);

	    if (name == "" || name.search("[a-zA-Z]")==-1 || name.search("[0-9]")>-1 || name.length<=3)                                  
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
};
/*********************Last Name Check*******************/

function stateCheck(){
	var name = document.forms["registrationform"]["Ustate"].value;
	//alert( name.length<=3);

	    if (name == "" || name.search("[a-zA-Z]")==-1 || name.length<=3)                                  
	    { 
	     
	       document.getElementById("statespan").innerHTML="Please enter Last valid name.";
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
	alert( name.length<=3);

	    if (name == "" || name.search("[a-zA-Z]")==-1 ||  name.length<=3)                                  
	    { 
	     
	       document.getElementById("cityspan").innerHTML="Please Enter Valid User Name.";
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

function pwdcheck(){
pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}";
pattern1=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{7,8}$/;//asD1 | asDF1234 | ASPgo123

var password = document.getElementById("Password").value; 
if(password.match(pattern1))
{
    document.getElementById("Passwordspan").innerHTML="";
    document.getElementById("Passwordspan").style.color="green";
    document.getElementById("Password").style.borderColor="green";
}else{
   
    document.getElementById("Passwordspan").innerHTML="enter valid password";
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
    	 
    		 document.getElementById("emailspan").innerHTML="Please enter valid emailid";
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
                document.getElementById("pincodespan").innerHTML="please enter valid code.. ";
                document.getElementById("pincodespan").style.color="red";
                document.getElementById("pincodespan").style.borderColor="red";

            } 
       
    };


  
/*


function  mobilenocheck()
{       
 //var name = document.forms["registrationform"]["Umob"].value;
 p=/^[789]\d{9}$/;
 alert((p.test(name));
if (p.test("8957847567"))                                  
{ 
	document.getElementById("mobispan").innerHTML=" ";
    document.getElementById("Umob").style.color="green";
	document.getElementById("Umob").style.borderColor="green";
 
} 
else
{  
	document.getElementById("mobispan").innerHTML=" enter valid mobile number";
    document.getElementById("Umob").style.color="red";
    document.getElementById("Umob").style.borderColor="red";
} 
}*/