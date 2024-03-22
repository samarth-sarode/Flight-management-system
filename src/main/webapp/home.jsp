<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" 
    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="view.jsp">View</a>
        </li> 
        <li class="nav-item">
          <a class="nav-link" href="addflight.jsp">Add Flight</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="viewbookedtickits.jsp">View Booked Tickits</a>
        </li>

      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<form action="login.jsp" method="post" class="container-fluid form-validate needs-validation" id="login-form">
	<h1 style="align-items: center; text-align: center;">Login Here</h1>
	<div class="mb-3">
	  <label for="username" class="form-label">Username :</label>
	  <input type="text" class="form-control col-6" id="username" placeholder="Enter Username" name="username">
	</div>
	
	
	<div class="mb-3">
	  <label for="password" class="form-label">Password :</label>
	  <input type="password" class="form-control" id="password" placeholder="Enter Password" name="password">
	</div>

	
	<div class="col-12">
    	<button type="submit" class="btn btn-primary">Login</button>
  	</div>
  
  	<div class="col-12 mt-3" id="signupbtn" >
    	<button type="button" class="btn btn-primary">Signup</button>
  </div>
</form>


<form action="signup.jsp" method="post" class="container-fluid form-validate needs-validation" id="signup-form" style="display: none">
	<h1 style="align-items: center; text-align: center;">Signup Here</h1>
	<div class="mb-3">
	  <label for="username" class="form-label">Username :</label>
	  <input type="text" class="form-control col-6" id="username" placeholder="Enter Username" name="username">
	</div>
	
	<div class="mb-3">
	  <label for="email" class="form-label">Email :</label>
	  <input type="text" class="form-control" id="email" placeholder="Enter Username" name="email">
	</div>
	
	<div class="mb-3">
	  <label for="password" class="form-label">Password :</label>
	  <input type="password" class="form-control" id="password" placeholder="Enter Password" name="password">
	</div>

	<div class="mb-3">
	  <label for="repassword" class="form-label">Reenter Password :</label>
	  <input type="password" class="form-control" id="repassword" placeholder="Enter Password" name="repassword">
	</div>
	
	<div class="col-12">
    	<button type="submit" class="btn btn-primary">Sign Up</button>
  	</div>
    <div class="col-12 mt-3" id="loginbtn">
    	<button type="button" class="btn btn-primary">Login</button>
  	</div>
</form>


<script src="./script.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>