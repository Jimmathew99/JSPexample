<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* Add some basic styling to the form */
form {
	max-width: 300px;
	margin: 20px auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Style the input fields */
input[type="email"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ccc;
}

/* Style the labels */
label {
	display: block;
	margin-bottom: 10px;
}

/* Style the submit button */
input[type="submit"] {
	background-color: #4CAF50;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

/* Add some hover effects */
input[type="submit"]:hover {
	background-color: #3e8e41;
}
</style>
<script type="text/javascript">
	function validateForm() {
		var email = document.forms["registrationForm"]["email"].value;
		var password = document.forms["registrationForm"]["password"].value;
		var confirmPassword = document.forms["registrationForm"]["confirmPassword"].value;

		if (email == "" || password == "" || confirmPassword == "") {
			alert("All fields must be filled out");
			return false;
		}

		if (password !== confirmPassword) {
			alert("Passwords do not match");
			return false;
		}

		return true;
	}
</script>
</head>
<body>
	<div>
		<form action="register_action.jsp" method="post" onsubmit="return validateForm()"
			name="registrationForm">
			<label>Email: </label> <input type="email" name="email"
				required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
				title="Enter a valid email address (e.g., user@example.com)"><br>
			<br> <label>Password: </label> <input type="password"
				name="password" required
				pattern="^(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])\S{8,}$"
				title="Password must contain at least one number, one alphabet, one symbol, and be at least 8 characters long"><br>
			<br> Confirm Password: <input
				type="password" name="confirmPassword" required
				pattern="^(?=.*\d)(?=.*[a-zA-Z])(?=.*[^a-zA-Z0-9])\S{8,}$"
				title="Password must contain at least one number, one alphabet, one symbol, and be at least 8 characters long"><br>
			<br> <input type="submit" value="Submit">




		</form>





	</div>

</body>
</html>