<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="engine1/style.css" /> 
<script type="text/javascript" src="engine1/jquery.js"></script>
<style type="text/css">
.btn{
padding: 9px 12px;
}
</style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ShopKart</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Mens<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Mens T-Shirt</a></li>
          <li><a href="#">Mens Jeans</a></li>
          <li><a href="#">Mens Shirt</a></li>
		  <li><a href="#">Formal Pants</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Womens<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Womens Sarees</a></li>
          <li><a href="#">Womens Jeans</a></li>
          <li><a href="#">Womens Lehangas</a></li>
		  <li><a href="#">Womens T-shirt</a></li>
        </ul>
      </li>
    </ul>
	 <form class="navbar-form navbar-left">
  <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
</form>
    <ul class="nav navbar-nav navbar-right">
    <c:if test="${isLoggedInAdmin == 'true'}">
    	<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="addcategory">Add Category</a></li>
          <li><a href="viewcategory">View Category</a></li>
        </ul>
      </li>
	  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Supplier<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="addsupplier">Add Supplier</a></li>
          <li><a href="viewsupplier">View Supplier</a></li>
        </ul>
      </li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Product<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="addproduct">Add Product</a></li>
          <li><a href="viewproduct">View Product</a></li>
        </ul>        
      </li>
      </c:if>
       <c:if test="${isLoggedInUser == 'true'}">
	  <li><a href="myCart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
	  </c:if>
	  <c:if test="${isLoggedInAdmin == 'true'}">
	  <li><a href="admincart"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
	  </c:if>
	  <c:if test="${pageContext.request.userPrincipal.name == null }">
      <li><a href="signupPage"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="loginPage"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name != null }">
      <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </c:if>
    </ul>
  </div>
</nav>
</body>
</html>