<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier</title>
<script>
function formSupplier(){
	// Make quick references to our fields
	
	var suppliername = document.getElementById('suppliername');
	var contactnumber = document.getElementById('contactnumber');
	var email = document.getElementById('email');
	var address = document.getElementById('address');
	// Check each input in the order that it appears in the form!
	
				if (notEmpty(suppliername, "Supplier Name Should not be empty")) {
						if (isAlphabet(suppliername,
								"Please enter only letters for Supplier Name")) {
							if (notEmpty(contactnumber,"Contact Number Should not be empty")){
							         if (isNumeric(contactnumber,
							        "Please enter only letters for Contact Number")) {
							        	 if (notEmpty(email,
											"EmailId Should not be empty")) {
												if(emailValidator(email, "Please Enter a valid Email id")){
													if (notEmpty(address, "Address Should not be empty")) {
														if (isAlphabet(address,
																"Please enter only letters for Address")) {
															return true;
														}
													}
												}
											}
							         }
							}
						}}
	
	return false;
}
function notEmpty(elem, helperMsg) {
	if (elem.value.length == 0) {
		alert(helperMsg);
		elem.focus(); // set the focus to this input
		return false;
	}
	return true;
}
function isAlphabet(elem, helperMsg) {
	var alphaExp = /^[a-z A-Z]+$/;
	if (elem.value.match(alphaExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
function isNumeric(elem, helperMsg) {
	var numericExpression = /^[0-9]+$/;
	if (elem.value.match(numericExpression)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}
function emailValidator(elem, helperMsg) {
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	if (elem.value.match(emailExp)) {
		return true;
	} else {
		alert(helperMsg);
		elem.focus();
		return false;
	}
}

</script>
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
			
			<h3 align="center" style="color: #5cb85c">Add a new supplier</h3>

			 <form action="newSupplier" method="post" onsubmit="return formSupplier()" class="form-horizontal">
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Name:</b></label>
					<input type="text" id="suppliername" name="suppliername" placeholder="Enter Supplier Name"  class="form-control">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Phone Number:</b></label>
					<input type="text" id="contactnumber" name="phonenumber" placeholder="Enter Phone Number"  class="form-control">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					<label><b>Email Id:</b></label> 
					<input type="text" id="email" name="email" placeholder="Enter Email Id"  class="form-control">
				</div>
				<br>
				<div style="color:#5cb85c" class="form-group">
					<label><b>Address:</b></label>  
					<input type="text" id="address" name="address" placeholder="Enter Address"  class="form-control">
				</div>
				<br>
				<center>
				<button style="background-color: #5cb85c;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				</center>
				${message}
				</form>
				</div>
				</div>
				</div>
</body>
</html>