<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div class="modal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Enter your credentials to login!</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal col-sm-8" id="signupform"
						action="/RestaurantSamplePhaseOne/Login" method="post">
						<div class="form-group">
							Email : <input type="email" class="form-control" id="emailid"
								name="emailid" placeholder="Enter your emailId" required>
						</div>
						<div class="form-group">
							Password : <input type="password" class="form-control"
								id="password" name="password" id="password"
								placeholder="Enter your password" required>
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

</body>
</html>