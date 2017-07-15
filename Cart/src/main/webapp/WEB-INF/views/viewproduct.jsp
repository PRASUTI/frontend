<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
 
<title>View Product</title>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}
th {
    background-color: #4CAF50;
    color: white;
}
th, td {
    text-align: left;
    padding: 15px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
</head>
<body>
<br>
<br>
<br>

<h3 align="center" style="color: #5cb85c">View Product</h3>
<table class="table table-bordered" width="1200" align="center" >
  
  
  <tr>
  	<th>S.No</th>
    <th>ID</th>
    <th>Product image</th>
    <th>Product name</th>
    <th>Description</th>
	<th>Brand</th>
	<th>Categoryname</th>
	<th>Manufacturer</th>
	<th>Price</th>	
	<th>Stock</th>
	<th>Edit</th>
	<th>Delete</th>
  </tr>
    <c:forEach items="${productList}" var="product" varStatus="status">
  
  <tr>
  <td>${status.count}</td>
  <td>${product.id}</td>
  <td><img src="resources/images/product/${product.id}.jpg"/></td>
  <td>${product.productname}</td>
  <td>${product.description}</td>
  <td>${product.brand}</td>
  <td>${product.categoryname}</td>
  <td>${product.manufacturer}</td>
  <td>${product.price}</td>
  <td>${product.stock}</td>
  
  <td><a href="editProduct?id=${product.id}">Edit</a></td>
			<td><a href="deleteProduct?id=${product.id}" onclick="return confirm('Are You Sure? Do you Want Delete Product : ${product.productname} ?')">Delete</a></td>
  </tr>
  </c:forEach>
</table>
</body>
</html>