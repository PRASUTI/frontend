<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<script type="text/javascript" src="engine1/jquery.js"></script> -->
<!-- <style>
body {
  position: relative;
  background-image: url(https://res.cloudinary.com/dg1rxpors/image/upload/v1492590359/preview_t6cyhn.jpg);
}
</style> -->

</head>
<body>
<%@ include file="menubar.jsp" %>

<c:choose>
<c:when test="${isUserClickedLoginButton == 'true' }">
<%@ include file="login.jsp" %>

</c:when>
<c:when test="${isUserClickedSignUpButton == 'true' }">
<%@ include file="signup.jsp" %>

</c:when>
<c:when test="${isUserClickedProductButton == 'true' }">
<%@ include file="productdetail.jsp" %>

</c:when>

<c:otherwise>
<%@ include file="carousel.jsp" %>
<%@ include file="productlist.jsp" %>

</c:otherwise>
</c:choose>
<%-- <%@include file="/WEB-INF/views/footer.jsp" %> --%>
</body>
</html>