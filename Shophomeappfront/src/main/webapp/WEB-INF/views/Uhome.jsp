<%@ page language="java" contentType="text/html" import="com.model.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table, td, th {    
    border: 1px solid #ddd;
    text-align: left;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    padding: 15px;
}

</style> 

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf=8">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" >
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

 <jsp:include page="UserHeader.jsp"></jsp:include>
 
 <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="alert alert-info">
               <center> <h4>Product List.</h4></center></div>
            <div class="alert alert-danger" style="display:none;">
                <span class="glyphicon glyphicon-ok"></span></div>
           



<table class="table table-hover">
	
	<table cellspacing="2" align="center">
<tr bgcolor="gray">
	
	<td>Product Name</td>
	<td>Product Stock</td>
	<td>Price</td>
    <td>Category Name</td>
    <td>Image</td>
	
</tr>
<c:forEach items="${productList}" var="product">
	<tr bgcolor="">
		
		<td>${product.pname}</td>
		<td>${product.pstock}</td>
		<td>${product.pprice}</td>
		<td>${product.catname}</td>
		

		<td>
			<a href="productDesc/${product.pid}">
			<img src="<c:url value="resources/Images/${product.pid}.jpg"/>" width="100px" height="100px">
			</a>
		</td>
		
	</tr>
	

	
</c:forEach>

</table>
 
</table>
</div>
</div>
</div>

</body>
</html> 


