<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
 
<title>View Supplier</title>
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

<h3 align="center" style="color: #5cb85c">View Supplier</h3>
<table class="table table-bordered" width="1200" align="center" >
  
  
  <tr>
  <th>S.No</th>
    <th>ID</th>
    <th>Name</th>
    <th>Address</th>
	<th>email id</th>
	<th>Phone Number</th>
	<th>Edit</th>
    <th>Delete</th>
  </tr>
  <c:forEach items="${supplierList}" var="supplier" varStatus="status">
  
  <tr>
 <td>${status.count}</td>
  <td>${supplier.id}</td>
  <td>${supplier.name}</td>
  <td>${supplier.address}</td>
  <td>${supplier.emailid}</td>
  <td>${supplier.phonenumber}</td>
 <td><a href="editSupplier?id=${supplier.id}">Edit</a></td>
			<td><a href="deleteSupplier?id=${supplier.id}" onclick="return confirm('Are You Sure? Do you Want Delete Supplier : ${supplier.name} ?')">Delete</a></td>
  </tr>
  </c:forEach>
  </table>
</body>
</html>