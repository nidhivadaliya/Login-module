<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<title>Form Design</title>
</head>
<style>
button {
	padding: 10px;
	margin-left: 300px;
}
.footer {
  position:fixed;
  bottom:0;
  left:0;
  width:100%;
  height: 50px;
 
}body {
	background-color: gray;
}
body{
   height: 90vh;
   width: 100%;
   color: white;
   background-image : linear-gradient(to right, rgba(0,0,0,0.8), rgba(0,0,0,0.5)), url('/img/first.jpg'); 
 	background-size: cover;

}

form {
	box-shadow: 2px 6px 100px #ffffff;
}

.open-popup {
	visibility: visible;
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
					
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                   
                    <li class="nav-item">
                      <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Contactus</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" aria-current="page" href="/logout">LogOut</a></li>
                    
                    
                  </ul> 
               

			</div>
		</div>
		
		

	</nav>
	<section class="container my-2 bg-transper w-50 text-light p-2">
	<h5>WELCOME ${unm}....</h5>
	</section>
	<div class="footer card-footer bg-light text-dark text-center ">Copyright@ NIDHI VADALIYA & PINAL RAGHVANI</div>
</body>
</html>