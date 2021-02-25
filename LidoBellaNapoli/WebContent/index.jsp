<!DOCTYPE html>
<html lang="en">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Lido Bella Napoli</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
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
  <link href="assets/css/style.css" rel="stylesheet">


</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top header-transparent">
    <div class="container d-flex align-items-center">

      <div class="logo mr-auto">
       <!---->
        <!-- Uncomment below if you prefer to use an image logo -->
        <h1 class="text-light"><a href="index.jsp"><img src="assets/img/bn.png" alt="" class="img-fluid"></a><span>  Lido Bella Napoli</span></h1>
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
	            </ul>
	          </li>
	          <li><a href="#team">Team</a></li>
	          <li><a href="#contact">Contact Us</a></li>
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
	            </ul>
	          </li>
	          <li><a href="ReviewAdmin.jsp">Reviews</a></li>
	          
	        </ul>
	    </c:if>
	    
      </nav>
      
     <div class="Profilo">
     	<c:if test="${not loggato}">
     	
     	</c:if>
     	<c:if test="${loggato && not loggatoAdmin}">
      		<li>Benvenuto <a href="Profilo.jsp"><c:out value="${username}"/></a></li>
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
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container" data-aos="fade-up">
      <h1>WELCOME ON BOARD</h1>
      <h2>BOOK YOUR SWEET VACATIONS OR A TABLE IN OUR RESTAURANT</h2>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts  section-bg">
      <div class="container">

        <div class="row no-gutters">

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="icofont-simple-smile"></i>
              <span data-toggle="counter-up">232</span>
              <p><strong>Happy Clients</strong> all our satisfied clients</p>
            </div>
          </div>

        

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="icofont-live-support"></i>
              <span data-toggle="counter-up">1,463</span>
              <p><strong>Hours Of Support</strong> all our collaborator at your support</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-md-flex align-items-md-stretch">
            <div class="count-box">
              <i class="icofont-users-alt-5"></i>
              <span data-toggle="counter-up">1500</span>
              <p><strong>Users online</strong> number users online at now</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Counts Section -->

    

    <!-- ======= Testimonials Section =======  da aggiustare per recensioni -->
    <section id="testimonials" class="testimonials section-bg">
      <div class="container">

        <div class="section-title" data-aos="fade-in" data-aos-delay="100">
          <h2>Dicono di noi</h2>
        </div>

        <div class="owl-carousel testimonials-carousel">

          <div class="testimonial-item" data-aos="fade-up">
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              Struttura ben organizzata, tutte le varie aree si presentano molto invitanti. lo staff molto gentile e sempre disponibile, ideale per una vacanza cosi come per una cena, ristorante delizioso.
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
            <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
            <h3>mario Rossi</h3>
          </div>

          <div class="testimonial-item" data-aos="fade-up" data-aos-delay="100">
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              Ottimo stabilimento, una settimana di vacanza ideale nello stabilimento bella napoli. tra spiaggia e discoteca, dove divertimento e organizziamo sono al top e un ristorante delizioso con cibo di prima qualita.
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
            <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
            <h3>Sara Tivoli</h3>
          </div>

          <div class="testimonial-item" data-aos="fade-up" data-aos-delay="200">
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              Ristorante veramente buono! una serata all'insegna del buon cibo con uno staff veramente organizzato e sempre disponibile. e un dopo cena veramente divertente con una discoteca organizzata fino a tarda sera.
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
            <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
            <h3>francesco Trento</h3>
          </div>

          <div class="testimonial-item" data-aos="fade-up" data-aos-delay="300">
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              Stabilimento molto organizzato, non solo per le vacanze estive ma anche per serate piacevoli e divertenti tutto l'anno. con un ristorante veramente ottimo e una discoteca sempre piena di serate.
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
            <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
            <h3>Matteo Rende</h3>
          </div>

          <div class="testimonial-item" data-aos="fade-up" data-aos-delay="400">
            <p>
              <i class="bx bxs-quote-alt-left quote-icon-left"></i>
              Divertimento assicurato per una vacanza veramente da fare nello stabilimento bella napoli. ristorante ottimo, discoteca ricca di serate, spiaggia organizzatissima e molto attrezzata.
              <i class="bx bxs-quote-alt-right quote-icon-right"></i>
            </p>
            <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
            <h3>Giovanni Taranto</h3>
          </div>

        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="container">

        <div class="section-title" data-aos="fade-in" data-aos-delay="100">
          <h2>Team</h2>
          <p>la squadra che ha lavorato per voi</p>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="member" data-aos="fade-up">
              <div class="pic"><img src="assets/img/team/ciccio.png" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Francesco Trotta</h4>
                <span>Master of Pizza</span>
                <div class="social">
                  <a href="https://www.facebook.com/Kivil17"><i class="icofont-facebook"></i></a>
                  <a href="https://www.instagram.com/kivil17/"><i class="icofont-instagram"></i></a>
                  <a href="https://www.linkedin.com/in/francesco-trotta-3a0a78188/"><i class="icofont-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="member" data-aos="fade-up" data-aos-delay="150">
              <div class="pic"><img src="assets/img/team/io.png" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Giuseppe Santoro</h4>
                <span>Animator</span>
                <div class="social">
                  <a href=""><i class="icofont-facebook"></i></a>
                  <a href=""><i class="icofont-instagram"></i></a>
                  <a href=""><i class="icofont-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="member" data-aos="fade-up" data-aos-delay="300">
              <div class="pic"><img src="assets/img/team/artembitch.jpeg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Artem Savka</h4>
                <span>Lifeguard</span>
                <div class="social">
                  <a href=""><i class="icofont-facebook"></i></a>
                  <a href=""><i class="icofont-instagram"></i></a>
                  <a href=""><i class="icofont-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6">
            <div class="member" data-aos="fade-up" data-aos-delay="300">
              <div class="pic"><img src="assets/img/team/ugiur.jpeg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Cataldo Caligiuri</h4>
                <span>Bodyguard</span>
                <div class="social">
                  <a href=""><i class="icofont-facebook"></i></a>
                  <a href=""><i class="icofont-instagram"></i></a>
                  <a href=""><i class="icofont-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
			
		  <div class="col-lg-4 col-md-6">
            <div class="member" data-aos="fade-up" data-aos-delay="300">
              <div class="pic"><img src="assets/img/team/scarlett.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Scarlett Jhoannson</h4>
                <span>Manager of Francesco Trotta</span>
                <div class="social">
                  <a href=""><i class="icofont-facebook"></i></a>
                  <a href=""><i class="icofont-instagram"></i></a>
                  <a href=""><i class="icofont-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
          
           <div class="col-lg-4 col-md-6">
            <div class="member" data-aos="fade-up" data-aos-delay="300">
              <div class="pic"><img src="assets/img/team/emmaStone.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4>Emma Stone</h4>
                <span>Segretary</span>
                <div class="social">
                  <a href=""><i class="icofont-facebook"></i></a>
                  <a href=""><i class="icofont-instagram"></i></a>
                  <a href=""><i class="icofont-linkedin"></i></a>
                </div>
              </div>
            </div>
          </div>
          
        </div>

      </div>
    </section><!-- End Team Section -->

    <!-- ======= Contact Section ======= -->
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
								<p>Via corfu' 7, Rossano Scalo, C</p>
							</div>
						</div>

						<div class="col-lg-3 col-md-6">
							<div class="info-box  mb-4">
								<i class="bx bx-envelope"></i>
								<h3>Email Us</h3>
								<p>bellanapoli198717@gmail.com</p>
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
							<iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3073.4769013198775!2d16.635944!3d39.6164647!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x13409b65ae124733%3A0xd5b0bd02f9a4220f!2sBella%20Napoli%20Rossano!5e0!3m2!1sit!2sit!4v1608808366058!5m2!1sit!2sit" frameborder="0" style="border: 0; width: 100%; height: 384px;" allowfullscreen></iframe>
						</div>

						<div class="col-lg-6">
							<form action="Contact" method="GET" >
								<div class="form-row">
									
									<div class="col-md-6 form-group">
										<input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars"></input>
										
									</div>
									<div class="col-md-6 form-group">
										<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email"></input>
										
									</div>
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject"></input>
									
								</div>
								<div class="form-group">
									<input type="hidden"  name="pagina" id="pagina" value="Index"/>
									
								</div>
								<div class="form-group">
									<textarea class="form-control" name="message" rows="5"
										data-rule="required" data-msg="Please write something for us"
										placeholder="Message"></textarea>
									
								</div>
								<div class="text-center">
									<button type="submit">Send Message</button>
								</div>
							</form>
						</div>

					</div>

				</div>
			</section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6">
            <div class="footer-info" data-aos="fade-up" data-aos-delay="50">
              <h3>Our story</h3>
              <p>lo stabilimento bella napoli nasce nel 1987. nacque la pizzeria da li, passo dopo passo siamo riusciti a creare tutto questo! E stato un progetto nato cosi come un sogno, nessuno di noi si sarebbe aspettato di riuscire a creare uno stabilimento cosi forte. Ma e nato soprattutto con l'idea di dare a tutti i nostri clienti il meglio, per far splendere la nostra citta e vedere un sorriso sui vostri visi. Ad oggi siamo gli unici ad offrire un servizio cosi ampio con ristorante/pizzeria, discoteca, spiaggia con la speranza di poterci ingrandire ogni giorno per offrire sempre il meglio a noi ma soprattuto a voi. Venite a trovarci non ve ne pentirete. STABILIMENTOBELLANAPOLI!</p>
              <div class="social-links mt-3">
                <a href="https://www.facebook.com/Bella-Napoli-441293609380412" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="https://www.instagram.com/_pizzeriabellanapoli/" class="instagram"><i class="bx bxl-instagram"></i></a>
                
              </div>
            </div>
          </div>
	
		 <img src="assets/img/copertina.jpg">
			
          
        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Bella Napoli</span></strong>. All Rights Reserved
      </div>
    </div>
  </footer><!-- End Footer -->

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

</body>

</html>