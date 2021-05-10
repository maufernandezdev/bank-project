<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Iniciar Sesión</title>
<link rel="stylesheet" href="css/master.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.grid.min.css">
<link rel="stylesheet" href="css/all.min.css">
<script type="text/javascript" src="js/all.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
</head>
<body>

		<%
		String opacityUserContra = "opacity:0";
		String opacityUser = "opacity:0";
		String opacityContra = "opacity:0";
		%>


		<div class="login-container">
			<div class="login-box">
				<!-- <img src="img/logo.png" class="avatar" alt="Avatar Image"> -->
				<h3 class="text-center pb-4">Ingreso</h3>
				<form class="mt-4 rounded" action="ServletUsuario" method="get">
					<!-- USERNAME INPUT -->
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" name="usuario" class="form-control" placeholder="Usuario">					
					</div>
					<label class="msjerror" style="opacity:0">Complete el campo</label>
					<!-- PASSWORD INPUT -->
					<div class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="contrasenia" class="form-control" placeholder="Contraseña">
					</div>
					<label class="msjerror" style="opacity:0">Complete el campo</label>
						<input type="submit" name="btnIngresar" class="btn w-100 btn-warning rounded-pill mt-5" value="Ingresar">
						<label id="lblerror" class="msjerror-user" style="opacity:0">usuario y/o contraseña incorrecta</label>
				</form>
			</div>
		</div>	
		
		
		
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/all.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
		
	
	
		

</body>
</html>