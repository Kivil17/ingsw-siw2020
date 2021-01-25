<!DOCTYPE html>
<html lang="en">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Ristorante Pizzeria Bella Napoli</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/bn.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="assets/vendor/aos/aos.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/styleRistorante.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: Squadfree - v2.3.0
  * Template URL: https://bootstrapmade.com/squadfree-free-bootstrap-template-creative/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top ">
		<div class="container d-flex align-items-center">

			<div class="logo mr-auto">
				<h1 class="text-light">
					<a href="Ristorante.jsp"><img src="assets/img/bn.png" alt=""class="img-fluid"></a><span>Bella Napoli</span>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
			</div>

			<nav class="nav-menu d-none d-lg-block">
				<c:if test="${not loggatoAdmin}">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="Menu.jsp">Book a product</a></li>
						<li><a href="Prenotazione.jsp">Book a table</a></li>
						<li><a href="#portfolio">Gallery</a></li>
						<li class="drop-down"><a href="">Services</a>
							<ul>
								<li><a href="Disco.jsp">Disco</a></li>
								<li><a href="Lido.jsp">Beach Resort</a></li>
							</ul></li>
						<li><a href="#contact">Contact Us</a></li>
	
					</ul>
				</c:if>
				<c:if test="${loggatoAdmin}">
					<ul>
						<li><a href="Ristorante.jsp">Home Ristorante</a></li>
						<li><a href="MenuAdmin.jsp">prodotti prenotati</a></li>
						<li><a href="PrenotazioneAdmin.jsp">tavoli prenotati</a></li>
						<li class="drop-down"><a href="">Services</a>
							<ul>
								<li><a href="Disco.jsp">Disco</a></li>
								<li><a href="Lido.jsp">Beach Resort</a></li>
							</ul></li>
						<li><a href="review.jsp">Reviews</a></li>
					</ul>
				</c:if>
			</nav>

			<div class="Profilo">
				<c:if test="${not loggato}">

				</c:if>
				<c:if test="${loggato && not loggatoAdmin}">
					<li>Benvenuto <a href="Profilo.jsp"><c:out value="${username}" /></a></li>
				</c:if>
				<c:if test="${loggatoAdmin}">
					<li>Benvenuto <a href="ProfiloAdmin.jsp"><c:out value="${username}"/></a></li>
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

	<section id="hero">
		<div class="hero-container" data-aos="fade-up">
			<h2>ALL USER REVIEW</h2>
		</div>
		
	</section>

	<main id="main">

		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			  <div class="container">
			    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			      <a class="navbar-brand" href="#"><b>Lista Recensioni Utenti</b></a>
			    </div>
			  </div>
			</nav>
			
			
			<div class="container">
			  <form action="ScaricareRecensioni" method="get">
				  <div class="row">
				    <div class="col">
				      <table class="table">
				        <thead>
				          <tr>
				            <th scope="col">Tipo recensione</th>
				            <th scope="col">Nome Utente</th>
				            <th scope="col">valutazione</th>
				            <th scope="col">messaggio</th>
				          </tr>
				        </thead>
				        <tbody>
				          <tr>
				          <!-- da implementare in js -->
				            <th scope="row">1</th>
				            <td>Mark</td>
				            <td>3</td>
				            <td>ssgsvxgsxhjsxhshxbs</td>
				           <!-- da implementare in js -->
				          </tr>
				          
				        </tbody>
				      </table>
				    </div>    
				  </div>
				<!-- oppure on loading sul file javascript di questa pagina che chaima la servlet per scaricare i dati necessari  -->
				<div class="bottone">
					<input type="submit" id="button">
				</div>
			  </form>
			</div> 
			
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">
		
		<div class="footer-top">
			<div class="container">
				
			</div>
		</div>

		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>1991</span></strong>. All Rights
				Reserved
			</div>
			<div class="credits">
				<!-- All the links in the footer should remain intact. -->
				<!-- You can delete the links only if you purchased the pro version. -->
				<!-- Licensing information: https://bootstrapmade.com/license/ -->
				<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/squadfree-free-bootstrap-template-creative/ -->
			</div>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

	<!-- Vendor JS Files -->
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

	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>
	<script src="assets/js/recensione.js"></script>

</body>

</html>