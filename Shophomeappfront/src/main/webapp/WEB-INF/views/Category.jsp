<%@ page language="java" contentType="text/html" import="com.model.Category"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<title>Category-HOMEAPPLIANCE</title>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<div class="container">
<table class="table table-bordered table-hover" >
<thead>
<tr bgcolor="gray">
	<th>CATEGORY ID:</th>
	<th>CATEGORY NAME:</th>
	<th>OPERATION</th>
</tr>
</thead>
<tbody>
<c:forEach items="${categoryList}" var="category">
	<tr bgcolor="cyan">
		<td>${category.catid}</td>
		<td>${category.catname}</td>
		<td>
			<a href="<c:url value="deleteCategory/${category.catid}"/>">DELETE</a>
			<a href="<c:url value="updateCategory/${category.catid}"/>">UPDATE</a>
		</td>
	</tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>