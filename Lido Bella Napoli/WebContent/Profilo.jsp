<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<meta charset="ISO-8859-1">
<title>Profilo</title>
	 <link href="assets/img/bn.png" rel="icon">
  	 <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

	  <!-- Google Fonts -->
	  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	
	  <!-- Vendor CSS Files -->
	  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
	  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
	  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
	  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
	  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
	
	  <!-- Template Main CSS File -->
	  <link href="assets/css/styleProfilo.css" rel="stylesheet">
	  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
</head>
<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top header-transparent">
		<div class="container d-flex align-items-center">

			<div class="logo mr-auto">
				<!---->
				<!-- Uncomment below if you prefer to use an image logo -->
				<h1 class="text-light">
					<a href="index.jsp"><img src="assets/img/bn.png" alt=""
						class="img-fluid"></a><span> Lido Bella Napoli</span>
				</h1>
			</div>

			<nav class="nav-menu d-none d-lg-block">
				<c:if test="${not loggatoAdmin}">
					<ul>
						<li class="active"><a href="index.jsp">Home</a></li>
						<li><a href="Ristorante.jsp">Restaurant</a></li>
						<li class="drop-down"><a href="">Services</a>
							<ul>
								<li><a href="#">Beach Resort</a></li>
								<li><a href="#">Disco</a></li>
							</ul></li>
						<li><a href="#team">Team</a></li>
						<li><a href="#contact">Contact Us</a></li>
					</ul>
				</c:if>
				<c:if test="${loggatoAdmin}">
					<ul>
						<li class="active"><a href="index.jsp">Home</a></li>
						<li><a href="Ristorante.jsp">Restaurant</a></li>
						<li class="drop-down"><a href="">Services</a>
							<ul>
								<li><a href="#">Beach Resort</a></li>
								<li><a href="#">Disco</a></li>
							</ul></li>
						<li><a href="review.jsp">Reviews</a></li>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="index.jsp">Home</a></li>
					</ul>
				</c:if>

			</nav>

			<div class="Profilo">
				<c:if test="${not loggato}">

				</c:if>
				<c:if test="${loggato && not loggatoAdmin}">
					<li>Benvenuto <a href="Profilo.jsp"><c:out
								value="${username}" /></a></li>
				</c:if>
				<c:if test="${loggatoAdmin}">
					<li>Benvenuto <a href="ProfiloAdmin.jsp"><c:out
								value="${username}" /></a></li>
				</c:if>
			</div>
			<c:if test="${loggato}">
				<div class="Logout-utente">
					<li><a href="Logout">Logout</a></li>
				</div>
			</c:if>

			<!-- .nav-menu -->

		</div>
	</header>
	<!-- End Header -->

	<div class="container emp-profile">
		<form method="post">
			<div class="row">
				<div class="col-md-4">
					<div class="profile-img">
						<img
							src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog"
							alt="" />
						<div class="file btn btn-lg btn-primary">
							Change Photo <input type="file" name="file" />
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="profile-head">
						<h5><c:out value="${username}"/></h5>
						<h6>Welcome to your profile</h6>
						
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="home-tab" data-toggle="tab" href="#home" role="tab"
								aria-controls="home" aria-selected="true">About</a></li>
							
						</ul>
					</div>
				</div>
				
			</div>
			<div class="row">
				<div class="col-md-4">
					
				</div>
				<div class="col-md-8">
					<div class="tab-content profile-tab" id="myTabContent">
						<div class="tab-pane fade show active" id="home" role="tabpanel"
							aria-labelledby="home-tab">
							<div class="row">
								<div class="col-md-6">
									<label>User Id</label>
								</div>
								<div class="col-md-6">
									<p><c:out value="${username}"/></p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Email</label>
								</div>
								<div class="col-md-6">
									<p><c:out value="${email}"/></p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Password</label>
								</div>
								<div class="col-md-6">
									<p><input type="password" value="<c:out value="${password}"/>"></p>
								</div>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</form>
	</div>
	
	<script src="assets/js/main.js"></script>
	<script src="assets/js/Profilo.js"></script>
	
</body>
</html>