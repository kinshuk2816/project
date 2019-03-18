<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <%@ page import="login.HibernateUtil" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style>

.container{
 padding-top: 32px;
  vertical-align:middle;
padding-left:450px;
}



body{
background-image: url(https://backgroundcheckall.com/wp-content/uploads/2017/12/background-tembok-hd-2.jpg);
height: auto;
 min-width: auto;
 background-size:cover;
 }




</style>
<script type="text/javascript">


function validate()
{
	var name1=document.getElementById("n1").value;
    var mobile1=document.getElementById("m1").value;
	var place1=document.getElementById("p1").value;
    
     var patternName="^[A-Z a-z]+$";
     
	 var patternMobile="^[0-9]{10}$";
	 
	 var patternPlace="^[A-za-z]$";
	 
	 if(name1.match(patternName) && mobile1.match(patternMobile) &&  place1.match(patternPlace)) {
	    	
		return true;
	    }
	    else{
	    	document.getElementById("s1").innerHTML="Name pattern Wrong" ;
	    	document.getElementById("s1").style.color=('red');
	    	document.getElementById("s3").innerHTML="Number pattern Wrong" ;
	    	document.getElementById("s3").style.color=('red');
	    	document.getElementById("s4").innerHTML="Place pattern Wrong" ;
	    	document.getElementById("s4").style.color=('red');
	    	return false;
	    }

	    
	 
	    
}

















</script>




</head>

<body>

<%String name="ki"; %>
<% HibernateUtil util1= new HibernateUtil();
util1.createSessionFactory();  %>

<form onsubmit="" action="RegistrationServlet">
  

  <div class="container">
  
  
                     <div class="row">
 <div class="col-lg-4" >
 <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input class="form-control" type="text" name='user' placeholder="user" id="u1" value="<%=Integer.parseInt(request.getParameter("uname")) %>"  required="required"/><span id="" ></span>
</div></div></div>
  
  
  
  
  
                     <div class="row">
 <div class="col-lg-4" >
 <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input class="form-control" type="text" name='Name' placeholder="Name" id="n1" required="required"/><span id="s1" ></span>
</div></div></div>

             <div class="row">
 <div class="col-lg-4">
     <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
            <input class="form-control" type="text" name='E-mail' placeholder="E-mail" id="e1"required="required"/>    <span id="s2"></span>
</div></div></div>
        
        
        
        <div class="row">
 <div class="col-lg-4">
     <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
            <input class="form-control" type="text" name='Age' placeholder="Age" id="m1" />    <span id="s3"></span>
</div></div></div>
        
  

    
        
                   <div class="row">
 <div class="col-lg-4">
     <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
            <input class="form-control" type="text" name='Place' placeholder="Place" id="p1"  required="required"/>    <span id="s4"></span>
</div></div></div>
        
    
        
        
   
        
        <div class="row">
         <div class="col-lg-4">
    <button type="submit" class="form-control" >Submit</button>
    </div></div>
   
  </div> </form>
 


</body>

</html>
















