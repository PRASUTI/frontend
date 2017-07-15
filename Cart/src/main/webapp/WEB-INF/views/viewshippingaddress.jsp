<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shipping Address</title>
<style>
<style>
  .button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.title{
    text-shadow: 2px 2px 0px rgba(0, 0, 0, 0.4) !important;  
	
}

.divider-title{
    border:1px solid #dddddd;
}
h4{
    	font-weight: 600;
	}
	p{
		font-size: 20px;
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
</style>
</head>
<body>
<br>
  <br>
 
		<div class="container">
		 <a href="newshipping" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-plus"></span> Add 
        </a>
<h1 class="text-center text-primary title">Shipping Address</h1>
    <hr class="divider-title">
	<c:forEach items="${shippingList}" var="shipping" >
	<div class="row">
    	
  		<div class="col-md-3 col-sm-6">
  		
    		<div class="thumbnail">
      			
      			<!-- <h4>Shipping Id:</h4> -->
      			
      			<!-- <p>UserId:</p>
				<p>EmailId:</p> -->
				<p>User Name:${shipping.username}</p>
				<p>Address:${shipping.address}</p>
      			<p>Zipcode:${shipping.zipcode}</p>
				<p>Contact Number:${shipping.mobile}</p>
				<br>
				<a href="editShipping?shippingId=${shipping.shippingId}" style="float:right;"><span class="glyphicon glyphicon-pencil"></span></a>
				<a href="deleteShipping?shippingId=${shipping.shippingId}" style="float:right;margin-right: 2em;"><span class="glyphicon glyphicon-trash"></span></a>
				<a href="shippingAddress?shippingId=${shipping.shippingId}" class="btn btn-primary">Deliver Here</a><br><br>
      			</div>
    		</div>
  		</div>
  		</c:forEach>
  		</div>
  		
  		
</body>
</html>