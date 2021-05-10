<%@ page language="java" contentType="text/html;charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Trustbank</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.grid.min.css">
<link rel="stylesheet" href="css/all.min.css">
<!-- logo y estilos css personales -->
<link rel="stylesheet" media="screen" href="css/estilos_clientes.css">
<link rel="icon" type="text/css" href="img/logofenix.ico">

<!-- Fuentes de Google -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap"
	rel="stylesheet">
</head>
<body>

	<!-- header -->
	<nav
		class="navbar navbar-expand-lg navbar-light bg-light navbar-toggleable-sm">
	<a class="navbar-brand" href="usuario.html"> <img
		src="img/logofenix.png" width="77" height="77"
		class="d-inline-block align-center" alt="Logo banco"> T r u s t
		b a n k
	</a>
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarTogglerDemo01"
		aria-controls="navbarTogglerDemo01" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
		<div class="navbar-nav ml-auto ml-auto text-center">
			<a class="item-nav" href="index.jsp">HOME</a> <a class="item-nav"
				href="login.jsp">INGRESAR</a>
		</div>
	</div>
	</nav>

	<!-- seccion principal -->
	<div class="container-main">

		<!-- Carousel -->
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- primera imagen -->
				<div class="carousel-item active">
					<img class="d-block w-100" src="img/homeof.jpg" alt="First slide">
					<div class="carousel-caption d-none d-md-block">
						<h2>Bienvenido</h2>
						<p id="parrafo-registro">Registrate y vivi la experiencia
							trust bank</p>
						<button class="btn-registro">Empieza aqui</button>
					</div>
				</div>
				<!-- segunda imagen -->
				<div class="carousel-item">
					<img class="d-block w-100" src="img/grupo1.jpg" alt="Second slide">
					<div class="carousel-caption d-none d-md-block">
						<h2>Prestamos personales</h2>
						<p id="parrafo-registro">¡No que quedes con las ganas!</p>
						<button class="btn-registro">Solicitar</button>
					</div>
				</div>
				<!-- tercera imagen -->
				<div class="carousel-item">
					<img class="d-block w-100" src="img/notebook2.jpg"
						alt="Third slide">
					<div class="carousel-caption d-none d-md-block">
						<h2>Trasferencias</h2>
						<p id="parrafo-registro">¡Tranferir dinero nunca fue tan
							fácil!</p>
						<button class="btn-registro">Tranferir</button>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

	</div>

	<!-- Footer -->
	<footer class="footer">


	<div class="contact" name="mi-contacto">
		<a name="mi-contacto">Contacto</a>
		<div class="content-contac">
			<div class="lugar">
				<span class="fas fa-map-marker-alt"></span> <span class="text">Buenos
					Aires, Argentina</span>
			</div>
			<div class="lugar">
				<span class="fas fa-phone-alt"></span> <span class="text">+54
					11-3366-2233</span>
			</div>
			<div class="lugar">
				<span class="fas fa-envelope"></span> <span class="text">info@trustbank.com</span>
			</div>
		</div>
	</div>

	</footer>


	<!-- Footer -->
	<div class="container-footer">

		<p>�Copyright - Pagina Web Realizada por Grupo 1 UTN FRGP. TODOS
			LOS DERECHOS RESERVADOS.</p>
	</div>


	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<!-- JavaScript Boorstrap -->
	<script type="text/javascript" src="js/all.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript"
		src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"></script>

	<!-- scripts -->
</body>
</html>