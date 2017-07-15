<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Product</title>
<style>
h4{
    	font-weight: 600;
	}
	p{
		font-size: 12px;
		margin-top: 5px;
	}
	.price{
		font-size: 30px;
    	margin: 0 auto;
    	color: #333;
	}
	.right{
		float:right;
		border-bottom: 2px solid #4B8E4B;
	}
	.thumbnail{
		opacity:0.70;
		-webkit-transition: all 0.5s; 
		transition: all 0.5s;
	}
	.thumbnail:hover{
		opacity:1.00;
		box-shadow: 0px 0px 10px #4bc6ff;
	}
	.line{
		margin-bottom: 5px;
	}
	@media screen and (max-width: 770px) {
		.right{
			float:left;
			width: 100%;
		}
	}
</style>
</head>
<body>
<%-- <div class="container">
  <div class="row">
 <c:forEach items="${productList}" var="product">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="productDetails?id=${product.id}">
          <img src="resources/images/product/${product.id}.jpg" alt="${product.productname}" style="width:50%" "height:50%"\>
          <div class="caption">
           <center><h3>${product.productname}</h3>
		   <p> &#x20b9;${product.price}</p>
		   <p class="text-success">Hurry!!!</p></center>
          </div>
        </a>
      </div>
    </div>
    </c:forEach>
    
    
  </div>
</div> --%>
<div class="container">
	<div class="row">
    	<!-- BEGIN PRODUCTS -->
    	<c:forEach items="${productList}" var="product">
  		<div class="col-md-3 col-sm-6">
    		<span class="thumbnail">
    		<a href="productDetails?id=${product.id}">
      			<img src="resources/images/product/${product.id}.jpg" alt="${product.productname}">
      			<h4>${product.productname}</h4>
      			<div class="ratings">
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star-empty"></span>
                </div>
      			<p>${product.description} </p>
      			<hr class="line">
      			<div class="row">
      				<div class="col-md-6 col-sm-6">
      					<p class="price">&#x20b9;${product.price}</p>
      				</div>
      				<div class="col-md-6 col-sm-6">
      					<button class="btn btn-success right" > BUY ITEM</button>
      				</div>
      				
      				</div>
      				</a>
      				</span>
      				</div>
      				</c:forEach>
      				
      			</div>
  		</div>
</body>
</html>