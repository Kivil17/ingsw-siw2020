<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
	<meta charset="ISO-8859-1">
	<title>Lido Bella Napoli</title>
	<link href="assets/css/styleProfilo.css" rel="stylesheet">
	
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	
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
</head>
<body>

	<header id="header" class="fixed-top header-transparent">
    	<div class="container d-flex align-items-center">
			<div class="logo mr-auto">
				<h1 class="text-light">
					<a href="index.jsp"><img src="assets/img/bn.png" alt="" class="img-fluid"></a><span> Ristorante Pizzeria Bella Napoli</span>
				</h1>
			</div>
			<nav class="nav-menu d-none d-lg-block">
				<ul>
					<li class="active"><a href="index.jsp">Home</a></li>
					<li><a href="Ristorante.jsp">Restaurant</a></li>
					<li class="drop-down"><a href="">Services</a>
						<ul>
							<li><a href="#">Beach Resort</a></li>
							<li><a href="#">Disco</a></li>
						</ul></li>
					<li><a href="review.jsp">Reviews</a></li>
				</ul>
			</nav>
			<div class="Profilo">
				<c:if test="${not loggato}">
				</c:if>
				<c:if test="${loggato && not loggatoAdmin}">
					<li>Benvenuto <a href="Profilo.jsp"><c:out value="${username}" /></a></li>
				</c:if>
			</div>
			<c:if test="${loggato}">
				<div class="Logout-utente">
					<li><a href="Logout">Logout</a></li>
				</div>
			</c:if>
		</div>
  </header>
	
	<div class="container-profile">
		<div class="leftbox">
			<nav>
				<a id="profile" class="active"><i class="fa fa-user"><img src="assets/img/user.png"></i></a> 
				<a id="payment"><i class="fa fa-credit-card"><img src="assets/img/payment.png"></i></a> 
				<a id="privacy"><i class="fa fa-tasks"><img src="assets/img/privacy.png"></i></a> 
				<a id="settings"><i class="fa fa-cog"><img src="assets/img/impostazioni.png"></i></a>
			</nav>
		</div>
		<div class="rightbox">
			
			<div class="profile">
				<div class="profile-userpic">
					<img src="assets/img/bn.png" class="img-responsive" alt="">
					<button type="submit" class="button-profile">update</button>
				</div>
				<h1>Personal Info</h1>
				<h2>
					Username
				</h2>
				<p>
					nome<!--<c:out value="${nomeUtente}"/>-->
					<button class="btn">update</button>
				</p>
				<h2>
					Email
				</h2>
				<p>
					email<!--<c:out value="${email}"/>-->
					<button class="btn">update</button>
				</p>
				<h2>
					Password
				</h2>
				<p>
					•••••••<!-- prevedere riprisino password-->
					<button class="btn">change</button>
				</p>
			</div>

			<div class="payment noshow">
				<h1>Payment Info</h1>
				<h2>Payment Method</h2>
				<p>
					Mastercard •••• •••• •••• 0000
					<button class="btn">update</button>
				</p>
				<h2>Billing Address</h2>
				<p>
					1234 Example Ave | Seattle, WA
					<button class="btn">change</button>
				</p>
				<h2>Zipcode</h2>
				<p>999000</p>
				<h2>Billing History</h2>
				<p>
					2018
					<button class="btn">view</button>
				</p>
				<h2>Redeem Gift Subscription</h2>
				<p>
					<input type="text" placeholder="Enter Gift Code"></input>
					<button class="btn">Redeem</button>
				</p>
			</div>

			<div class="privacy noshow">
				<h1>Privacy Settings</h1>
				<h2>
					Manage Email Notifications
					<button class="btn">manage</button>
				</h2>
				<p></p>
				<h2>
					Manage Privacy Settings
					<button class="btn">manage</button>
				</h2>
				<p></p>
				<h2>
					View Terms of Use
					<button class="btn">view</button>
				</h2>
				<p></p>
				<h2>
					Personalize Ad Experience
					<button class="btn">update</button>
				</h2>
				<p></p>
				<h2>
					Protect Your Account
					<button class="btn">protect</button>
				</h2>
				<p></p>
			</div>
			
			<div class="settings noshow">
				<h1>Account Settings</h1>
				<h2>
					Sync Watchlist to My Stuff
					<button class="btn">sync</button>
				</h2>
				<p></p>
				<h2>
					Hold Your Subscription
					<button class="btn">hold</button>
				</h2>
				<p></p>
				<h2>
					Cancel Your Subscription
					<button class="btn">cancel</button>
				</h2>
				<p></p>
				<h2>
					Your Devices
					<button class="btn">Manage Devices</button>
				</h2>
				<p></p>
				<h2>
					Referrals
					<button class="btn">get $10</button>
				</h2>
				<p></p>
			</div>

		</div>
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
	<script src="assets/js/main.js"></script>
</body>

</html>