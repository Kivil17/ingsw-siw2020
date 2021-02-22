<!DOCTYPE html>
<html>
<head>
<title>Cart: Checkout</title>
<meta charset="utf-8" />
<link href="assets/css/styleCarrello.css" rel="stylesheet">
<link href="assets/img/bn.png" rel="icon">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script src="assets/js/carrello.js"></script>
<script src="assets/js/jquery.shop.js"></script>
</head>

<body id="checkout-page" onload="aggiorna()">

<div id="site">
	<header id="masthead">
		<div class="logo mr-auto">
				<h1 class="text-light">
					<img src="assets/img/bn.png" alt="" class="img-fluid"><span>  Ristorante Pizzeria Bella Napoli</span>
				</h1>
		</div>
	</header>
	<div id="content">
		<h1>Checkout</h1>
			<table id="checkout-cart" class="shopping-cart">
			  <thead>
				<tr>
					<th scope="col">Product</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
				</tr>
			  </thead>
			  <tbody>
			  
			  </tbody>
			</table>
		 <div id="pricing">
			
			<p id="shipping">
				<strong>Shipping:</strong> <span id="sshipping">&euro;5</span>
			</p>
			
			<p id="sub-total">
				<strong>Total:</strong> <span id="stotal"><input onload="totale()" type="text" name="stotal" id="stotal" readonly="readonly"/></span>
			</p>
		 </div>
		 
		 <form action="" method="post" id="paypal-form">
		 	<h2>Your Details</h2>
		 	
		 	<fieldset id="fieldset-billing">
		 		<div>
		 			<label for="name">Name</label>
		 			<input type="text" name="name" id="name" data-type="string" data-message="This field cannot be empty" />
		 		</div>
		 		<div>
		 			<label for="email">Email</label>
		 			<input type="text" name="email" id="email" data-type="expression" data-message="Not a valid email address" />
		 		</div>
		 		<div>
		 			<label for="date">Date</label>
					<input type="date" value="2021-02-26" id="example-data-input">
		 		</div>
		 	</fieldset>
		 	
		 	
				<input type="hidden" name="cmd" value="_cart" />
				<input type="hidden" name="upload" value="1" />
				<input type="hidden" name="business" value="" />
			        
				<input type="hidden" name="currency_code" value="" />
				<input type="submit" id="paypal-btn" class="btn" value="Pay with PayPal" />
			</form>
	</div>
	
	

</div>

<footer id="site-info">
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

</body>
</html>	