<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Trustbank</title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
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
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">

  
</head>
<body>
<!-- header -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-toggleable-sm">
  <a class="navbar-brand" href="usuario.html">
    <img src="img/logofenix.png" width="77" height="77" class="d-inline-block align-center" alt="Logo banco">
    T r u s t b a n k
  </a>
  <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <div class="navbar-nav ml-auto ml-auto text-center">
      <a class="item-nav" href="usuario.html">HOME</a>
      <a class="item-nav" href="usuario.html">CERRAR SESIÓ“N</a>
      <!-- meter icono con usuario logueado -->
    </div>
  </div>
</nav>

<!-- side bar con opciones -->

<div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading"><i class="fas fa-user-circle"></i>
      Nombre de usuario</div>
      <div class="list-group list-group-flush">
        <a href="iniciousuario.jsp" class="list-group-item list-group-item-action bg-light"><i class="fas fa-wallet"></i> Cuentas</a>
        <a href="transferencias.jsp" class="list-group-item list-group-item-action bg-light"><i class="fas fa-exchange-alt"></i>
         Transferencias</a>
        <a href="prestamos.jsp" class="list-group-item list-group-item-action bg-light"><i class="fas fa-money-bill-alt"></i> Prestamos</a>
        <a href="perfilusuario.jsp" class="list-group-item list-group-item-action bg-light"><i class="fas fa-address-card"></i> Información personal</a>
      </div>
    </div>

    <!-- CONTENIDO PRINCIPAL -->

    
    <div class="main-prestamos">


  <h1>Pagar prestamo</h1>
  <!-- tabla con historia -->
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Número de prestamos</th>
      <th scope="col">Fecha de vencimiento</th>
      <th scope="col">valor cuota</th>
      <th scope="col">Saldo restante</th>
      <th scope="col">Cuotas restantes</th>
      <th scope="col">Cuota a pagar</th>
      <th scope="col">Cuenta pago</th>
      <th scope="col"></th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>05/11/2020</td>
      <td>$2.000,00</td>
      <td>$16.000,00</td>
      <td>8</td>
      <td><div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Cuota
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#">Cuenta 1</a></li>
    <li><a href="#">Cuenta 2</a></li>
    <li><a href="#">Cuenta 3</a></li>
  </ul>
</div></td>
      <td><div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Cuentas
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#">Cuenta 1</a></li>
    <li><a href="#">Cuenta 2</a></li>
    <li><a href="#">Cuenta 3</a></li>
  </ul>
</div></td>
      <td><button type="button" class="btn btn-dark">Pagar</button></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>07/11/2020</td>
      <td>$2.000,00</td>
      <td>$12.000,00</td>
      <td>6</td>
      <td><div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Cuota
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#">Cuenta 1</a></li>
    <li><a href="#">Cuenta 2</a></li>
    <li><a href="#">Cuenta 3</a></li>
  </ul>
</div></td>
      <td><div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Cuentas
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#">Cuenta 1</a></li>
    <li><a href="#">Cuenta 2</a></li>
    <li><a href="#">Cuenta 3</a></li>
  </ul>
</div></td>
      <td><button type="button" class="btn btn-dark">Pagar</button></td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>10/11/2020</td>
      <td>$6.000,00</td>
      <td>$30.000,00</td>
      <td>5</td>
      <td><div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Cuota
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#">Cuenta 1</a></li>
    <li><a href="#">Cuenta 2</a></li>
    <li><a href="#">Cuenta 3</a></li>
  </ul>
</div></td>
      <td><div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    Cuentas
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="#">Cuenta 1</a></li>
    <li><a href="#">Cuenta 2</a></li>
    <li><a href="#">Cuenta 3</a></li>
  </ul>
</div></td>
      <td><button type="button" class="btn btn-dark">Pagar</button></td>
    </tr>
  </tbody>
</table>



  </div>



  </div>
  


<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<!-- JavaScript Boorstrap -->	
	<script type="text/javascript" src="js/all.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="js/popper.min.js"></script>
	<script type="text/javascript" src="https://use.fontawesome.com/releases/v5.15.1/js/all.js"></script>

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