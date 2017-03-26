<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup!</title>
</head>
<body>
	<div class="modal" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Signup by creating an account!</h4>
				</div>
				<div class="modal-body">
					<%
						String userlabel = (String) request.getAttribute("errorMsg");
					%>
					<%=userlabel%>
					<form class="form-horizontal col-sm-8" id="signupform"
						action="/RestaurantSamplePhaseOne/SignUp" method="post">
						<div class="form-group">
							Username : <input type="text" class="form-control" id="username"
								name="username" placeholder="Enter username" required>
						</div>
						<div class="form-group">
							Email : <input type="email" class="form-control" id="emailid"
								name="emailid" placeholder="Enter a valid emailId" required>
						</div>
						<div class="form-group">
							Password : <input type="password" class="form-control"
								id="password" name="password" id="password"
								placeholder="Choose a password" required>
						</div>
						<div class="form-group">
							Re-enter Password : <input type="password" class="form-control"
								name="password1" id="confirm_password"
								placeholder="Re-enter password" required>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-default">Submit</button>
						</div>
					</form>
					<div class="modal-footer"></div>
				</div>
			</div>
		</div>
	</div>

	<script>
		var password = document.getElementById("password"), confirm_password = document
				.getElementById("confirm_password");

		function validatePassword() {
			if (password.value != confirm_password.value) {
				confirm_password.setCustomValidity("Passwords Don't Match");
			} else {
				confirm_password.setCustomValidity('');
			}
		}

		password.onchange = validatePassword;
		confirm_password.onkeyup = validatePassword;
	</script>


</body>
</html>