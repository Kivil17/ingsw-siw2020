<!DOCTYPE html>
<html>
<head>
<title>Cart: Checkout</title>
<meta charset="utf-8" />
<link href="assets/css/styleCarrello.css" rel="stylesheet">
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
				<strong>Shipping:</strong> <span id="sshipping"></span>
			</p>
			
			<p id="sub-total">
				<strong>Total:</strong> <span id="stotal"></span>
			</p>
		 </div>
		 
		 <form action="order.jsp" method="post" id="checkout-order-form">
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
					<input type="date" value="2021-01-15" id="example-data-input">
		 		</div>
		 	</fieldset>
		 	
		 	<p><input type="submit" id="submit-order" value="Confirm Order" class="btn" /></p>
		 
		 </form>
	</div>
	
	

</div>

<footer id="site-info">
		
</footer>

</body>
</html>	