<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
 <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
  <script>
function formCategory(){
	// Make quick references to our fields
	
	var productname = document.getElementById('productname');
	var productdescription = document.getElementById('productdescription');
	// Check each input in the order that it appears in the form!
	
				if (notEmpty(categoryname, "Category Name Should not be empty")) {
						if (isAlphabet(categoryname,
								"Please enter only letters for Category Name")) {
							if (notEmpty(categorydescription,"Category Description Should not be empty")){
							         if (isAlphabet(categorydescription,
							        "Please enter only letters for Category Description")) {
															return true;
														}
													}
												}
											}
								
	
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
</style>
</head>
<body>
<br>
   <br>
   <br>
	<div class="container" style="color: #1F618D"> 
		<div class="well">
		<div class="jumbotron" style="background-color:#EAECEE"> 
			
			<h3 align="center" style="color: #5cb85c">Create a new category</h3>
			<form action="newCategory" method="post" onsubmit="return formCategory()" class="form-horizontal">
				<div style="color:#5cb85c" class="form-group">
					<label><b>Category Name:</b></label> 
					<input type="text" id="categoryname" name="name" placeholder="Enter Category Name"  class="form-control">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					<label><b>Category Details:</b></label> 
					<input type="text" id="categorydescription" name="description" placeholder="Enter Category Details"  class="form-control">
				</div>
				<br>
				<center><button style="background-color:#5cb85c;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				</center>
				${message}
				</form>
				</div>
				</div>
				</div>
</body>
</html>