<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

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
<link rel="stylesheet" href="style.css">
<title>Form Design</title>
</head>
<style>
button {
	padding: 10px;
	margin-left: 300px;
}

body {
	background-color: black;
}


.open-popup{
	visibility: visible;
}
.footer {
  position:fixed;
  bottom:0;
  left:0;
  width:100%;
  height: 50px;
 
}

</style>
<body>
<!-- <nav class=" navbar navbar-expand-lg navbar-dark bg-dark">

		<div class="container">
			<a class="navbar-brand" href="#"> Client Varification</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				
			</div>
		</div>

	</nav> -->

	
	<%-- <section class="container my-2 bg-dark w-50 text-light p-2">
			
			
		<form modelAttribute="user-sign-up" class="row g-3 p-3" action="/loginsave" id="login-form" method="POST">
			
			
			<div class="container text-center">
				<h1>Login</h1>
			</div>
		
			<div class="col-md-6">
				<label for="validationDefault02" class="form-label">Username :</label>
				<input type="text" class="form-control" id="inputEmail4" id="validationDefault03" name="userName" placeholder="Enter here" required>
					
			</div>

		 	<div class="col-7">
			<label for="validationDefault04" class="form-label">password :</label> 
			<input type="password" class="form-control" name="password" id="validationDefault04" placeholder="Enter here" required>
			</div>	
			
			
			
			<div class="container text-center">
				<input type="submit" class="btn bg-primary  " value="Login">
				<input type="reset" class="btn bg-primary " value="cancel">
			</div>
			
			<div class="col-7">
			Do not you have an account?
			<a href="/registration">Sign up</a>
			</div>
			
		</form>
	</section> --%>
	
	<section class="vh-100" style=" background: #eee;">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <form class="row g-3 p-3" action="/loginsave" id="login-form" method="POST">
        
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
          
            <p class="text-center h1 fw-bold mb-2 mx-1 mx-md-4 mt-4">Login</p>
          </div>

         
          <!-- Email input -->
          <div class="form-outline mb-4">
            	
            <label for="validationDefault02" class="form-label">Email Address :</label>
				<input type="text" class="form-control" id="email" name="email" placeholder="Ente a valid Email id" required>
          </div>

          <!-- Password input -->
          <div class="form-outline mb-3">
           <label for="validationDefault04" class="form-label">password :</label> 
			<input type="password" class="form-control" name="password" id="password"  placeholder="Ente a valid password" required>
          </div>

         

          <div class="text-center text-lg-start mt-4 pt-2">
            <button type="submit" class="btn btn-primary btn-lg" id="btn1"
              style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
              
            <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="/registration"
                class="link-primary">Register</a></p>
          </div>

        </form>
      </div>
    </div>
  </div>
  
   
   
    
    <!-- Right -->

</section>
	
	<!-- <div class="footer card-footer bg-dark text-light text-center">Copyright@ NIDHI VADALIYA & PINAL RAGHVANI</div> -->
	<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>


