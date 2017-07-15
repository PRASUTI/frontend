<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edit Shipping</title>
<style>
  .center {
    margin: auto;
    width: 60%;
    <!--border: 3px solid #73AD21;-->
    padding: 10px;
}
</style>
</head>
<body>
<div class="center">
  <form action="afterEditShipping" method="post"  role="form" class="col-md-8">
	  <div class="well">
	 <center><h4>Edit Shipping Address</h4></center>
                <div class="form-group">
                    <label class="form-label">Shipping Id:</label>
                    <input type="name" class="form-control" id="shippingid" value="${shipping.shippingId}" name="shippingId" readonly="true">
                </div>

   <div class="form-group">
    <label for="name">User Name</label>
    <input type="text" name="username" class="form-control" id="username" placeholder="Enter username" value="${shipping.username}">
  </div>
  
   <div class="form-group">
    <label for="address"> Address</label>
    <input type="text"  class="form-control" id="address" name="address" placeholder="Enter your address"  value="${shipping.address}">
  </div>
  <div class="form-group">
    <label for="zipcode">Zipcode</label>
    <input type="number" class="form-control" id="zipcode" name="zipcode" placeholder="Enter your zipcode"  value="${shipping.zipcode}">
  </div>
  <div class="form-group">
    <label for="mobilenumber">Contact Number</label>
    <input type="number" class="form-control" id="contactnumber" name="mobile" placeholder="Enter your Contact Number"  value="${shipping.mobile}">
  </div></div>
  
 <center><button style="background-color:#5cb85c;color:white" type="submit" value="submit" class="btn btn-default">Upload</button>
	</center>				
</form>
</div>
</body>
</html>