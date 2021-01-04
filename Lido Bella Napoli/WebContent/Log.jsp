<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!DOCTYPE html>
<html lang="en">

	<title>Login</title>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<head>
		<script src="jquery/jquery.min.js"></script>
		<!---- jquery link local dont forget to place this in first than other script or link or may not work ---->
		
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!---- boostrap.min link local ----->
		
		<link rel="stylesheet" href="css/style.css">
		<!---- boostrap.min link local ----->

		<script src="js/bootstrap.min.js"></script>
		<!---- Boostrap js link local ----->
		
		<link rel="icon" href="images/icon.png" type="image/x-icon" />
		<!---- Icon link local ----->
		
		<link href="assets/css/styleLogin.css" rel="stylesheet">

		<link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
		<!---- Font awesom link local ----->
	</head>
	<body>
	<div class="container-fluid">
		<div class="container">
			<h2 class="text-center" id="title">Lido Bella Napoli</h2>
 			<hr>
			<div class="row">
				<div class="col-md-5">
					<!-- aggiornare l'indirizzamento del bottone-->
 					<form role="form" action="Registrazione" method="post">
						<fieldset>							
							<p class="text-uppercase pull-center"><b>SIGN UP</b></p>	
 							<div class="form-group">
								<input type="text" name="username" id="username" class="form-control input-lg" placeholder="Username">
							</div>

							<div class="form-group">
								<input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email Address">
							</div>
							<div class="form-group">
								<input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password">
							</div>
								<div class="form-group">
								<input type="password" name="password2" id="password2" class="form-control input-lg" placeholder="Repeat Password">
							</div>
							<div class="form-check">
								<label class="form-check-label">
								  <input type="checkbox" class="form-check-input">
								  By Clicking register you're agree to our policy & terms
								</label>
							  </div>
 							<div>
 								<input type="submit" class="btn btn-md" value="Register">
 							</div>
						</fieldset>
					</form>
				</div>
				
				<div class="col-md-2">
					<!-------null------>
				</div>
				
				<div class="col-md-5">
 				 		<form role="form" action= "Login" method= "post">
						<fieldset>							
							<p class="text-uppercase"><b>Login using your account:</b></p>	
 								
							<div class="form-group">
								<input type="email" name="username" id="username" class="form-control input-lg" placeholder="Username">
							</div>
							<div class="form-group">
								<input type="password" name="password" id="password" class="form-control input-lg" placeholder="Password">
							</div>
							<div>
								<input type="submit" class="btn btn-md" value="Sign In">
							</div>
								 
 						</fieldset>
				</form>	
				</div>
			</div>
		</div>
	</div>
	</body>
	 

</html>