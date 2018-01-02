<%@ page language="java" contentType="text/html" import="com.model.Category"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME APPLIANCE</title>
</head>
<body>

<jsp:include page="AdminHeader.jsp"></jsp:include>

<form:form action="${pageContext.request.contextPath}//UpdateCategory" modelAttribute="category" method="post">
<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">Category Module</td>
	</tr>
	<tr>
		<td>Category ID:</td>
		<td><form:input path="catid"/></td>
	</tr>
	<tr>
		<td>Category Name</td>
		<td><form:input path="catname"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="UpdateCategory"/>
			<button type="Category.jsp"  class="btn btn-default">Cancel</button></center>
		</td>
	</tr>
</table>
</form:form>

<table cellspacing="2" align="center">
<tr bgcolor="gray">
	<td>Category ID</td>
	<td>Category Name</td>
	<td>Operation</td>
</tr>
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
</table>
</body>
</html>