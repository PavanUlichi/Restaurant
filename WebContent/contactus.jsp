<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ghumaghualu Andhra Restuarant: About Us</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/bootstrap-social.css" rel="stylesheet">
<link href="css/mystyle.css" rel="stylesheet">
</head>

<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp"><img
				src="img/img/logo.png" height=30 width=41></a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="index.jsp"><span
						class="glyphicon glyphicon-home" aria-hidden="true"></span> Home</a></li>
				<li><a href="aboutus.jsp"> <span
						class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>
						About
				</a></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false"> <span
						class="glyphicon glyphicon-list-alt"> Menu</span> <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="appetizers.jsp">Appetizers</a></li>
						<li><a href="maincourse.jsp">Main Courses</a></li>
						<li><a href="desserts.jsp">Desserts</a></li>
						<li><a href="drinks.jsp">Drinks</a></li>

					</ul></li>
				<li class="active"><a href="contactus.jsp"><i
						class="fa fa-envelope" aria-hidden="true"></i> Contact</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<header class="jumbotron">

	<div class="container">
		<div class="row row-header">
			<div class="col-xs-12 col-sm-8">
				<h1>Ghumaghumalu</h1>
				<p style="padding: 10px;"></p>
				<p>We take inspiration from the authentic south-indian cuisines,
					and create a unique fusion experience. Our lipsmacking creations
					will tickle your culinary senses!</p>
			</div>
			<div class="xs-col-12 col-sm-4">
				<p style="padding: 0px;"></p>
				<img src="img/img/logo.png" class="img-responsive"
					style="width: 50%; height: 50%">
			</div>
		</div>
	</div>
	</header>

	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<ul class="breadcrumb">
					<li><a href="index.jsp">Home</a></li>
					<li class="active">Contact Us</li>
				</ul>
			</div>
			<div class="col-xs-12">
				<h3>Contact Us</h3>
			</div>
		</div>

		<div style="padding-top: 0px;" class="row">
			<div class="col-xs-12">
				<h3>Location Information</h3>
			</div>
			<div class="col-xs-12 col-sm-4 col-sm-offset-1">
				<h5>Our Address</h5>
				<address style="font-size: 100%">
					4/9, St Thomas Street,<br> Egattur, Navalur,<br> Chennai,
					Tamil Nadu 603103<br> <i class="fa fa-phone"></i>: 80 6566
					5999<br> <i class="fa fa-envelope"></i>: <a
						href="mailto:ghumaghumalu@food.net">ghumaghumalu@food.net</a>
				</address>
			</div>
			<div class="col-xs-12 col-sm-11 col-sm-offset-1">
				<div class="btn-group" role="group" aria-label="...">
					<a type="button" class="btn btn-primary" href="tel:80 6566 5999"><i
						class="fa fa-phone"></i> Call</a> <a type="button"
						class="btn btn-success" href="mailto:ghumaghumalu@food.net"><i
						class="fa fa-envelope-o"></i> Email</a>
				</div>

			</div>
		</div>

		<div class="row row-content">
			<div class="col-xs-12">
				<h3>Send us your Feedback</h3>
			</div>
			<div class="col-xs-12 col-sm-9">
				<form class="form-horizontal" role="form"
					action="/RestaurantSamplePhaseOne/FeedBack" method="get">
					<div class="form-group">
						<label for="firstname" class="col-sm-2 control-label">First
							Name</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="firstname"
								name="firstname" placeholder="Enter First Name">
						</div>
					</div>
					<div class="form-group">
						<label for="lastname" class="col-sm-2 control-label">Last
							Name</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="lastname"
								name="lastname" placeholder="Enter Last Name">
						</div>
					</div>

					<div class="form-group">
						<label for="telnum" class="col-xs-12 col-sm-2 control-label">Contact
							Tel.</label>
						<div class="col-xs-5 col-sm-4 col-md-3">
							<div class="input-group">
								<div class="input-group-addon">(</div>
								<input type="tel" class="form-control" id="areacode"
									name="areacode" placeholder="Area code">
								<div class="input-group-addon">)</div>
							</div>
						</div>
						<div class="col-xs-7 col-sm-6 col-md-7">
							<input type="tel" class="form-control" id="telnum" name="telnum"
								placeholder="Tel. number">
						</div>
					</div>
					<div class="form-group">
						<label for="emailid" class="col-sm-2 control-label">Email</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="emailid"
								name="emailid" placeholder="Email">
						</div>
					</div>

					<div class="form-group">
						<div class="checkbox col-sm-5 col-sm-offset-2">
							<label class="checkbox-inline"> <input type="checkbox"
								name="approve" value=""> <strong>May we contact
									you?</strong>
							</label>
						</div>
						<div class="col-sm-3 col-sm-offset-1">
							<select class="form-control" name="contacttype">
								<option value="phone">Tel.</option>
								<option value="email">Email</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label for="feedback" class="col-sm-2 control-label">Your
							Feedback</label>
						<div class="col-sm-10">
							<textarea class="form-control" id="feedback" name="feedback"
								rows="12" maxlength="400"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary">Send
								Feedback</button>
						</div>
					</div>
				</form>



			</div>
			<div class="col-xs-12 col-sm-3">
				<p style="padding: 20px;"></p>
			</div>
		</div>

	</div>

	<footer class="row-footer">
	<div class="container">
		<div class="row">
			<div class="col-xs-5 col-xs-offset-1 col-sm-2 col-sm-offset-1">
				<h5>Links</h5>
				<ul class="list-unstyled">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="aboutus.jsp">About</a></li>
					<li><a href="contactus.jsp">Contact</a></li>
				</ul>
			</div>
			<div class="col-xs-6 col-sm-5 col-sm-offset-4">
				<h5>Our Address</h5>
				<address>
					4/9, St Thomas Street,<br> Egattur, Navalur,<br> Chennai,
					Tamil Nadu 603103<br> <i class="fa fa-phone"></i>: 80 6566
					5999<br> <i class="fa fa-envelope"></i>: <a
						href="mailto:ghumaghumalu@food.net">ghumaghumalu@food.net</a>
				</address>
			</div>
			<div class="col-xs-12">
				<p style="padding: 10px;"></p>
			</div>
		</div>
	</div>
	</footer>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>

</html>
