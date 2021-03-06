<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="css/style.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/daterangepicker.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<script src="js/daterangepicker.js"></script>
<script src="js/moment.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>Car Rental JDT7</title>
</head>
<body>
	<!-- NAVBAR -->
	<nav class="navbar navbar-expand-lg navbar-light bg-blue">
		<a class="navbar-brand" href="/home">Car Rental</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="/customer">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle disabled" href="#"
					id="navbarDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Vehicle </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/vehicles">Avanza</a> <a
							class="dropdown-item" href="/vehicles">Mitsubishi</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/vehicles">Daihatsu</a>
					</div></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">About</a></li>
				<li class="nav-item active"><a class="nav-link"
					href="/reservation">Reservation</a></li>
				<li class="nav-item"><a class="nav-link disabled"
					href="/logout-customer">Logout</a></li>
			</ul>
		</div>
	</nav>
	<!--     END NAVBAR  -->
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card-group">
					<div class="card p-4">
						<div class="card-body">
							<h1>Reservation</h1>
							<hr>
							<form class="form-horizontal" method="POST"
<<<<<<< HEAD
								action="/save-reservation">
								<label>Id Reservation</label>
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="idReservation"
										value="${reservation.idReservation }" />
								</div>
								<label>Id Customer</label>
=======
								action="save-reservation">
								<input type="hidden" name="idReservation"
									value="${reservasi.idReservation }" />
										<label>Id Customer</label>
>>>>>>> Feature/Ray
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
								
									<input class="form-control" type="text" name="idCustomer"
										value="${reservation.idCustomer }">
								</div>
<<<<<<< HEAD
								<label>Id Vehicle</label>
=======
									<label>Id Vehicle</label>
>>>>>>> Feature/Ray
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="idVehicle"
										value="${reservation.idVehicle }">
								</div>
<<<<<<< HEAD
								<label>Id Driver</label>
=======
									<label>Id Driver</label>
>>>>>>> Feature/Ray
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="idDriver"
										value="${reservation.idDriver }">
								</div>
								<label>From Date</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="fromdate"
										value="${reservation.fromDate }">
								</div>
								<label>To Date</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="todate"
										value="${reservation.toDate }">
								</div>
								<label>Duration</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="duration"
										value="${reservation.duration }">
								</div>
								<label>Condition</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="condition"
										value="${reservation.condition }">
								</div>
								<label>From Location</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="fromlocation"
										value="${reservation.fromLocation }">
								</div>
								<label>To Location</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="tolocation"
										value="${reservation.toLocation }">
								</div>
								<label>Reservation Date</label>
								<div class="input-group mb-4">
									<div class="input-group-prepend">
										<span class="input-group-text"> </span>
									</div>
									<input class="form-control" type="text" name="reservationdate"
										value="${reservation.reservationDate }">
								</div>
								<p>
									<input type="checkbox">I Agree with <a href="#">Terms
										and Condition</a>
								</p>
								<div class="row">
									<div class="form-group ">
										<input type="submit" class="btn btn-block btn-primary"
											value="Send" />
									</div>
								</div>
							</form>
							<hr>
							<div class="text-center">
								<p>
									Already got an account? <a href="/login">Login Here</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>