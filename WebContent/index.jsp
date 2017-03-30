<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/mystyle.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Signup/ Login</title>
</head>
<body>
	<div class="container">
  <h3>Signup/ Login</h3>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#signup">Signup</a></li>
    <li><a data-toggle="tab" href="#login">Login</a></li>
  </ul>
  
  <div class="tab-content">
    <div id="signup" class="tab-pane fade in active" style="height:350px">
      <h3>SignUp</h3>
					<form class="col-sm-8" id="signupform"
						action="/SignUp" method="post">
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
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
						<div style="color:red">${errorMsg}</div>
					</form>
	</div>
    
    <div id="login" class="tab-pane fade" style="height:220px">
      <h3>Login</h3>
      <form class="col-sm-8" id="loginform"
						action="/Login" method="post">
						<div class="form-group">
							Email : <input type="email" class="form-control" id="emailid"
								name="emailid" placeholder="Enter your email" required>
						</div>
						<div class="form-group">
							Password : <input type="password" class="form-control"
								id="password" name="password" id="password"
								placeholder="Enter your password" required>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary">Submit</button>
						</div>
						<div style="color:red">${errorMsg}</div>
					</form>
    </div>
  </div>
</div>
	<a class="btn btn-success btn-lg col-sm-offset-8 col-sm-2" href="/home.jsp">Enter as guest</a>
</body>
</html>
