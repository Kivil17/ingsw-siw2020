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
								<li><a href="Lido.jsp">Beach Resort</a></li>
								<li><a href="Disco.jsp">Disco</a></li>
							</ul></li>
					</ul>
				</c:if>
				<c:if test="${loggatoAdmin}">
					<ul>
						<li class="active"><a href="index.jsp">Home</a></li>
						<li><a href="Ristorante.jsp">Restaurant</a></li>
						<li class="drop-down"><a href="#">Services</a>
							<ul>
								<li><a href="Lido.jsp">Beach Resort</a></li>
								<li><a href="Disco.jsp">Disco</a></li>
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
		<form action="SalvaDatiProfilo" method="post">
			<div class="row">
				<div class="col-md-4">
					<div class="profile-img">
						<img src="assets/img/user1.png"/>
						
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
						<input name="usernameProfiloOld" id="usernameProfiloOld" type="hidden" value="<c:out value="${username}" />"/>
						<input type="submit" value="SalvaDati">
						
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
									<label>User Id:</label>
								</div>
								<div class="col-md-6">
									<p>
										<input name="usernameProfilo" id="usernameProfilo" value="<c:out value="${username}"/>"/>
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Email:</label>
								</div>
								<div class="col-md-6">
									<p>
										<input name="emailProfilo" id="emailProfilo" value="<c:out value="${email}"/>"/>
									</p>
								</div>
							</div>
							<div class="row">
								<div class="col-md-6">
									<label>Password:</label>
								</div>
								<div class="col-md-6">
									<p>
										<input name="passwordProfilo" id="passwordProfilo" value="<c:out value="${password}"/>"/>
									</p>
								</div>
							</div>
							
							<h1>Payment Info</h1>
							
								<div class="row">
									<div class="col-md-6">
										<label>Payment Method:</label>
									</div>
									<div class="col-md-6">
										<p>1111 1111 1111 1111</p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<label>Billing Address</label>
									</div>
									<div class="col-md-6">
										<p>1234 Example Ave | Seattle, WA</p>
									</div>
								</div>
								
							<h1>User Settings</h1>
								<div class="row">
									<div class="col-md-6">
										<br>
										<label>View Terms of Use</label>
									</div>
									<div class="col-md-6">
										<p>
											<br>
											<input type="button" onclick="location.href='visualizzaDocumento.jsp'" value="view"/>
										</p>
									</div>
								</div>
								<div class="row">
									<form action="EliminaUtente" method="GET">
											<div class="col-md-6">
												<br>
												<label>Cancel Your Subscription</label>
											</div>
											<div class="col-md-6">
													<p>
														<br>
														<input type="submit" value="cancel"/>
													</p>
											</div>
									</form>
								</div>
						</div>
						
					</div>
				</div>
			</div>
		</form>
	</div>
	
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>
	<script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
	<script src="assets/vendor/counterup/counterup.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/venobox/venobox.min.js"></script>
	<script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	
	
	
	<script src="assets/js/Profilo.js"></script>
	
</body>
</html>