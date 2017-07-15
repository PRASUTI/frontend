<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
<style>
.jumbotron {
	background-color: white;
	color: #5cb85c;
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
			
			<h3 align="center" style="color: #5cb85c">Edit Category</h3>
			<form action="afterEditCategory" method="post" class="form-horizontal">
			<div style="color:#5cb85c" class="form-group">
					<label><b>Category Id:</b></label> 
					<input type="text" id="categoryid" name="categoryId" placeholder="Enter Category id"  class="form-control" value="${category.categoryId}" readonly="true">
				</div>
				<br>
				<div style="color:#5cb85c" class="form-group">
					<label><b>Category Name:</b></label> 
					<input type="text" id="categoryname" name="name" placeholder="Enter Category Name"  class="form-control" value="${category.name}">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					<label><b>Category Details:</b></label> 
					<input type="text" id="categorydescription" name="description" placeholder="Enter Category Details"  class="form-control" value="${category.description}">
				</div>
				<br>
				<center><button style="background-color:#5cb85c;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				</center>
				</form>
				</div>
				</div>
				</div>
</body>
</html>