<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<meta charset="ISO-8859-1">
<title>Lido Bella Napoli</title>
<link href="assets/css/styleProfilo.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div id="logo">
			<h1 class="logo">B<br>N</h1>
		</div>
		<div class="leftbox">
			<nav>
				<a id="profile" class="active"><i class="fa fa-user"><img src="assets/img/user.png"></i></a> 
				<a id="payment"><i class="fa fa-credit-card"><img src="assets/img/payment.png"></i></a> 
				<a id="privacy"><i class="fa fa-tasks"><img src="assets/img/privacy.png"></i></a> 
				<a id="settings"><i class="fa fa-cog"><img src="assets/img/impostazioni.png"></i></a>
			</nav>
		</div>
		<div class="rightbox">
			
			<div class="profile-userpic">
				<img src="assets/img/bn.png" class="img-responsive" alt="">
				<button type="submit" class="button-profile">update</button>
			</div>
			
			<div class="profile">
				<h1>Personal Info</h1>
				
				<h2>Username</h2>
				<p>user<!--<c:out value="${nomeUtente}"/>--><button class="btn">update</button></p>
				<h2>Email</h2>
				<p>email<!--<c:out value="${email}"/>--><button class="btn">update</button></p>
				<h2>Password</h2>
				<!-- prevedere il ripristino della password -->
				<p>•••••••<button class="btn">Change</button></p>
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

	<script src="assets/js/Profilo.js"></script>
</body>

</html>