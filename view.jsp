<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 

<%@ page import="java.util.*" %>
<%@ page import ="com.example.demo.Entitydemo.User"%>
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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="styles.css"><meta charset="UTF-8">

<title>Form Design</title>
</head>
<style>

body{
   height: 90vh;
   width: 100%;
   color: white;
   background-image : linear-gradient(to right, rgba(0,0,0,0.8), rgba(0,0,0,0.5)), url('/img/first.jpg'); 
 	background-size: cover;

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
table, th, td ,tr{
  border: 1px outset white;
  
}
th {
  background-color:LightGray;
  color:black;
}
.content{
	position:absolute; 
	/* top:50px; 
	bottom:50px;  */
	width:80%;
	left:0px; 
	right:0px; 
	border:1px white;
	/* overflow:auto;*/
	overflow-y: scroll;
}
.content::-webkit-scrollbar {
    display: none;
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
				 	<li class="nav-item active mr">
                      <a class="nav-link " href="/approve">Approved user</a>
                    </li>
                     <li class="nav-item mr">
                      <a class="nav-link" href="/disapprove">Disapproved user</a>
                    </li>
                     <li class="nav-item mr">
                      <a class="nav-link" href="/show">All user</a>
                    </li>
                    <li class="nav-item mr">
                      <a class="nav-link" href="/logout">LogOut</a>
                    </li>
                    </ul>
			</div>
		</div>

	</nav>

	<center><h1>User Detail</h1></center>
	<!-- <section class="container my-2 bg-light w-50 text-dark p-2"> -->
	<section class="content container my-2 bg-transperent w-70 text-light p-2 "> 
	 <center> 
	 
	 
	 <div class="container mt-3">
	 <p>Type something in the input field to search</p>
  <input class="form-control" id="myInput" type="text" placeholder="Search..">
 
  <br>
  
  
  
   
	 <form method='post'>
	 <table>	
	<div class="col-md-10">
                        
                        
                            <div>
                              <!--   <table class="table table-striped table-responsive-md text-light"> -->
                             <!--  <table  class="table table-responsive-md text-light"> -->
                             <table>
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Firstname</th>
                                            <th>Lastname</th>
                                            <th>Email</th>
                                            <th>Password</th>
                                            <th>Gender</th>
                                            <th>State</th>
                                            <th>City</th>
                                            <th>Status</th>
                                            <th>Edit..</th>
                                            <th>Delete</th>
                                             <th>Approve</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody id="myTable"><center>
                                        <c:forEach var="user" items="${user}">
                                            <tr>
                                                <td>${user.id}</td> 
                                            	<td>${user.firstName}</td>  
                                                <td>${user.lastName}</td> 
                                                <td>${user.email}</td>
                                                <td>${user.password}</td>
                                                <td>${user.gender}</td>
                                                <td>${user.stateid}</td>
                                                <td>${user.citiid}</td>
                                                <td>${user.approved}</td>
                                                
                                                <td>
													<a href="/edit/${user.id}" class="btn btn-dark">
													<i class="fas fa-user-edit ml-2"></i></a>
                                                </td>
                                                <td>
													  <a href="/delete/${user.id}" class="btn btn-dark" onclick="return confirm('Are you Sure to Delete Movie?')">
													  <i class="fas fa-user-times ml-2" ></i> </a>
                                                   
                                                </td>
                                                <td>
                                                   <a class='btn btn-dark' href="/approve/${user.id}">
                                                   <i class='fa fa-thumbs-up'></i></a>
                                                </td>
                                            </tr>
                                        </c:forEach></center>
                                    </tbody>
                                </table>
                            </div>
                       
                  
                </div>
	</div>
	</div>
	</table>
	</form>
</center> 
	</section>
	<div class="footer card-footer bg-light text-dark text-center ">   Copyright © NIDHI VADALIYA & PINAL RAGHVANI</div>
	<!-- Option 1: Bootstrap Bundle with Popper -->
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script src="/js/Style.js"></script>
	
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>


