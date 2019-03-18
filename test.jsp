<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
 <%@ page import="login.HibernateUtil" %>
 <%@ page import="login.registration,java.util.*"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<style>



.form-control{
	  text-align: center;
	         border-radius: 77px;
	margin-top: auto;
	box-sizing: border-box;
	vertical-align:middle;

	}


</style>





</head>
<body>
<%String name="k"; %>
<% HibernateUtil util= new HibernateUtil();
util.createSessionFactory();  %>

<form onsubmit="" action="DisplayAll">

   <div class="row">
         <div class="col-lg-4">
    <button type="submit" class="form-control" >Display All</button>
    </div></div>    
    
   <div class="row">
         <div class="col-lg-4">
    <button type="submit" class="form-control" >Display ID</button>
    </div></div>
    <br>
    
   <div class="row">
         	<div class="col-lg-4">
             	<label>Id</label>
	<div>
               <select>
                 <option value="Choose">Choose</option>
                	</select>
</div></div></div>
                    </form>             
   <table border=2>
<tr> <th>Name </th> <th>User </th> <th>Email</th>  <th>Age</th> <th>place</th></tr>

	<% List users=(List)request.getAttribute("users");
	if(users!=null){
		Iterator itr = users.iterator();
		while(itr.hasNext()){
			registration user =(registration) itr.next();
		
%>
<tr>
<td><%=user.getName()%></td>
<td><%=user.getUser()%></td>

<td><%=user.getEmail()%></td>
<td><%=user.getAge()%></td>
<td><%=user.getPlace()%></td>
</tr>
<%}} else{%>
	
<tr colspan="3">No Data found</tr>
<%} %>
</table>



                                
                                
                                
                                					
   


</body>
</html>