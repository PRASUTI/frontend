<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
  <script>
function goBack() {
    window.history.back();
}
</script>
<title>Cart</title>
</head>
<body>
<br>
<br>
<br>
<div class="container">
    <div class="row">
   
        <div class="col-sm-12 col-md-10 col-md-offset-1">
         
            <table class="table table-hover">
                <thead>
                    <tr>
					<th>UserDetails</th>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead><c:forEach items="${cartList}" var="cart">
                <tbody>
                    <tr>
					<td class="col-sm-8 col-md-6">
                        <div class="media">
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Userid:${cart.userid }</a></h4>
                                <h4 class="media-heading"><a href="#">User emailid:${cart.emailid }</a></h4>
                                
                                </div>
                                </div>
                                </td>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="resources/images/product/${cart.productid}.jpg" style="width: 80px; height: 80px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${cart.id}</a></h4>
								<h4 class="media-heading"><a href="#">${cart.productName}</a></h4>
                                <%-- <h5 class="media-heading"> by <a href="#">${product.brand}</a></h5> --%>
                                <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <a href="decreaseQty?id=${cart.id}"><span class="glyphicon glyphicon-minus"> </span></a>
					<input type="text" name="quantity" value="${cart.quantity}" min="1" id="quantity" style="width: 26px; text-align: center;" />
					<a href="increaseQty?id=${cart.id}"><span class="glyphicon glyphicon-plus"> </span></a>
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>&#x20b9;${cart.price}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>&#x20b9;${cart.total }</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <a href="deleteCart?id=${cart.id}"><button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></a></td>
						
                    </tr>
                    <!--<tr>
                        <td class="col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Product name</a></h4>
                                <h5 class="media-heading"> by <a href="#">Brand name</a></h5>
                                <span>Status: </span><span class="text-warning"><strong>Leaves warehouse in 2 - 3 weeks</strong></span>
                            </div>
                        </div></td>
                        <td class="col-md-1" style="text-align: center">
                        <input type="email" class="form-control" id="exampleInputEmail1" value="2">
                        </td>
                        <td class="col-md-1 text-center"><strong>$4.99</strong></td>
                        <td class="col-md-1 text-center"><strong>$9.98</strong></td>
                        <td class="col-md-1">
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </button></td>
                    </tr>-->
                </tbody></c:forEach>
                <tfoot>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
						<td>   </td>
						<td>
                        <td><h3>Grand Total</h3></td>
                        <td class="text-right"><h3>&#x20b9;${total}</h3></td>
                    </tr>
                    <tr>
                        <td>     </td>
                        <td>     </td>
                        <td>     </td>
						<td>     </td>
                        <td>
                        <button onclick="goBack()" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></td>
                        <td>
                        <a href="proceed"><button type="button" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></a></td>
                    </tr>
                </tfoot>
            </table>
            </div>
            
            </div>
            </div>
           
			</body>
</html>