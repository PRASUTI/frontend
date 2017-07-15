<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/views/menubar.jsp" %>

<c:choose>
	<c:when test="${not empty viewShippingAddressClicked =='true'}">    
     
      <%@include file="/WEB-INF/views/viewshippingaddress.jsp" %>
     </c:when>
     
     <c:when test="${isUserClickedNewShippingAddressButton == 'true' }">
		<%@ include file="/WEB-INF/views/addshippingaddress.jsp"%>
	</c:when>
	
	<c:when test="${EditShippingClicked == 'true' }">
		<%@ include file="/WEB-INF/views/editshippingaddress.jsp"%>
	</c:when>
     
     <c:when test="${Successfully == 'true' }">
		<%@ include file="/WEB-INF/views/paymentmode.jsp"%>
	</c:when>
	
	<c:when test="${CreditCardClicked == 'true' }">
		<%@ include file="/WEB-INF/views/creditcard.jsp"%>
	</c:when>
	
	<c:when test="${CashOnDeliveryClicked == 'true' }">
		<%@ include file="/WEB-INF/views/cashondelivery.jsp"%>
	</c:when>
	
	<c:when test="${BillingAddressClicked == 'true' }">
		<%@ include file="/WEB-INF/views/billingaddress.jsp"%>
	</c:when>
	
	<c:when test="${ProductDetails == 'true' }">
		<%@ include file="productdetail.jsp"%>
	</c:when>
	<c:when test="${isUserClickedCartButton == 'true' }">
		<%@ include file="usercart.jsp"%>
	</c:when>
	
	
	
	<c:otherwise>
			<h3 style="margin-left: 35%;">Welcome User !!</h3>
			<%@ include file="productlist.jsp" %>
		</c:otherwise>
		
		
</c:choose>


