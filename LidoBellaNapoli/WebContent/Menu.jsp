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
<link href="assets/css/styleMenu.css" rel="stylesheet">

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
					<a href="Menu.jsp"><img src="assets/img/bn.png" alt="" class="img-fluid"></a><span>Bella Napoli</span>
				</h1>
			</div>

			<nav class="nav-menu d-none d-lg-block">
				<c:if test="${not loggatoAdmin}">
					<ul>
						<li><a href="Ristorante.jsp">Home Ristorante</a></li>
						<li><a href="#portfolio">Book a product</a></li>
						<li><a href="Prenotazione.jsp">Book a table</a></li>
						<li class="drop-down"><a href="">Services</a>
							<ul>
								<li><a href="#">Disco</a></li>
								<li><a href="#">Beach Resort</a></li>
							</ul></li>
						<li><a href="#contact">Contact Us</a></li>
	
					</ul>
				</c:if>
				<c:if test="${loggatoAdmin}">
					<ul>
						<li><a href="index.jsp">Home</a></li>
						<li><a href="MenuAdmin.jsp">prodotti prenotati</a></li>
						<li><a href="PrenotazioneAdmin.jsp">tavoli prenotati</a></li>
						<li><a href="#portfolio">Gallery</a></li>
						<li class="drop-down"><a href="">Services</a>
							<ul>
								<li><a href="#">Disco</a></li>
								<li><a href="#">Beach Resort</a></li>
							</ul></li>
						<li><a href="review.jsp">Reviews</a></li>
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
	</header>
	<!-- End Header -->

	<section id="hero">
		<div class="hero-container" data-aos="fade-up">
			<h1>OUR MENU</h1>
			<h2>BOOK NOW YOUR FAVOURITE FOOD</h2>
		</div>
		
	</section>

	<main id="main">

		<section id="portfolio" class="portfolio">
			<div class="container">

				<div class="section-title" data-aos="fade-in" data-aos-delay="100">
					<h2>Menu</h2>
				</div>

				<div class="row" data-aos="fade-in">
					<div class="col-lg-12 d-flex justify-content-center">
						<ul id="portfolio-flters">
							<li data-filter="*" class="filter-active">All</li>
							<li data-filter=".pizzeria">Pizzeria</li>
							<li data-filter=".cucina">Cucina</li>
							<li data-filter=".dessert">Dessert</li>
							<li data-filter=".bevande">Bevande</li>
							<li data-filter=".vini">I nostri vini</li>
						</ul>
					</div>
				</div>
				
				

				<div class="row portfolio-container" data-aos="fade-up">
					<div class="col-lg-12 portfolio-item pizzeria ">
						<div id="menu">
								<div class="titolo">
									<h2>PIZZE</h2>
								</div>
								<form class="form.add-to-cart" action="cart.jsp">
									<dl>
										<dt>Marinara</dt>
										<dd class="price"> &euro;3,00</dd>
										<dd class="ingredients">Solo Pomodoro, aglio, olio, origano, basilico.</dd>
									</dl>
									<div id="numeroProdotti-w">
										<p>Quantità: <span id="numeroProdotti">1</span></p>
										<a href="#" id="sub" class="button">-</a>
										<a href="#" id="add" class="button">+</a>
										<button type="submit" value="Carrello"></button>
									</div>
								</form>
								<dl>
									<dt>Margherita</dt>
									<dd class="price"> &euro;3,50</dd>
									<dd class="ingredients">Solo Pomodoro, aglio, olio, origano, basilico.</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Diavola</dt>
									<dd class="price"> &euro;4,50</dd>
									<dd class="ingredients">Pomodoro, Mozzarella, salamino.</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Rocco</dt>
									<dd class="price"> &euro;5,50</dd>
									<dd class="ingredients">Mozzarella, wurstel, patatine.</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Rotolo</dt>
									<dd class="price"> &euro;8,00</dd>
									<dd class="ingredients">Mozzarella, spek, rucola, grana.</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Regina</dt>
									<dd class="price"> &euro;8,50</dd>
									<dd class="ingredients">Pomodoro, Mozzarella, crudo, mozzarella a fette in uscita.</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Ripieno</dt>
									<dd class="price"> &euro;8,00</dd>
									<dd class="ingredients">Pomodoro, Mozzarella, ricotta, salame, cotto.</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Ripieno Fritto</dt>
									<dd class="price"> &euro;8,50</dd>
									<dd class="ingredients">Pomodoro, Mozzarella, Ricotta, Salame.</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Italiana</dt>
									<dd class="price"> &euro;8,50</dd>
									<dd class="ingredients">Mozzarella, Pomodoro fresco, rucola, crudo, grana.</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
						</div>
					</div>
					
					<div class="col-lg-12 portfolio-item cucina">
						<div id="menu">
								<div class="titolo">
									<h2>CUCINA</h2>
								</div>
								<dl>
									<dt>Spaghetti alle vongole</dt>
									<dd class="price"> &euro;10,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Spaghetti allo scoglio</dt>
									<dd class="price"> &euro;12,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Calamarata</dt>
									<dd class="price"> &euro;9,00</dd>
									<dd class="ingredients">Calamari, pomodorini, basilico.</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Paccheri con pescato del giorno</dt>
									<dd class="price"> &euro;10,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Risotto alla pescatora</dt>
									<dd class="price"> &euro;12,00</dd>
									<dd class="ingredients">Frutti di mare freschi con seppie e gamberetti.</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Gnocchi alla sorrentina</dt>
									<dd class="price"> &euro;8,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Penne all'arrabiata</dt>
									<dd class="price"> &euro;5,00</dd>
									<dd class="ingredients">Crudo, pomodorini, basilico, piccante.</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Trofie gorgonzola e noci</dt>
									<dd class="price"> &euro;8,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Maccheroni fatti in casa con spek e porcini</dt>
									<dd class="price"> &euro;8,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
						</div>
					</div>
				
					<div class="col-lg-12 portfolio-item dessert">
						<div id="menu">
								<div class="titolo">
									<h2>DESSERT</h2>
								</div>
								<dl>
									<dt>Pistacchio di bronte</dt>
									<dd class="price"> &euro;4,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Cioccolato</dt>
									<dd class="price"> &euro;4,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Nocciola</dt>
									<dd class="price"> &euro;4,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Rocher</dt>
									<dd class="price"> &euro;4,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Setteveli ricoperto di cioccolato</dt>
									<dd class="price"> &euro;4,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Setteveli alla nocciola</dt>
									<dd class="price"> &euro;4,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Setteveli al cacao</dt>
									<dd class="price"> &euro;4,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Degustando</dt>
									<dd class="price"> &euro;4,00</dd>
									<dd class="ingredients">Nocciola, nutella e cioccolato fondente.</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Tiramisù</dt>
									<dd class="price"> &euro;4,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<div class="logo mr-auto">
									<h1 class="text-light">
										<img src="assets/img/domenicopenna.png" alt="" class="img-fluid">
									</h1>
								</div>
						</div>
					</div>
				
					<div class="col-lg-12 portfolio-item bevande">
						<div id="menu">
								<div class="titolo">
									<h2>BEVANDE</h2>
								</div>
								<dl>
									<dt>Acqua Naturale 1lt</dt>
									<dd class="price"> &euro;2,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Acqua Effervescente 1lt</dt>
									<dd class="price"> &euro;2,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>CocaCola 1lt in vetro</dt>
									<dd class="price"> &euro;3,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>CocaCola 33cl in vetro</dt>
									<dd class="price"> &euro;2,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>CocaCola Zero 33cl in vetro</dt>
									<dd class="price"> &euro;2,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Fanta 33cl in vetro</dt>
									<dd class="price"> &euro;2,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Sprite 33cl in vetro</dt>
									<dd class="price"> &euro;2,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Menabrea 66cl</dt>
									<dd class="price"> &euro;3,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>Ichnusa 33cl</dt>
									<dd class="price"> &euro;3,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
						</div>
					</div>
					
					<div class="col-lg-12 portfolio-item vini">
						<div id="menu">
								<div class="titolo">
									<h2>VINI</h2>
								</div>
								<dl>
									<dt>TENUTA IUZZOLINI ROSATO</dt>
									<dd class="price"> &euro;9,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>TENUTA IUZZOLINI ROSSO</dt>
									<dd class="price"> &euro;9,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>TENUTA IUZZOLINI BIANCO</dt>
									<dd class="price"> &euro;9,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>CRITONE</dt>
									<dd class="price"> &euro;12,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>TERRE LONTANE</dt>
									<dd class="price"> &euro;12,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>MADRE GOCCIA</dt>
									<dd class="price"> &euro;12,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>PRIMAFILA</dt>
									<dd class="price"> &euro;15,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>MURANERA ROSSO</dt>
									<dd class="price"> &euro;25,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
								<dl>
									<dt>LUMARE ROSATO</dt>
									<dd class="price"> &euro;25,00</dd>
								</dl>
								<div id="numeroProdotti-w">
									<p>Quantità: <span id="numeroProdotti">1</span></p>
									<a href="#" id="sub" class="button">-</a>
									<a href="#" id="add" class="button">+</a>
									<a href="cart.jsp"><img src="assets/img/5a385efc4d3fd6.3527956115136437723164.png" alt="" class="img-fluid"></a>
								</div>
						</div>
					</div>
					
				</div>
				
			</div>
		</section>
		
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
								<p>Via corfÃ¹ 7, Rossano Scalo, C</p>
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
									<textarea class="form-control" name="message" rows="5"
										data-rule="required" data-msg="Please write something for us"
										placeholder="Message"></textarea>
									
								</div>
								<div class="mb-3">
									<div class="loading">Loading</div>
									<div class="error-message"></div>
									<div class="sent-message">Your message has been sent.
										Thank you!</div>
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
						<form action="">
							<input class="star star-5" id="star-5-2" type="radio" name="star" />
							<label class="star star-5" for="star-5-2"></label> <input
								class="star star-4" id="star-4-2" type="radio" name="star" /> <label
								class="star star-4" for="star-4-2"></label> <input
								class="star star-3" id="star-3-2" type="radio" name="star" /> <label
								class="star star-3" for="star-3-2"></label> <input
								class="star star-2" id="star-2-2" type="radio" name="star" /> <label
								class="star star-2" for="star-2-2"></label> <input
								class="star star-1" id="star-1-2" type="radio" name="star" /> <label
								class="star star-1" for="star-1-2"></label>
							<div class="rev-box">
								<textarea class="review" col="30" name="review" placeholder="Write a review."></textarea>
								<input type="submit" value="Send Review">
								<a href="https://www.facebook.com/Bella-Napoli-441293609380412"class="facebook"><i class="bx bxl-facebook"></i></a> 
								<a href="https://www.instagram.com/_pizzeriabellanapoli/"class="instagram"><i class="bx bxl-instagram"></i></a>
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
	<script src="assets/js/jquery.shop.js"></script>
	<script src="assets/js/prodotto.js"></script>
</body>

</html>