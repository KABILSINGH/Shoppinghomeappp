<%@ page language="java" contentType="text/html" import="com.model.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<title>PRODUCT-HOMEAPP</title>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<form:form action="AddProduct" modelAttribute="product" enctype="multipart/form-data" >
<div class="container">
<table class="table table-bordered table-hover" >
<thead>
<tr bgcolor="gray">
	<th>PRODUCT ID:</th>
	<th>PRODUCT NAME:</th>
	<th>PRODUCT DESCRIPTION:</th>
	<th>PRODUCT STOCK:</th>
	<th>PRODUCT PRICE:</th>
	<th>CATEGORY ID:</th>
	<th>SUPPLIER ID:</th> 
	<th>IMAGES:</th>
	<th>OPERATION:</th>
</tr>
</thead>
<tbody>
<c:forEach items="${productList}" var="product">
	<tr bgcolor="cyan">
		<td>${product.pid}</td>
		<td>${product.pname}</td>
		<td>${product.pdesc}</td>
		<td>${product.pstock}</td>
		<td>${product.pprice}</td>
		<td>${product.catname}</td>
		<td>${product.supid}</td>
		<td>
		  <a href="productDetails/${product.pid }"> 
		<img src="<c:url value="/resources/Images/${product.pid }.jpg"/>" width="100px" height="100px">
		 </a>  
		</td>
		<td>
			<a href="<c:url value="deleteProduct/${product.pid}"/>">DELETE</a>
			<a href="<c:url value="updateProduct/${product.pid}"/>">UPDATE</a>
		</td>
	</tr>
</c:forEach>
</tbody>
</table>
</form:form>
</body>
</html>