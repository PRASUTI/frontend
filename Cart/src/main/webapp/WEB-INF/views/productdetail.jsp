<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" 
 crossorigin="anonymous">
 <link href='https://fonts.googleapis.com/css?family=Ubuntu+Mono' rel='stylesheet' type='text/css'> -->
 
<title>Product Detail</title>
<style>
.monospaced 
{ 
font-family: 'Ubuntu Mono', monospaced ; 
}
.add-to-cart .btn-qty {
  width: 52px;
  height: 46px;
}
.add-to-cart .btn 
{
 border-radius: 0; 
 }
</style>
</head>
<body>
<div class="container">
<div class="row">
 
 <h1>product description</h1>
 
 <div class="col-md-5">
	<img src="resources/images/product/${product.id}.jpg" alt="${productList.id}" class="image-responsive"/>
   </div>
   <div class="col-md-6">
    <div class="row">
  <div class="col-md-12">
   <h1>${product.productname}</h1>
 </div>
 <div class="row">
 <div class="col-md-12">
  <span class="label label-primary">Vintage</span>
  <span class="monospaced">No.${product.id}</span>
 </div>
</div><!-- end row -->
<!-- <div class="row">
 <div class="col-md-12">
  <p class="description">
   Classic film camera. Uses 620 roll film.
   Has a 2&frac14; x 3&frac14; inch image size.
  </p>
 </div>
</div> -->
<div class="row">
 <div class="col-md-3">
  <span class="sr-only">Four out of Five Stars</span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
  <span class="label label-success">61</span>
 </div>
</div>
<div class="row">
 <div class="col-md-12 bottom-rule">
  <h2 class="product-price">&#x20b9;${product.price}</h2>
 </div>
</div><!-- end row -->

<div class="row add-to-cart">
 <div class="col-md-5 product-qty">
  <!-- <span class="btn btn-default btn-lg btn-qty">
   <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
  </span>
  <input class="btn btn-default btn-lg btn-qty" value="1" />
  <span class="btn btn-default btn-lg btn-qty">
   <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
  </span> -->
 </div>
 <div class="col-md-12">
 <c:if test="${pageContext.request.userPrincipal.name != null }">
 
 <a href="addtocart?id=${product.id}">
  <button class="btn btn-lg btn-brand btn-full-width"> Add to Cart  </button>
    
  </a></c:if>
  <c:if test="${pageContext.request.userPrincipal.name == null }">
  <a href="loginPage">
  <button class="btn btn-lg btn-brand btn-full-width"> Add to Cart  </button>
    
  </a></c:if>
 </div>
</div>

<div class="row">
 <div class="col-md-4 text-center">
  <span class="monospaced"><h1>${msg}</h1></span>
 </div>
<!--  <div class="col-md-4 col-md-offset-1 text-center">
  <a class="monospaced" href="#">Add to Shopping List</a>
 </div> -->
</div><!-- end row -->
<div class="row">
 <div class="col-md-12 bottom-rule top-10"></div>
</div><!-- end row -->

<div class="row">
 <div class="col-md-12 top-10">
  <p>To order by telephone, <a href="tel:18005551212">please call 1-800-555-1212</a></p>
 </div>
</div><!-- end row -->
  <ul class="nav nav-tabs" role="tablist">
 
 <li role="presentation" class="active">
  <a href="#description" aria-controls="description" role="tab" data-toggle="tab">Description</a>
   <p class="top-10">
  ${product.description}
 </p>
 </li>

</ul>
  </div>
 
  <!-- </form> -->
 </div>
</div>
</div>

<script 
     src="https://code.jquery.com/jquery-2.2.2.min.js" 
     integrity="sha256-36cp2Co+/62rEAAYHLmRCPIych47CvdM+uTBJwSzWjI=" 
     crossorigin="anonymous">
</script>	
<script 
     src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" 
     integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" 
     crossorigin="anonymous">
</script>
</body>
</body>
</html>