<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page import="java.util.*"%>



<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Registration Form</title>

</head>
<style>
.footer {
	position: fixed;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 50px;
}

body {
	background-color: #eee;
}

.open-popup {
	visibility: visible;
}

.content {
	position: absolute;
	top: 50px;
	bottom: 50px;
	left: 0px;
	right: 0px;
	/* overflow:auto;*/
	overflow-y: scroll;
}

.content::-webkit-scrollbar {
	display: none;
}

.card-registration .select-input.form-control[readonly]:not([disabled])
	{
	font-size: 1rem;
	line-height: 2.15;
	padding-left: .75em;
	padding-right: .75em;
}

.card-registration .select-arrow {
	top: 13px;
}
</style>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">

		<div class="container">
			<a class="navbar-brand" href="#"> Client Varification</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item mr"><a class="nav-link active"
						aria-current="page" href="/logout">LogOut</a></li>
				</ul>
			</div>
		</div>
		</div>

	</nav>
	<%-- <section class="content container my-2 bg-dark w-50 text-light p-2">

		<form:form class="row g-3 p-3" action="/save" id="reg" name="reg"
			onsubmit="return val()" modelAttribute="user" method="POST">
			<div class="container text-center">
				<h1>Registration</h1>
			</div>

			<div class="col-md-6">
				<label for="validationDefault01" class="form-label">First
					name :</label>
				<form:input type="text" class="form-control" id="FirstName"
					path="FirstName" name="FirstName" placeholder="Enter Name" />

			</div>

			<div class="col-md-6">
				<label for="validationDefault02" class="form-label">Last
					name :</label>
				<form:input type="text" class="form-control" id="LastName"
					name="LastName" path="LastName" placeholder="Enter last name" />

			</div>
			<div class="col-md-12">
				<label for="validationDefault02" class="form-label">Email :</label>
				<form:input type="text" class="form-control" id="Email" name="Email"
					path="Email" placeholder="Enter Email Id" />

			</div>

			<div class="col-md-6">
				<label for="validationDefault02" class="form-label">Uaer
					name :</label>
				<form:input type="text" class="form-control" id="Username"
					name="UserName" path="UserName" placeholder="Enter user name" />

			</div>

			<div class="col-8">
				<label>Gender :</label>
				<div class="form-check">
					<form:radiobutton class="form-check-input" name="Gender"
						id="Gender" value="Male" path="Gender" />
					<label class="form-check-label" for="exampleRadios1"> Male
					</label>
				</div>
				<br>
				<form:radiobutton class="form-check-input" name="Gender" id="Gender"
					value="Female" path="Gender" />
				<label class="form-check-label" for="exampleRadios1"> Female
				</label>
			</div>

			<br>


			<br>



			<div class="col-md-12">
				<label for="inputCity" class="form-label">State:</label>
				<form:input type="text" path="stateid" name="state" id="state"/>
				<form:select type="text" name="state" id="state" class="form-select">
					<c:forEach items="${stateid}" var="item">
						<option value="${item.value}">${item.label}</option>
					</c:forEach>

				</form:select>
				
			</div>

			<div class="col-md-12">
				<label for="inputCity" class="form-label">City:</label>
				<form:input type="text" path="citiid" name="city" id="city"/>
				<form:select name="city" id="city" class="form-select" path="citiid">
					<form:option value="${citiid}" />
				</form:select>

				
			</div>



			<div class="container text-center">
				<input type="submit" class="btn bg-primary " id="btn1"
					value="Submit">
				<input type="reset" class="btn bg-primary" value="reset">
			</div>


			<div class="col-7">
				Already have an account? <a href="/">Log in</a>
			</div>

		</form:form>

	</section> --%>


	<section class="vh-100" style="background-color: #eee;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 25px;">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

									<p class="text-center h1 fw-bold mb-2 mx-1 mx-md-4 mt-4">Sign
										up</p>


									<form:form class="row g-3 p-3" action="/save" id="reg"
										name="reg" onsubmit="return val()" modelAttribute="user"
										method="Post">

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label for="validationDefault01" class="form-label">First
													name :</label>
												<form:input type="text" class="form-control" id="FirstName"
													path="FirstName" name="FirstName" placeholder="Enter Name" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label for="validationDefault02" class="form-label">Last
													name :</label>
												<form:input type="text" class="form-control" id="LastName"
													name="LastName" path="LastName"
													placeholder="Enter last name" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label for="validationDefault02" class="form-label">Email
													:</label>
												<form:input type="text" class="form-control" id="Email"
													name="Email" path="Email" placeholder="Enter Email Id" />
											</div>
										</div>

										<div
											class="d-md-flex justify-content-start align-items-center mb-4 py-2">

											<h5 class="mb-0 me-4">
												<b>Gender:</b>
											</h5>

											<div class="form-check form-check-inline mb-0 me-4">
												<form:radiobutton class="form-check-input" name="Gender"
													id="Gender" value="Male" path="Gender" />
												<label class="form-check-label" for="exampleRadios1">
													Male </label>
											</div>

											<div class="form-check form-check-inline mb-0 me-4">
												<form:radiobutton class="form-check-input" name="Gender"
													id="Gender" value="Female" path="Gender" />
												<label class="form-check-label" for="exampleRadios1">
													Female </label>
											</div>



										</div>

										<div class="d-flex flex-row align-items-center mb-4">

											<div class="form-outline flex-fill mb-0">
												<%-- <label for="inputCity" class="form-label">State:</label>
												<form:input type="text" path="stateid" name="state"
													id="state" />  --%>
												<label for="inputCity" class="form-label">State:</label>
												<form:select name="state" id="state" class="form-select"
													path="stateid">
													 

															<option value="${user}">${user.stateid}</option>  
															
                              						
												</form:select>


												
												<br>
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<div class="form-outline flex-fill mb-0">
												<%-- <label for="inputCity" class="form-label">City:</label>
												<form:input type="text" path="citiid" name="city" id="city" /> --%>
											<label for="inputCity" class="form-label">City:</label>
											<form:select name="city" id="city" class="form-select" path="citiid" >
													
													<option value="${user}">${user.citiid}</option>  
													</form:select>
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">

											<button type="submit" class="btn btn-primary btn-lg"
												id="btn1">Edir&Save</button>

										</div>

									</form:form>
								</div>
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
										class="img-fluid" alt="Sample image">

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="footer card-footer bg-light text-dark text-center">Copyright@
		NIDHI VADALIYA & PINAL RAGHVANI</div>
	<!-- Option 1: Bootstrap Bundle with Popper -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
	<!-- <script src="/js/Style.js"></script>  -->

	<!-- Option 2: Separate Popper and Bootstrap JS -->
	<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>




