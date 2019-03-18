<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
   <!DOCTYPE html>
 <%@ page import="login.HibernateUtil" %>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 4px solid #f1f1f1;}


.imgcontainer {
  text-align: center;
  vertical-align:middle;
 
}

img.avatar {
  width: 10%;
  border-radius: 50%;
}

.container {
  padding: 6px;
  vertical-align:middle;

  
}
.form-control{
  text-align: center;
         border-radius: 77px;
margin-top: auto;
box-sizing: border-box;
vertical-align:middle;

}



}

</style>

<script>
function validate()
{
	var name1=document.getElementById("n1").value;
	 var pswd1=document.getElementById("p1").value;
	
   var patternName="^[A-Z a-z]+$";
   var patternPswd="^[A-Za-z0-9@#]+$";

//if(name.toLowercase()=="admin" && password=="Admin")


if (name1.match(patternName) && pswd1.match(patternPswd)) {
	document.getElementById("s1").innerHTML="  "  ;
	document.getElementById("s2").innerHTML="  " ;
	return true;
}
else if(name1.match(patternName)==null && pswd1.match(patternPswd)==null){
	console.log("name and password are empty");
	document.getElementById("s1").innerHTML=" Name cant be empty " ;
	document.getElementById("s1").style.color=('red');
	document.getElementById("s2").innerHTML="Password cant be empty";
	document.getElementById("s2").style.color=('blue');
return false;
}

else  if (pswd1.match(patternPswd)==null) {
	console.log(" password is empty");
	document.getElementById("s2").innerHTML="Password cant be empty";
	document.getElementById("s1").innerHTML=" ";
	return false;
}

	    else if(name1.match(patternName)==null) {
	    	console.log(" name is empty");
	    	document.getElementById("s1").innerHTML=" Name cant be empty" ;
		document.getElementById("s2").innerHTML=" " ;
		
		
	return false;
	    }
	  
	  
	 
	  
	  
	  
	  
	  
	  
}
</script>
</head>
<body>
<%String name="k"; %>
<% HibernateUtil util= new HibernateUtil();
util.createSessionFactory();  %>

<h2><center>Login Form</center></h2>

<form onsubmit="" action="FirstServlet">
  <div class="imgcontainer">
    <img src="C:\Users\Kinshuk\Downloads\img_avatar.png" alt="LOL" class="avatar">
  </div>

  <div class="container">
  <div class="row">
 <div class="col-lg-5" >
 
    <label ><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname" id="n1" class="form-control"> <span id="s1" ></span>
</div></div>

<div class="row">
 <div class="col-lg-5">
    <label ><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="p1"  class="form-control"><span id="s2"></span>
</div></div><br/>
        
        <div class="row">
         <div class="col-lg-5">
    <button type="submit" class="form-control" >Login</button>
    </div></div>
    
    
    
  </div>
</form>

</body>
</html>