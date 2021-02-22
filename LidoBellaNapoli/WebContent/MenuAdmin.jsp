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
<link href="assets/css/styleMenuAdmin.css" rel="stylesheet">


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
						<li class="drop-down"><a href="#">Services</a>
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
						<li><a href="ReviewAdmin.jsp">Reviews</a></li>
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
			<h2>MENAGE ORDER PRODUCT</h2>
		</div>
		
	</section>

	<main id="main">
	
			<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			  <div class="container">
			    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
			      <span class="navbar-toggler-icon"></span>
			    </button>
			    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			      <a class="navbar-brand" href="#"><b>Lista Ordinazioni Prodotti</b></a>
			    </div>
			  </div>
			</nav>
			
			
			<div class="container">
				<!-- <form action="MenuAdmin" method="post"> -->
				  <div class="row">
				    <div class="col">
				    <table id='my_table' class='table'>

   							<thead>
					          <tr>
					            <th scope="col">IdOrdine</th>
					            <th scope="col">Nome Utente</th>
					            <th scope="col">Prezzo</th>
					          </tr>
				       		</thead>

    						<tbody>
								<tr>
									<!--  
									<td><c:out value="${listIdOrdine}" /></td>

									<td><c:out value="${listNomeUtente}" /></td>

									<td><c:out value="${listPrezzo}" /></td>
									-->
								</tr>
    						</tbody>

					</table><br/>

					<input type='submit' value='Ultimi Prodotti Prenotati' onClick="caricaDati('my_table')"/>
				    
				   
				    </div>  
				      
				  </div>
			  <!-- </form> -->
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
	<script src="assets/js/menuAdmin.js"></script>

</body>

</html>