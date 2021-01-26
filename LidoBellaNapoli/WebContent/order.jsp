<!DOCTYPE html>
<html>
<head>
<title>Cart: Your Order</title>
<meta charset="utf-8" />
<link href="assets/css/styleCarrello.css" rel="stylesheet">
<link href="assets/img/bn.png" rel="icon">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script src="assets/js/jquery.shop.js"></script>
</head>

<body id="checkout-page">

<div id="site">
	<header id="masthead">
		<div class="logo mr-auto">
				<h1 class="text-light">
					<img src="assets/img/bn.png" alt="" class="img-fluid"><span>  Ristorante Pizzeria Bella Napoli</span>
				</h1>
		</div>
	</header>
	<div id="content">
		<h1>Your Order</h1>
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
				<strong>Shipping:</strong> <span id="sshipping"></span>
			</p>
			
			<p id="sub-total">
				<strong>Total:</strong> <span id="stotal"></span>
			</p>
		 </div>
		 
		 <div id="user-details">
		 	<h2>Your Data</h2>
		 	<div id="user-details-content"></div>
		 </div>
		 
		 
		 
		 
<form id="paypal-form" action="" method="post">
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