<%@page import="com.UsrService"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<script src="Components/jquery-3.4.1.min.js"></script> 
<script src="Components/user.js"></script> 
</head>
<body>
<div class="container"> 
	<div class="row">  
		<div class="col-6"> 
			<h1>USER DETAILS</h1>
				<form id="formUser" name="formUser" method="post" action="User.jsp">  
					ID:  
 	 				<input id="ID" name="ID" type="text"  class="form-control form-control-sm">
					<br> User Name:   
  					<input id="UserName" name="UserName" type="text" class="form-control form-control-sm">  
  					<br> Password:   
  					<input id="Password" name="Password" type="text"  class="form-control form-control-sm"> 				
					<br> Name:   
  					<input id="Name" name="Name" type="text" class="form-control form-control-sm">   
  					<br> EmailID:   
  					<input id="EmailID" name="EmailID" type="text"  class="form-control form-control-sm">
  					
					
					<br> 
					<input id="btnSave" name="btnSave" type="button" value="SAVE" class="btn btn-primary">  
					<input type="hidden" id="hidUserIDSave" name="hidUserIDSave" value=""> 
				</form>
				
				<div id="alertSuccess" class="alert alert-success"> </div>
				
			   <div id="alertError" class="alert alert-danger"></div>
				
			   <br>
				<div id="divPaymentGrid">
					<%
					UsrService userObj = new UsrService();
						out.print(userObj.readItems());
					%>
				</div>
				
				 
			</div>
		</div>
</div>
 
</body>
</html>