<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<title><jsp:include page="projectTitle.jsp"></jsp:include></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="style.css" rel="stylesheet" />
<link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet">
<link rel="shortcut icon" href="assets/ico/favicon.ico">
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="topNav">
			<div class="container">
				<div class="alignR">
					<div class="pull-left socialNw">
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div id="gototop"></div>
		<header id="header">
		<div class="row">
			<div class="span4">
				<h1>
					<a class="logo" href="index.jsp"><span><jsp:include
								page="projectTitle.jsp"></jsp:include></span> <img
						src="assets/img/flat.png"
						alt="bootstrap sexy shop"> </a>
				</h1>
			</div>
			<div class="span4 alignR"></div>
		</div>
		</header>

		<div class="navbar">
			<div class="navbar-inner">
				<div class="container">
					<a data-target=".nav-collapse" data-toggle="collapse"
						class="btn btn-navbar"> <span class="icon-bar"></span> <span
						class="icon-bar"></span> <span class="icon-bar"></span>
					</a>
					<div class="nav-collapse">
						<jsp:include page="Header/mainHeader.jsp"></jsp:include>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="well np">
				<div class="well well-small">
					<h3 align="center">Customer Registration</h3>
					<hr class="soften" />
					<div class="row-fluid" align="center">
						<div id="newProductCar" class="carousel slide">
							<div class="carousel-inner">
								<div class="item active" align="center">
									<form action="CustomerRegistration" method="post">
										<table style="width: 50%;" align="center" >
											<tr>
												<th>Name</th>
												<td><input type="text" placeholder="Your Name" class="form-control" name="name" required></td>
											</tr>
											<tr>
												<th>Address</th>
												<td><input type="text" placeholder="Your Address" class="form-control" name="address" required></td>
											</tr>
											<tr>
												<th>Email ID</th>
												<td><input type="text" placeholder="Your Email ID" class="form-control" name="email" required></td>
											</tr>
											<tr>
												<th>Mobile No</th>
												<td><input type="text" placeholder="Your Mobile No" class="form-control" maxlength="10" name="mobile" required></td>
											</tr>
											<tr>
												<th>Password</th>
												<td><input type="password" placeholder="************"
													id="password" class="form-control" name="password" required></td>
											</tr>
											<tr>
												<th></th>
												<td><button type="submit" class="btn btn-success"><b>Registration </b></button></td>
											</tr>
											
										</table>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>

		<div class="copyright">
			<div class="container">
				<p class="pull-right"></p>
				<span>Copyright &copy; FlatBud: The Flatmate Searching Website
				</span>
			</div>
		</div>
		<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
		<script src="assets/js/jquery.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/jquery.easing-1.3.min.js"></script>
		<script src="assets/js/jquery.scrollTo-1.4.3.1-min.js"></script>
		<script src="assets/js/shop.js"></script>
</body>
</html>