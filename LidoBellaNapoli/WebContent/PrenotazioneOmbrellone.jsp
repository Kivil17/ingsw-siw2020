<!DOCTYPE html>
<html lang="en">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
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
<link href="assets/css/styleOmbrellone.css" rel="stylesheet">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script src="assets/js/jquery.shop.js"></script>


</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="fixed-top ">
		<div class="container d-flex align-items-center">

			<div class="logo mr-auto">
				<h1 class="text-light">
					<a href="Prenotazione.jsp"><img src="assets/img/bn.png" alt=""
						class="img-fluid"></a><span>Bella Napoli</span>
				</h1>

			</div>

			<nav class="nav-menu d-none d-lg-block">
				<c:if test="${not loggatoAdmin}">
					<ul>
						<li><a href="Lido.jsp">Home Beach Resort</a></li>
						<li><a href="PrenotazioneOmbrellone.jsp">Book a Umbrella</a></li>
						<li class="drop-down"><a href="">Services</a>
							<ul>
								<li><a href="Disco.jsp">Disco</a></li>
								<li><a href="Ristorante.jsp">Ristorante</a></li>
							</ul></li>
						<li><a href="#contact">Contact Us</a></li>
					</ul>
				</c:if>
				<c:if test="${loggatoAdmin}">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="PrenotazioneAdmin.jsp">ombrelloni prenotati</a></li>
						<li><a href="#portfolio">Gallery</a></li>
						<li class="drop-down"><a href="">Services</a>
							<ul>
								<li><a href="Disco.jsp">Disco</a></li>
								<li><a href="Ristorante.jsp">Ristorante</a></li>
							</ul></li>
						<li><a href="ReviewAdmin.jsp">Reviews</a></li>
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

	<section id="hero">
		<div class="hero-container" data-aos="fade-up">
			<h1>BOOK OUR UMBRELLA</h1>
			<h2>BOOK NOW YOUR FAVOURITE UMBRELLA</h2>
		</div>

	</section>

	<main id="main">
		<h1></h1>
		<section id="info-w">
			<div>
				Ombrellone selezionato <span id="ombrelloneSelezionato">-</span>
			</div>
		</section>

		<section id="ombrelloni-w"></section>

		<p id="message-status"></p>

		<form action="PrenotazioneTavolo" method="get">
			<div class="form-item">
				<input type="text" name="nome" class="input" placeholder="Name"
					required>
			</div>
			<div class="form-item">
				<input type="email" name="email" class="input" placeholder="Email"
					required>
			</div>
			<label for="example-date-input" class="col-2 col-form-label">Date</label>
			<div class="form-item">
				<input class="input" type="date" value="2021-01-15"
					id="example-data-input">
			</div>

			<input type="hidden" name="selezionato" id="selezionato" /> <input
				type="hidden" name="pagina" id="pagina" value="Ombrellone" />

			<div class="form-item">
				<input type="submit" id="prenota" class="button Prenota"
					value="Prenota e paga presso il locale"> <input
					type="submit" id="prenota" class="button Prenota"
					value="Prenota e paga online">
			</div>
		</form>
		<form action="assets/img/fake-paypal.jpg" method="post"
			target="_blank">
			<input type="submit" id="prenota" class="button Prenota"
				value="Inserisci dati Paypal">
		</form>

		<section id="contact" class="contact section-bg">
			<div class="container">

				<div class="section-title" data-aos="fade-in" data-aos-delay="100">
					<h2>Contact</h2>
					<p>for any questions conctact us here.</p>
				</div>

				<div class="row" data-aos="fade-up" data-aos-delay="100">
					<div class="col-lg-6">
						<div class="info-box mb-4">
							<i class="bx bx-map"></i>
							<h3>Our Address</h3>
							<p>Via corf? 7, Rossano Scalo, C</p>
						</div>
					</div>

					<div class="col-lg-3 col-md-6">
						<div class="info-box  mb-4">
							<i class="bx bx-envelope"></i>
							<h3>Email Us</h3>
							<p>lidoBellaNapoli@outlook.it</p>
						</div>
					</div>

					<div class="col-lg-3 col-md-6">
						<div class="info-box  mb-4">
							<i class="bx bx-phone-call"></i>
							<h3>Call Us</h3>
							<p>5589 55488 55</p>
						</div>
					</div>

				</div>

				<div class="row" data-aos="fade-up" data-aos-delay="200">

					<div class="col-lg-6 ">
						<iframe class="mb-4 mb-lg-0"
							src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3073.4769013198775!2d16.635944!3d39.6164647!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x13409b65ae124733%3A0xd5b0bd02f9a4220f!2sBella%20Napoli%20Rossano!5e0!3m2!1sit!2sit!4v1608808366058!5m2!1sit!2sit"
							frameborder="0" style="border: 0; width: 100%; height: 384px;"
							allowfullscreen></iframe>
					</div>

					<div class="col-lg-6">
						<form action="Contact" method="GET" role="form"
							class="php-email-form">
							<div class="form-row">

								<div class="col-md-6 form-group">
									<input type="text" name="name" class="form-control" id="name"
										placeholder="Your Name" data-rule="minlen:4"
										data-msg="Please enter at least 4 chars"></input>
									<div class="validate"></div>
								</div>
								<div class="col-md-6 form-group">
									<input type="email" class="form-control" name="email"
										id="email" placeholder="Your Email" data-rule="email"
										data-msg="Please enter a valid email"></input>
									<div class="validate"></div>
								</div>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="subject"
									id="subject" placeholder="Subject" data-rule="minlen:4"
									data-msg="Please enter at least 8 chars of subject"></input>
								<div class="validate"></div>
							</div>
							<div class="col-md-6 form-group">
								<input type="hidden" name="flag" id="flag" value="Ristorante"></input>
								<div class="validate"></div>
							</div>
							<div class="form-group">
								<textarea class="form-control" name="message" rows="5"
									data-rule="required" data-msg="Please write something for us"
									placeholder="Message"></textarea>
								<div class="validate"></div>
							</div>
							<div class="mb-3">
								<div class="loading">Loading...</div>
								<div class="error-message"></div>
								<div class="sent-message">Your message has been sent.
									Thank you!</div>
							</div>
							<div class="form-group">
										<input type="hidden" name="pagina" id="pagina" value="PrenotazioneOmbrellone"></input>
									</div>
							<div class="text-center">
								<button type="submit">Send Message</button>
							</div>
						</form>
					</div>

				</div>

			</div>
		</section>

		<section id="review">

			<div class="section-title" data-aos="fade-in" data-aos-delay="100">
				<h2>Review</h2>
			</div>

			<div class="cont">
				<div class="title">
					<h1>
						Bella<span>Napoli</span>
					</h1>
				</div>
				<div class="stars">
					<form action="AddReview" method="get">
						<input class="star star-5" id="star-5-2" onclick="CambiaId(5)"
							type="radio" name="star" /> <label class="star star-5"
							for="star-5-2"></label> <input class="star star-4" id="star-4-2"
							onclick="CambiaId(4)" type="radio" name="star" /> <label
							class="star star-4" for="star-4-2"></label> <input
							class="star star-3" id="star-3-2" onclick="CambiaId(3)"
							type="radio" name="star" /> <label class="star star-3"
							for="star-3-2"></label> <input class="star star-2" id="star-2-2"
							onclick="CambiaId(2)" type="radio" name="star" /> <label
							class="star star-2" for="star-2-2"></label> <input
							class="star star-1" id="star-1-2" onclick="CambiaId(1)"
							type="radio" name="star" /> <label class="star star-1"
							for="star-1-2"></label> <input type="hidden" name="valore"
							id="valore" /> <input type="hidden" name="pagina" id="pagina"
							value="PrenotazioneOmbrellone" />
						<div class="rev-box">
							<textarea name="message" id="message" class="review" col="30"
								name="review" placeholder="Write a review."></textarea>
							<input type="submit" value="Send Review"> <a
								href="https://www.facebook.com/Bella-Napoli-441293609380412"
								class="facebook"><i class="bx bxl-facebook"></i></a> <a
								href="https://www.instagram.com/_pizzeriabellanapoli/"
								class="instagram"><i class="bx bxl-instagram"></i></a>
						</div>
					</form>
				</div>
			</div>
		</section>
	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">

		<div class="footer-top">
			<div class="container"></div>
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
	<script src="assets/js/prenotazioneOmbrellone.js"></script>

</body>

</html>