<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<link rel="shortcut icon" href="favicon.ico" />
<meta charset="UTF-8">

<!-- BOOTSTRAP -->
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.0/examples/sign-in/">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@forevolve/bootstrap-dark@1.1.0/dist/css/bootstrap-dark.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<!-- END BOOTSTRAP -->

<!-- JAVASCRIPT -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<!-- END JAVASCRIPT -->

<!-- CSS -->
<link rel="stylesheet" href="CSS/style.css" />
<!-- END CSS -->

<title>House Report</title>

<link rel="canonical" />
<body>
	<header>
		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

			<br> <a class="navbar-brand" href="home.do"><img
				src="images/logo1.png" width="75px" alt="House Report Logo"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="home.do">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link"
						href="createListing.do">Create Listing</a></li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Profile</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="results.do">View Listings</a>
							<form action="profile.do" method="GET">
								<input type="hidden" name="id" value="${user.id }">
								<button class="dropdown-item" type="submit">View
									Profile</button>
							</form>

							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#">Logout</a>
						</div></li>
					<li class="nav-item"><a class="nav-link disabled" href="#"
						tabindex="-1" aria-disabled="true"></a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
		</nav>
	</header>
	<!-- End Navbar -->

	<!-- <select class="form-select" aria-label="Default select example">
  <option selected>Open this select menu</option>
  <option value="1">One</option>
  <option value="2">Two</option>
  <option value="3">Three</option>
</select> -->

	<!-- <div class="row">
  <div class="col">
    <input type="text" class="form-control" placeholder="First name" aria-label="First name">
  </div>
  <div class="col">
    <input type="text" class="form-control" placeholder="Last name" aria-label="Last name">
  </div>
</div>

<form class="row g-3">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" id="inputEmail4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" class="form-control" id="inputPassword4">
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="col-12">
    <label for="inputAddress2" class="form-label">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
  <div class="col-md-6">
    <label for="inputCity" class="form-label">City</label>
    <input type="text" class="form-control" id="inputCity">
  </div>
  <div class="col-md-4">
    <label for="inputState" class="form-label">State</label>
    <select id="inputState" class="form-select">
      <option selected>Choose...</option>
      <option>...</option>
    </select>
  </div>
  <div class="col-md-2">
    <label for="inputZip" class="form-label">Zip</label>
    <input type="text" class="form-control" id="inputZip">
  </div>
  <div class="col-12">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">Sign in</button>
  </div>
</form> -->


	<form class="row g-3" action="createdListing.do" method="POST">
		<input type="hidden" name="userId" value="${user.id}">

		<!-- Start of address object -->
		<div class="col-md-12">

			<label for="street" class="form-label">Street</label> <input
				type="text" class="form-control" name="street">
		</div>

		<div class="col-md-12">
			<label for="street2" class="form-label">Apt</label> <input
				type="text" class="form-control" name="street2">
		</div>

		<div class="col-md-6">
			<label for="city" class="form-label">City</label> <input type="text"
				class="form-control" name="city">
		</div>
		<br>
		<div class="col-md-3">
			<label for="state" class="form-label"> State </label> <br> <select
				name="state" class="form-select bg-dark">
				<option selected>State...</option>
				<option value="AL">Alabama</option>
				<option value="AK">Alaska</option>
				<option value="AZ">Arizona</option>
				<option value="AR">Arkansas</option>
				<option value="CA">California</option>
				<option value="CO">Colorado</option>
				<option value="CT">Connecticut</option>
				<option value="DE">Delaware</option>
				<option value="DC">DC</option>
				<option value="FL">Florida</option>
				<option value="GA">Georgia</option>
				<option value="HI">Hawaii</option>
				<option value="ID">Idaho</option>
				<option value="IL">Illinois</option>
				<option value="IN">Indiana</option>
				<option value="IA">Iowa</option>
				<option value="KS">Kansas</option>
				<option value="KY">Kentucky</option>
				<option value="LA">Louisiana</option>
				<option value="ME">Maine</option>
				<option value="MD">Maryland</option>
				<option value="MA">Massachusetts</option>
				<option value="MI">Michigan</option>
				<option value="MN">Minnesota</option>
				<option value="MS">Mississippi</option>
				<option value="MO">Missouri</option>
				<option value="MT">Montana</option>
				<option value="NE">Nebraska</option>
				<option value="NV">Nevada</option>
				<option value="NH">New Hampshire</option>
				<option value="NJ">New Jersey</option>
				<option value="NM">New Mexico</option>
				<option value="NY">New York</option>
				<option value="NC">North Carolina</option>
				<option value="ND">North Dakota</option>
				<option value="OH">Ohio</option>
				<option value="OK">Oklahoma</option>
				<option value="OR">Oregon</option>
				<option value="PA">Pennsylvania</option>
				<option value="RI">Rhode Island</option>
				<option value="SC">South Carolina</option>
				<option value="SD">South Dakota</option>
				<option value="TN">Tennessee</option>
				<option value="TX">Texas</option>
				<option value="UT">Utah</option>
				<option value="VT">Vermont</option>
				<option value="VA">Virginia</option>
				<option value="WA">Washington</option>
				<option value="WV">West Virginia</option>
				<option value="WI">Wisconsin</option>
				<option value="WY">Wyoming</option>
			</select>
		</div>

		<div class="col-md-3">
			<label for="postalCode" class="form-label">Zip Code</label> <input
				type="text" class="form-control" name="postalCode">
		</div>
		<!-- Street: <br>
 		<input type="text" name="street"><br>
 		APT:<br>
 		<input type="text" name="street2"><br> -->
		<!-- City: <br>
 		<input type="text" name="city"><br> -->
		<!-- State: <br>
 		<select class="form-select" name="state">
			<option value="AL">Alabama</option>
			<option value="AK">Alaska</option>
			<option value="AZ">Arizona</option>
			<option value="AR">Arkansas</option>
			<option value="CA">California</option>
			<option value="CO">Colorado</option>
			<option value="CT">Connecticut</option>
			<option value="DE">Delaware</option>
			<option value="DC">District Of Columbia</option>
			<option value="FL">Florida</option>
			<option value="GA">Georgia</option>
			<option value="HI">Hawaii</option>
			<option value="ID">Idaho</option>
			<option value="IL">Illinois</option>
			<option value="IN">Indiana</option>
			<option value="IA">Iowa</option>
			<option value="KS">Kansas</option>
			<option value="KY">Kentucky</option>
			<option value="LA">Louisiana</option>
			<option value="ME">Maine</option>
			<option value="MD">Maryland</option>
			<option value="MA">Massachusetts</option>
			<option value="MI">Michigan</option>
			<option value="MN">Minnesota</option>
			<option value="MS">Mississippi</option>
			<option value="MO">Missouri</option>
			<option value="MT">Montana</option>
			<option value="NE">Nebraska</option>
			<option value="NV">Nevada</option>
			<option value="NH">New Hampshire</option>
			<option value="NJ">New Jersey</option>
			<option value="NM">New Mexico</option>
			<option value="NY">New York</option>
			<option value="NC">North Carolina</option>
			<option value="ND">North Dakota</option>
			<option value="OH">Ohio</option>
			<option value="OK">Oklahoma</option>
			<option value="OR">Oregon</option>
			<option value="PA">Pennsylvania</option>
			<option value="RI">Rhode Island</option>
			<option value="SC">South Carolina</option>
			<option value="SD">South Dakota</option>
			<option value="TN">Tennessee</option>
			<option value="TX">Texas</option>
			<option value="UT">Utah</option>
			<option value="VT">Vermont</option>
			<option value="VA">Virginia</option>
			<option value="WA">Washington</option>
			<option value="WV">West Virginia</option>
			<option value="WI">Wisconsin</option>
			<option value="WY">Wyoming</option>
		</select><br> -->
		<!-- Zip code:<br>
		<input type="text" name="postalCode"><br> -->
		<!-- End of address object -->

		<!-- Start of listing object -->
		<div class="col-md-3">
			<label for="price" class="form-label">Price</label> <input
				type="text" class="form-control" name="price"
				value="${listing.price}">
		</div>

		<div class="col-md-3">
			<label for="squareFeet" class="form-label">Square footage</label> <input
				type="text" class="form-control" name="squareFeet"
				value="${listing.squareFeet}">
		</div>

		<div class="col-md-3">
			<label for="bedNumber" class="form-label">Bedrooms</label> <input
				type="text" class="form-control" name="bedNumber"
				value="${listing.bedNumber}">
		</div>

		<div class="col-md-3">
			<label for="bathNumber" class="form-label">Bathrooms</label> <input
				type="text" class="form-control" name="bathNumber"
				value="${listing.bathNumber}">
		</div>

		<div class="col-md-3">
			<label for="propertyCrimeRate" class="form-label">Property
				Crime Rate</label> <input type="text" class="form-control"
				name="propertyCrimeRate" value="${listing.propertyCrimeRate}">
		</div>

		<div class="col-md-3">
			<label for="hoaMonthlyRate" class="form-label">Monthly HOA
				Cost</label> <input type="text" class="form-control" name="hoaMonthlyRate"
				value="${listing.hoaMonthlyRate}">
		</div>

		<div class="col-md-3">
			<label for="yearBuilt" class="form-label">Year Built</label> <input
				type="text" class="form-control" name="yearBuilt"
				value="${listing.yearBuilt}">
		</div>

		<div class="col-md-3">
			<label for="lotSizeSqft" class="form-label">Lot Size</label> <input
				type="text" class="form-control" name="lotSizeSqft"
				value="${listing.lotSizeSqft}">
		</div>

		<div class="col-md-3">
			<label for="propertyTax" class="form-label">Property Tax</label> <input
				type="text" class="form-control" name="propertyTax"
				value="${listing.propertyTax}">
		</div>

		<div class="col-md-3">
			<label for="parkingType" class="form-label">Parking Type</label> <input
				type="text" class="form-control" name="parkingType"
				value="${listing.parkingType}">
		</div>

		<!--  <b>Price:</b>
        <input type="text" name="price" value="${listing.price}" > <br />
        <b>Square feet:</b> <br />
        <input type="text" name="squareFeet" value="${listing.squareFeet}" /> <br /> --%>
		<!-- <b>Number of beds:</b> <br />
        <input type="text" name="bedNumber" value="${listing.bedNumber}" /> <br /> --%>
		<!--  <b>Number of baths:</b> <br />
        <input type="text" name="bathNumber" value="${listing.bathNumber}" > <br /> --%>
		<!--  <b>Crime rate:</b> <br />
        <input type="text" name="propertyCrimeRate" value="${listing.propertyCrimeRate}" > <br /> --%>
		<!-- <b>Violent crime rate:</b> <br />
        <input type="text" name="violentCrimeRate" value="${listing.violentCrimeRate}" > <br /> --%>
		<!-- <b>HOA monthly rate:</b> <br />
        <input type="text" name="hoaMonthlyRate" value="${listing.hoaMonthlyRate}" > <br /> --%>
		<!--  <b>Year built:</b> <br />
        <input type="text" name="yearBuilt" value="${listing.yearBuilt}" > <br /> --%>
		<!-- <b>Lot size Sqaure feet:</b> <br />
        <input type="text" name="lotSizeSqft" value="${listing.lotSizeSqft}" > <br /> --%>
		<!--  <b>Property tax:</b> <br />
        <input type="text" name="propertyTax" value="${listing.propertyTax}" > <br /> --%>
		<!--         <b>Parking type:</b> <br />
        <input type="text" name="parkingType" value="${listing.parkingType}" /> <br /> --%>
		<!-- End of listing object -->

		<!-- property type object -->
		<div class="col-md-3">
			<label for="state" class="form-label"> Type </label> <br> <select
				id="state" class="form-select bg-dark">
				<option selected>Property Type...</option>
				<option value="Apartment">Apartment</option>
				<option value="House">House</option>
				<option value="Condo">Condo</option>
				<option value="Duplex">Duplex</option>
				<option value="Townhouse">Townhouse</option>
			</select>
		</div>
		<!--   <b>Property Type: </b>
        <select name="type">
			<option value="Apartment">Apartment</option>
			<option value="House">House</option>
			<option value="Condo">Condo</option>
			<option value="Duplex">Duplex</option>
			<option value="Townhouse">Townhouse</option>
			</select><br> -->
		<!-- property type object -->

		<!-- listing photo object -->
		<div class="col-md-3">
			<label for="imgUrl" class="form-label">Photo URL</label> <input
				type="text" class="form-control" id="Create" name="imgUrl">
		</div>

		<!-- <b>photo URL: </b> <input type="text" name="imgUrl"><br>
			listing photo object
input type="submit" value="Create"
		</div> -->
		<div class="col text-center">
		<button type="submit" class="btn btn-primary bg-dark" value="Create">Submit</button>
		</div>
	</form>

</body>
</html>