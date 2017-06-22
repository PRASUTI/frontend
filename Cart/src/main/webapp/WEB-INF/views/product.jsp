<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>product</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script>
  function formProduct(){
		// Make quick references to our fields
		
		var productname = document.getElementById('productname');
		var productdescription = document.getElementById('productdescription');
		var category = document.getElementById('categoryname');
		var brand = document.getElementById('brand');
		var suppliername = document.getElementById('suppliername');
		var price = document.getElementById('price');
		var stock = document.getElementById('stock');
		// Check each input in the order that it appears in the form!
		
					if (notEmpty(productname, "Product Name Should not be empty")) {
							if (isAlphabet(productname,
									"Please enter only letters for Product Name")) {
								if (notEmpty(productdescription,"Product Description Should not be empty")){
								         if (isAlphabet(productdescription,
								        "Please enter only letters for Product Description")) {
								        	 if (notEmpty(categoryname,"Category Should not be empty")){
								        		 if(notEmpty(suppliername, "Supplier Name should not be empty")){
								        			 if (notEmpty(brand,"Brand Should not be empty")){
												         if (isAlphabet(brand,
												        "Please enter only letters for Brand")) {
										if (notEmpty(price,
												"Price Should not be empty")) {
											if (isNumeric(price,
													"Please enter only number for Price")) {
														if (notEmpty(stock,
																"Stock Should not be empty")) {
															if (isNumeric(
																	stock,
																	"Please enter a valid Stock")) {
																if(notEmpty(file, "File should not be empty")){
																return true;
															}
														}
													}
												}
											}
										}
									}
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
	function isAlphanumeric(elem, helperMsg) {
		var alphaExp = /^[0-9a-zA-Z]+$/;
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
<div class="container" >
<div class="well">
		<div class="jumbotron" style="background-color:#EAECEE">
			
			<h3 align="center" style="color: #5cb85c">Add a new Product</h3>

			 <form action="newProduct" method="post" onsubmit="return formProduct()" class="form-horizontal" enctype="multipart/form-data">
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Product Name:</b></label>
					<input type="text" id="productname" name="productname" placeholder="Enter Product Name"  class="form-control">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Product Description:</b></label>
					<input type="text" id="productdescription" name="description" placeholder="Enter Product Description"  class="form-control">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					<label><b>Category Name:</b></label> 
					<select style="width: 100%;" class="form-control" id="categoryname" name="categoryname">
			
			<option>Select Category</option>
			<c:forEach items="${categoryList}" var="category">					
			<option value="${category.name}">${category.name}</option>			
			</c:forEach>
			
			</select>	
				</div>
				<br>
				<div style="color:#5cb85c" class="form-group">
					<label><b>Brand:</b></label>  
					<input type="text" id="brand" name="brand" placeholder="Enter Brand"  class="form-control">
				</div>
				<br>
				<div style="color:#5cb85c" class="form-group">
					<label><b>Supplier:</b></label>  
					<select style="width: 100%;" class="form-control" id="suppliername" name="manufacturer">
			
			<option>Select Supplier</option>
			<c:forEach items="${supplierList}" var="supplier">					
			<option value="${supplier.name}">${supplier.name}</option>			
			</c:forEach>
			
			</select>	
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Price:</b></label>
					<input type="text" id="price" name="price" placeholder="Enter Price"  class="form-control">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Stock:</b></label>
					<input type="text" id="stock" name="stock" placeholder="Enter Price"  class="form-control">
				</div>
				<br>
				
				<div class="form-group" style="color: #5cb85c">
			
			File to upload:
            <input type="file" name="file" id="file" >
            </div>
			
				<center>
				<button style="background-color: #5cb85c;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				</center>
				${message}
				</form>
				</div>
				</div>
				</div>
		<%-- <div class="container">
		<div class="well">
		<div class="jumbotron" style="background-color:#EAECEE">
		 <form action="newProduct" method="post" onsubmit="return formProduct()" class="form-horizontal" enctype="multipart/form-data">
		<h3 align="center" style="color: #5cb85c">Add a new Product</h3>
		<div style="color: #5cb85c" class="form-group">
			 <label><b>Name:</b></label>				
			 <input type="text" id="productname" name="productname" class="form-control">
			</div>
			
			<div class="form-group">
			<label class="control-label col-sm-2">product description</label>
			
				<input type="text" id="productdescription" name="description">
			
			</div>
			
			<div class="form-group">
			<label class="control-label col-sm-2">category name</label>
			<select style="width: 15%;" class="form-control" id="categoryname" name="categoryname">
			
			<option>Select Category</option>
			<c:forEach items="${categoryList}" var="category">					
			<option value="${category.name}">${category.name}</option>			
			</c:forEach>
			
			</select>	
				
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2">Brand</label>
				<input type="text" name="brand">
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2">manufacturer</label>
			<select style="width: 15%;" class="form-control" id="suppliername" name="manufacturer">
			
			<option>Select Supplier</option>
			<c:forEach items="${supplierList}" var="supplier">					
			<option value="${supplier.name}">${supplier.name}</option>			
			</c:forEach>
			
			</select>	
				
			</div>
			
			
			
			<div class="form-group">
			<label class="control-label col-sm-2">price</label>
			
				<input type="text" id="price" name="price">
			
			</div>
			<div class="form-group">
			<label class="control-label col-sm-2">stock</label>
				<input type="text" id="stock" name="Stock">
			</div>
			
			<div class="form-group">
			
			File to upload:
            <input type="file" name="file" id="file" >
            </div>
			
			
		<div>
			<input type="submit" value="addProduct">
		</div>
		${message}
		</form>
		</div>
		</div>
		</div>
		</div> --%>
		
</body>
</html>