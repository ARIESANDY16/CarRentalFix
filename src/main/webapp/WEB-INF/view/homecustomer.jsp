
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
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>Car Rental JDT7</title>
</head>
<body>
	<!--     NAVBAR -->
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
				<li class="nav-item active"><a class="nav-link"
					href="/customer">Home <span class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="/vehicles">Vehicle</a></li>
					<li class="nav-item"><a class="nav-link" href="/edit-customer">My Information</a></li>
					<li class="nav-item"><a class="nav-link" href="/my-reservation">My Reservation</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/logout-customer">Logout</a></li>
			</ul>
			<div class="dropdown">
				<button class="btn btn-success dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">
					<i class="fas fa-user-circle">${name}</i>
				</button>
			</div>
			<!-- <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form> -->
		</div>
	</nav>
	<!--     END NAVBAR  -->


	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/isema.png" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/banner2-puasa-2019.png" class="d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item">
				<img src="img/Indivara-VALUE_FINAL.png" class="d-block w-100"
					class="d-block w-100" alt="...">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<br>

	<!-- END CAROUSEL -->
<jsp:useBean id="Customer" scope="session" class="com.miniproject.CarRental.Model.Customer" /> <jsp:setProperty name="Customer" property="*" /> 
 <h2> Selamat Datang , <%=Customer.getidCustomer()%> </h2>         
 ID ANDA = <jsp:getProperty name="Customer" property="usernameCustomer" /> <br>         
 USIA ANDA = <jsp:getProperty name="Customer" property="fullnameCustomer" /> <br> 

<%-- <h7>id Customer :${customer.idCustomer}	</h7><br>
<h7>fullname Customer :${customer.fullnameCustomer}	</h7><br>
<h7>username Customer :${customer.usernameCustomer}	</h7><br>
<h7>password Customer :${customer.passwordCustomer}	</h7><br> --%>
	<c:choose>
		<c:when test="${mode=='MODE_HOME_CUSTOMER' }">
			<!-- 	<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome to Rental Car JDT7</h1>
				</div>
			</div> -->
		</c:when>
	<%-- <c:when test="${mode=='MODE_UPDATE_CUSTOMER' }">
			<div class="container text-center">
				<h3>Update User</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-customer">
					<input type="hidden" name="idCustomer"
						value="${customer.idCustomer }" />
					<div class="form-group">
						<label class="control-label col-md-3">Full Name </label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="fullnameCustomer"
								value="${customer.fullnameCustomer }" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="usernameCustomer"
								value="${customer.usernameCustomer }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="passwordCustomer"
								value="${customer.passwordCustomer }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Email_Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="emailCustomer"
								value="${customer.emailCustomer }" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-md-3">Mobile Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="contactnoCustomer"
								value="${customer.contactnoCustomer }" />
						</div>
					</div>
					
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when> --%>
	</c:choose>

</body>
</html>