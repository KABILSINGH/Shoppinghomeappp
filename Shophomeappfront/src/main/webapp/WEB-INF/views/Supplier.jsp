<%@ page language="java" contentType="text/html" import="com.model.Supplier"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<title>Supplier-HomeAppliance</title>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<table cellspacing="2" align="center" >
<tr bgcolor="gray">
	<td>Supplier ID</td>
	<td>Supplier Name</td>
	<td>Supplier Address</td>
	<td>Operation</td>
</tr>
<c:forEach items="${supplierList}" var="supplier">
	<tr bgcolor="cyan">
		<td>${supplier.supid}</td>
		<td>${supplier.supname}</td>
		<td>${supplier.supaddress}</td>
		<td>
			<a href="<c:url value="deleteSupplier/${supplier.supid}"/>">DELETE</a>/
			<a href="<c:url value="updateSupplier/${supplier.supid}"/>">UPDATE</a>
		</td>
	</tr>
</c:forEach>

</table>

</body>
</html>