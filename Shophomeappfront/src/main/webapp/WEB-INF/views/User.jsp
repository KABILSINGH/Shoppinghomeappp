<%@ page language="java" contentType="text/html" import="com.model.User"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Sign Up</title>
<style>
body {
	background-image: url("resources/Images/background0.jpg");
	background-size: cover;
}

.ss {
	width: 400px;
	height: 270px;
	background-color: rgba(0, 0, 0,);
	margin: 0 auto;
	margin-top: 40px;
	padding-top: 40px;
	padding-left: 50px;
}

.ss input[type="text"] {
	width: 200px;
	height: 20px;
	bordar: 0;
	border radius: 5px;
	-webkit-border-radius: 5px;
	-o-border-radius: 5px;
}

.ss input[type="password"] {
	width: 200px;
	height: 20px;
	bordar: 0;
	border radius: 5px;
	-webkit-border-radius: 5px;
	-o-border-radius: 5px;
}

.ss input[type="mail"] {
	width: 200px;
	height: 20px;
	bordar: 0;
	border radius: 5px;
	-webkit-border-radius: 5px;
	-o-border-radius: 5px;
}
</style>
<script>
		</script>

</head>
<body>
	<form:form action="adduser" modelAttribute="user">
		<div class="ss">
			<fieldset>
				<legend>NEWUSER FORM</legend>
				<table>
					<tr>
						<td>USERNAME:</td>
						<td><input type="text" placeholder="ENTER USERNAME"
							name="uname" required></td>
					</tr>
					<tr>
						<td>PASSWORD:</td>
						<td><input type="password" placeholder="ENTER PASSWORD"
							name="pword" required></td>
					</tr>
					<tr>
						<td>DATE OF BIRTH:</td>
						<td><input type="text" placeholder="ENTER DOB" name="birthd"
							required></td>
					</tr>
					<tr>
						<td>ADDRESS:</td>
						<td><input type="text" placeholder="ENTER ADDRESS"
							name="adss" required></td>
					</tr>
					<tr>
					<tr>
						<td>EMAIL:</td>
						<td><input type="mail" placeholder="ENTER EMAIL" name="email"
							required></td>
					</tr>
					<tr>
						<td>MOBILE NUMBER:</td>
						<td><input type="text" placeholder="+91" name="mnum" required></td>
					</tr>
					<tr>
						<td><input type="submit" name="submit"></td>
					</tr>
				</table>
				<div>
			</fieldset>
	</form:form>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>