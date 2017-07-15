<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
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
			
			<h3 align="center" style="color: #5cb85c">Edit Product</h3>

			 <form action="afterEditProduct" method="post" class="form-horizontal" enctype="multipart/form-data">
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Product Id:</b></label>
					<input type="text" id="productid" name="id" placeholder="Enter Product Id"  class="form-control" value="${product.id}" readonly="true">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Product Name:</b></label>
					<input type="text" id="productname" name="productname" placeholder="Enter Product Name"  class="form-control" value="${product.productname}">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Product Description:</b></label>
					<input type="text" id="productdescription" name="description" placeholder="Enter Product Description"  class="form-control" value="${product.description}">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					<label><b>Category Name:</b></label> 
					<select style="width: 100%;" class="form-control" id="categoryname" name="categoryname"  value="${product.categoryname}">
			
			<option>Select Category</option>
			<c:forEach items="${categoryList}" var="category">					
			<option value="${category.name}">${category.name}</option>			
			</c:forEach>
			</select>	
				</div>
				<br>
				<div style="color:#5cb85c" class="form-group">
					<label><b>Brand:</b></label>  
					<input type="text" id="brand" name="brand" placeholder="Enter Brand"  class="form-control" value="${product.brand}">
				</div>
				<br>
				<div style="color:#5cb85c" class="form-group">
					<label><b>Supplier:</b></label>  
					<select style="width: 100%;" class="form-control" id="suppliername" name="manufacturer" value="${product.manufacturer}">
			
			<option>Select Supplier</option>
			<c:forEach items="${supplierList}" var="supplier">					
			<option value="${supplier.name}">${supplier.name}</option>			
			</c:forEach>
			
			</select>	
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Price:</b></label>
					<input type="text" id="price" name="price" placeholder="Enter Price"  class="form-control" value="${product.price}">
				</div>
				<br>
				<div style="color: #5cb85c" class="form-group">
					 <label><b>Stock:</b></label>
					<input type="text" id="stock" name="stock" placeholder="Enter Stock"  class="form-control" value="${product.stock}">
				</div>
				<br>
				
				<%-- <div class="form-group" style="color: #5cb85c">
			
			File to upload:
            <input type="file" name="image" id="file" value="${product.image}" >
            </div> --%>
			
				<center>
				<button style="background-color: #5cb85c;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
				</center>
				</form>
				</div>
				</div>
				</div>
</body>
</html>