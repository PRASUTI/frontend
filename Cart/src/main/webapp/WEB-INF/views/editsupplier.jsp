<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>
<style>
.jumbotron {
	background-color: white;
	color: #27A4F7;
}
button {
	background-color: white;
	color: #27A4F7;
	width: 180px;
}
}
}</style>
</head>
<body>
<div class="container" >
<div class="well">
		<div class="jumbotron" style="background-color:#EAECEE">
			
			<h3 align="center" style="color: #5cb85c">Edit Supplier</h3>

			 <form action="afterEditSupplier" method="post" class="form-horizontal">
				
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Supplier Id</b></label>
					<input type="text" id="supplierid" name="id" placeholder="Enter Supplier id"  class="form-control" value="${supplier.id}" readonly="true">
				</div>
				<br><div style="color: #5cb85c" class="form-group">
					 <label><b>Name:</b></label>
					<input type="text" id="suppliername" name="name" placeholder="Enter Supplier Name"  class="form-control" value="${supplier.name}">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Phone Number:</b></label>
					<input type="text" id="contactnumber" name="phonenumber" placeholder="Enter Phone Number"  class="form-control" value="${supplier.phonenumber}">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					<label><b>Email Id:</b></label> 
					<input type="text" id="email" name="emailid" placeholder="Enter Email Id"  class="form-control" value="${supplier.emailid}">
				</div>
				<br>
				<div style="color:#5cb85c" class="form-group">
					<label><b>Address:</b></label>  
					<input type="text" id="address" name="address" placeholder="Enter Address"  class="form-control" value="${supplier.address}">
				</div>
				<br>
				<center>
				<button style="background-color: #5cb85c;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				</center>
				
				</form>
				</div>
				</div>
				</div>
</body>
</html>