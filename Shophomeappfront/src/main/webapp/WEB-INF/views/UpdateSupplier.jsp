<%@ page language="java" contentType="text/html" import="com.model.Supplier"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Appliance</title>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<form:form action="${pageContext.request.contextPath}//UpdateSupplier" modelAttribute="supplier">
<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">Supplier Module</td>
	</tr>
	<tr>
		<td>Supplier ID</td>
		<td><form:input path="supid"/></td>
	</tr>
	<tr>
		<td>Supplier Name</td>
		<td><form:input path="supname"/></td>
	</tr>
	<tr>
		<td>Supplier Desc</td>
		<td><form:input path="supaddress"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="UpdateSupplier"/>
			<button type="Supplier.jsp"  class="btn btn-lg btn-info">Cancel</button></center>
			</td>
	</tr>
</table>
</form:form>

<table cellspacing="2" align="center">
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