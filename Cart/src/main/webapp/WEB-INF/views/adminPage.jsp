<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/views/menubar.jsp"%>

<c:choose>

	

	<c:when test="${isAdminClickedaddcategoryButton== 'true' }">
		<%@ include file="category.jsp"%>
	</c:when>

	<c:when test="${isAdminClickedaddproductButton== 'true' }">
		<%@ include file="product.jsp"%>
	</c:when>

	<c:when test="${isAdminClickedaddsupplierButton== 'true' }">
		<%@ include file="supplier.jsp"%>
	</c:when>
	<c:when test="${isAdminClickedViewCategoryButton == 'true' }">
		<%@ include file="viewcategory.jsp"%>
	</c:when>
	<c:when test="${isAdminClickedViewSupplierButton == 'true' }">
		<%@ include file="viewsupplier.jsp"%>
	</c:when>
		<c:when test="${isAdminClickedViewProductButton == 'true' }">
		<%@ include file="viewproduct.jsp"%>
	</c:when>
	<c:when test="${editCategoryClicked == 'true' }">
		<%@ include file="editcategory.jsp"%>
	</c:when>
	<c:when test="${editSupplierClicked == 'true' }">
		<%@ include file="editsupplier.jsp"%>
	</c:when>
	<c:when test="${editProductClicked == 'true' }">
		<%@ include file="editproduct.jsp"%>
	</c:when>
	<c:when test="${isAdminClickedCartButton == 'true' }">
		<%@ include file="admincart.jsp"%>
	</c:when>
<c:otherwise>
<h2>Welcome Admin!!!</h2>
</c:otherwise>

</c:choose>


