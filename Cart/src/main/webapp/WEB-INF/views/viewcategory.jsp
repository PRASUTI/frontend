<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>

  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
 
<title>View Category</title>
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
<h3 align="center" style="color: #5cb85c">View Category</h3>
<table class="table table-bordered" width="1200" >
  
  
  <tr>
  <th>S.No</th>
    <th>ID</th>
    <th>Name</th>
    <th>Description</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
  <c:forEach items="${categoryList}" var="category" varStatus="status">
  
  <tr>
 <td>${status.count}</td>
  <td>${category.categoryId}</td>
  <td>${category.name}</td>
  <td>${category.description}</td>
  
  <td><a href="editCategory?categoryId=${category.categoryId}">Edit</a></td>
			<td><a href="deleteCategory?categoryId=${category.categoryId}" onclick="return confirm('Are You Sure? Do you Want Delete Category : ${category.name} ?')">Delete</a></td>
  </tr>
  </c:forEach>
  
  </table>
</body>
</html>