<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Trustbank</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	crossorigin="anonymous"></script>
<!-- jquery y js para ddl -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.grid.min.css">

<link rel="stylesheet" href="css/all.min.css">
<!-- logo y estilos css personales -->
<link rel="stylesheet" media="screen" href="css/estilos_clientes.css">
<link rel="stylesheet" media="screen" href="css/simple-sidebar.css">
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
				href="index.jsp">CERRAR SESIӓN</a>
			<!-- meter icono con usuario logueado -->
		</div>
	</div>
	</nav>

	<!-- side bar con opciones -->

	<div class="d-flex" id="wrapper">

		<!-- Sidebar -->
		<div class="bg-light border-right" id="sidebar-wrapper">
			<div class="sidebar-heading">
				<i class="fas fa-user-circle"></i> ${userconect.usuario}
			</div>
			<div class="list-group list-group-flush">
				<a href="iniciousuario.jsp"
					class="list-group-item list-group-item-action bg-light"><i
					class="fas fa-wallet"></i> Cuentas</a> <a href="transferencias.jsp"
					class="list-group-item list-group-item-action bg-light"><i
					class="fas fa-exchange-alt"></i> Transferencias</a> <a
					href="prestamos.jsp"
					class="list-group-item list-group-item-action bg-light"><i
					class="fas fa-money-bill-alt"></i> Prestamos</a> <a
					href="perfilusuario.jsp"
					class="list-group-item list-group-item-action bg-light"><i
					class="fas fa-address-card"></i> Informaci�n personal</a>
			</div>
		</div>

		<!-- CONTENIDO PRINCIPAL -->


		<div class="tabla-main">
			<!-- header de cuentas -->
			<header class="header-cuentas">
			<div class="item-header-cuentas">
				<h1>CA $3.000,00</h1>
				<h2>N° 46486318</h2>
				<h3>CBU 00609727 30444008246261</h3>
			</div>
			</header>

			<!-- Filtro de los movimientos -->
			<div class="movimientos">
				<h3>Movimientos</h3>
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="true">
						Todos los movimientos <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
						<li><a href="#">Ingresos</a></li>
						<li><a href="#">Egresos</a></li>
						<li><a href="#">Something else here</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Separated link</a></li>
					</ul>
				</div>
			</div>


			<!-- cuentas -->
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active" href="#">Cuenta
						1</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Cuenta 2</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Cuenta 3</a>
				</li>
			</ul>

			<!-- tabla con historia -->
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">#</th>
						<th scope="col">Fecha</th>
						<th scope="col">Descripción</th>
						<th scope="col">Importe</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">1</th>
						<td>31/10/2020</td>
						<td>Transferencia</td>
						<td>-$2.000,00</td>
					</tr>
					<tr>
						<th scope="row">2</th>
						<td>24/10/2020</td>
						<td>Pago de préstamo</td>
						<td>-$5.000,00</td>

					</tr>
					<tr>
						<th scope="row">3</th>
						<td>22/10/2020</td>
						<td>Alta de cuenta</td>
						<td style="font-weight: bold;">$10.000,00</td>
					</tr>
				</tbody>
			</table>

		</div>



	</div>



	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"
		crossorigin="anonymous"></script>
	<!-- JavaScript Boorstrap -->
	<script type="text/javascript" src="js/all.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript"
		src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"></script>

	<!-- Scripts -->
	<!-- Toggle menu -->
	<script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });

  </script>
</body>
</html>