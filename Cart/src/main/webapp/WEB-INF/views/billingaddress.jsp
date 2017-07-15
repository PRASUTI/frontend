<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Billing</title>
<style>
  body {
    margin-top: 20px;
}
  </style>
</head>
<body>
 <div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <address>
                        <strong>${shipping.address}</strong>
                        
                        <br>
                        <abbr title="Phone">P:</abbr> (213) 484-6829
                    </address>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Date: 1st November, 2013</em>
                    </p>
                    <p>
                        <em>Receipt Id: 34522677W</em>
                    </p>
					<p><em>Shipping Id: ${shipping.shippingId}</em></p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
                </span>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Product</th>
                            <th>Quantity</th>
                            <th class="text-center">Price</th>
                            <th class="text-center">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${cartList}" var="cart">
                        <tr>
                            <td class="col-md-9"><em>${cart.productName}</em></h4></td>
                            <td class="col-md-1" style="text-align: center">${cart.quantity} </td>
                            <td class="col-md-1 text-center">${cart.price}</td>
                            <td class="col-md-1 text-center">${cart.total }</td>
                        </tr>
                       </c:forEach>
                        
                            <td>   </td>
                            <td>   </td>
                            <td class="text-right"><h4><strong>Total: </strong></h4></td>
                            <td class="text-center text-danger"><h4><strong>${total}</strong></h4></td>
                        </tr>
                    </tbody>
                </table>
                </div>
                
                <button type="button" class="btn btn-success btn-lg btn-block">
                    Pay <span class="glyphicon glyphicon-chevron-right"></span>
                </button></td>
            </div>
        </div>
    </div>
</body>
</html>