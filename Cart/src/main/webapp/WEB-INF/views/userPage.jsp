<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/views/menubar.jsp" %>

<c:choose>

	<c:when test="${not empty isLoggedInUser}">
		hai
	</c:when>
	<c:otherwise>
			<h1 style="margin-left: 35%;">UUUUUSSSSEEEEEEEEEEERRRRRRRRRRRRRS !!</h1>
		</c:otherwise>
</c:choose>

