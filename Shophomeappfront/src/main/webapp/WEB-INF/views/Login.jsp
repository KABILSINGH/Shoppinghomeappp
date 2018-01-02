<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
body {
	background-image: url("resources/Images/.jpg");
	background-size: cover;
}

.aa {
	width: 300px;
	height: 230px;
	background-color: rgba(0, 0, 0);
	margin: 0 auto;
	margin-top: 40px;
	padding-top: 40px;
	padding-left: 50px;
}

.aa input[type="text"] {
	width: 200px;
	height: 20px;
	bordar: 0;
	border radius: 5px;
	-webkit-border-radius: 5px;
	-o-border-radius: 5px;
}

.aa input[type="password"] {
	width: 200px;
	height: 20px;
	bordar: 0;
	border radius: 5px;
	-webkit-border-radius: 5px;
	-o-border-radius: 5px;
}
</style>
<script>
function validateForm() {
    var x = document.forms["myForm"]["userid"].value;
    var y = document.forms["myForm"]["pass"].value;
    if (x == ""||y=="")
        {
        alert("empty field");
        }
     else if(x=="kabil"&&y=="1996") 
           {
            alert("welcome");
           }
           else{
            alert("invalid user");
             }
       
}
</script>
</head>
<body>
	<form name="myForm" onsubmit="validateForm()">
		<div class="aa">
			<fieldset>
				<legend>LOGIN FORM</legend>
				<br> <label>USER ID: <input type="text" name="userid"></label><br>
				<br> <label> PASSWORD: <input type="password"
					name="pass"></label> <br> <br> <input type="submit"
					class="btn btn-info" value="OK"> <input type="reset"
					class="btn btn-warning" text="RESET">

			</fieldset>
	</form>
</body>
</html>
