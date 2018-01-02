<%@ page language="java" contentType="text/html" import="com.model.Category"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
<title>Category-HOMEAPPLIANCE</title>
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>
<table cellspacing="2" align="center" >
<tr bgcolor="gray">
	<td>CATEGORY ID:</td>
	<td>CATEGORY NAME:</td>
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