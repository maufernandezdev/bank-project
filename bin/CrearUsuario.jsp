<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inicio Administrador</title>
<link rel="stylesheet" href="css/estilos_index_admin.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.grid.min.css">
<link rel="stylesheet" href="css/all.min.css">
</head>
<body class="sb-nav-fixed">
	<nav
		class="sb-topnav navbar navbar-expand navbar-dark bg-dark d-flex justify-content-between">
	<div>
		<a class="navbar-brand" href="index.html">${userconect.usuario}</a>
		<button class="btn btn-link btn-sm order-1 order-lg-0"
			id="sidebarToggle" href="#">
			<i class="fas fa-bars" style="color: #fcb045;"></i>
		</button>
	</div>
	<!-- Navbar-->
	<ul class="navbar-nav ml-auto ml-md-0">
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			id="userDropdown" href="#" role="button" data-toggle="dropdown"
			aria-haspopup="true" aria-expanded="false" style="color: #fcb045;"><i
				class="fas fa-user fa-fw"></i></a>
			<div class="dropdown-menu dropdown-menu-right"
				aria-labelledby="userDropdown">
				<a class="dropdown-item" href="#">Mi Perfil</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="Login.jsp">Cerrar Sesión</a>
			</div></li>
	</ul>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark scrollable"
				id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<div class="nav">
					<div class="sb-sidenav-menu-heading">Clientes</div>
					<a class="nav-link" href="#">
						<div class="sb-nav-link-icon">
							<i class="fas fa-user-plus"></i>
						</div> Agregar Cliente
					</a> <a class="nav-link" href="#">
						<div class="sb-nav-link-icon">
							<i class="fas fa-key"></i>
						</div> Modificar Contraseña
					</a> <a class="nav-link" href="#">
						<div class="sb-nav-link-icon">
							<i class="fas fa-key"></i>
						</div> Eliminar Cliente
					</a> <a class="nav-link" href="#">
						<div class="sb-nav-link-icon">
							<i class="fas fa-key"></i>
						</div> Listar Clientes
					</a>
					<div class="sb-sidenav-menu-heading">Cuentas</div>
					<a class="nav-link" href="#">
						<div class="sb-nav-link-icon">
							<i class="fas fa-user-plus"></i>
						</div> Asignar Cuenta
					</a> <a class="nav-link" href="#">
						<div class="sb-nav-link-icon">
							<i class="fas fa-user-plus"></i>
						</div> Modificar Cuenta
					</a> <a class="nav-link" href="#">
						<div class="sb-nav-link-icon">
							<i class="fas fa-user-plus"></i>
						</div> Eliminar Cuenta
					</a>
					<div class="sb-sidenav-menu-heading">Préstamos</div>
					<a class="nav-link" href="#">
						<div class="sb-nav-link-icon">
							<i class="fas fa-lock"></i>
						</div> Autorización de Préstamos
					</a> <a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#collapsePages" aria-expanded="false"
						aria-controls="collapsePages">
						<div class="sb-nav-link-icon">
							<i class="fas fa-book-open"></i>
						</div> Informes
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapsePages"
						aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav accordion"
							id="sidenavAccordionPages"> <a class="nav-link collapsed"
							href="#" data-toggle="collapse" data-target="#pagesCollapseAuth"
							aria-expanded="false" aria-controls="pagesCollapseAuth">
							Informes Semanales </a> <a class="nav-link collapsed" href="#"
							data-toggle="collapse" data-target="#pagesCollapseAuth"
							aria-expanded="false" aria-controls="pagesCollapseAuth">
							Informes Mensuales </a> <a class="nav-link collapsed" href="#"
							data-toggle="collapse" data-target="#pagesCollapseAuth"
							aria-expanded="false" aria-controls="pagesCollapseAuth">
							Informes Anuales </a> </nav>
					</div>
				</div>
			</div>
			<div class="sb-sidenav-footer">
				<div class="small">Logueado como:<label>${userconect.usuario}</label></div>
			</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main> <main>
			<div class="container-fluid">
				<h2 class="mt-4">Crear Cliente</h2>
				<div class="jumbotron">
					<div class="registro-box">
						<form class="mt-2 rounded">
							<!-- Primer fila nombre , apellido , usuario -->
							<div class="form-row">
								<div class="col-md-4 mb-3">
									<label for="validationServer01">Nombre</label> <input
										type="text" class="form-control is-valid"
										id="validationServer01" placeholder="nombre" value="Juan"
										required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
								<div class="col-md-4 mb-3">
									<label for="validationServer02">Apellido</label> <input
										type="text" class="form-control is-valid"
										id="validationServer02" placeholder="apellido" value="Perez"
										required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
								<div class="col-md-4 mb-3">
									<label for="validationServerUsername">Usuario</label>
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text" id="inputGroupPrepend3"><i
												class="fas fa-user"></i></span>
										</div>
										<input type="text" class="form-control is-invalid"
											id="validationServerUsername" placeholder="Username"
											aria-describedby="inputGroupPrepend3" required>
										<div class="invalid-feedback">Por favor ingrese un
											nombre de usuario.</div>
									</div>
								</div>
							</div>

							<!-- Segunda fila direccion, localidad , provincia-->
							<div class="form-row">
								<div class="col-md-4 mb-3">
									<label for="validationServer01">Dirección</label> <input
										type="text" class="form-control is-valid"
										id="validationServer01" placeholder="direccion"
										value="Av.Santa Fe" required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
								<div class="col-md-4 mb-3">
									<label for="validationServer02">Localidad</label> <input
										type="text" class="form-control is-valid"
										id="validationServer02" placeholder="Localidad"
										value="San Isidro" required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
								<div class="col-md-4 mb-3">
									<label for="validationServer02">Provincia</label> <input
										type="text" class="form-control is-valid"
										id="validationServer02" placeholder="Prov"
										value="Buenos Aires" required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
							</div>
							<!-- Tercer fila DNI, CUIL , NACIONALIDAD -->
							<div class="form-row">
								<div class="col-md-4 mb-3">
									<label for="validationServer01">DNI</label> <input type="text"
										class="form-control is-valid" id="validationServer01"
										placeholder="dni" value="12345678" required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
								<div class="col-md-4 mb-3">
									<label for="validationServer02">Cuil</label> <input type="text"
										class="form-control is-valid" id="validationServer02"
										placeholder="Cuil" value="20-12345678-6" required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
								<div class="col-md-4 mb-3">
									<label for="validationServer02">Nacionalidad</label> <input
										type="text" class="form-control is-valid"
										id="validationServer02" placeholder="Nacionalidad"
										value="Argentina" required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
							</div>

							<!-- Cuarta fila Telefono, celular  -->
							<div class="form-row">
								<div class="col-md-4 mb-3">
									<label for="validationServer01">Teléfono</label> <input
										type="phoneNumber" class="form-control is-valid"
										id="validationServer01" placeholder="Telefono"
										value="12345678" required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
								<div class="col-md-4 mb-3">
									<label for="validationServer02">Celular</label> <input
										type="phoneNumber" class="form-control is-valid"
										id="validationServer02" placeholder="Celular"
										value="1168544093" required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>

							</div>


							<!-- quinta fila Fecha de nacimiento, sexo -->
							<div class="form-row">
								<div class="col-md-4 mb-3">
									<label for="validationServer02">Fecha de nacimiento</label> <input
										type="date" class="form-control is-valid"
										id="validationServer02" placeholder="fnac" id="birthDate"
										required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
								<div class="col-md-4 mb-3">
									<label for="validationServer02">Sexo</label>
									<div class="dropdown">
										<button class="btn btn-secondary dropdown-toggle dropleft"
											type="button" id="dropdownMenuButton" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false">
											Seleccionar</button>
										<div class="dropdown-menu"
											aria-labelledby="dropdownMenuButton">
											<a class="dropdown-item" href="#">Femenino</a> <a
												class="dropdown-item" href="#">Masculino</a>
										</div>
									</div>
								</div>
							</div>
							<!-- sexta fila mail y contraseñas -->
							<div class="form-row">
								<div class="col-md-4 mb-3">
									<label for="validationServer01">Correo</label> <input
										type="email" class="form-control is-valid"
										id="validationServer01" name="email" placeholder="Email"
										value="holasoyunmail@gmail.com" required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
								<div class="col-md-4 mb-3">
									<label for="validationServer02">Contraseña</label> <input
										type="password" class="form-control is-valid"
										id="validationServer02" placeholder="Password"
										value="SanIsidro" required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
								<div class="col-md-4 mb-3">
									<label for="validationServer02">Confirmar la contraseña</label>
									<input type="password" class="form-control is-valid"
										id="validationServer02" placeholder="contraseña"
										value="BuenosAires" required>
									<div class="valid-feedback">¡Se ve bien!</div>
								</div>
							</div>

							<!-- BOTON REGISTRO -->
							<div class="d-flex justify-content-center">
								<input type="submit" name="btnRegistrar"
									class="btn w-50 btn-warning rounded-pill mt-5"
									value="Crear Cliente">
							</div>

						</form>
					</div>
				</div>
				<!-- ./container -->
			</div>

			</main>
			<footer class="py-4 bg-light mt-auto">
			<div class="container-fluid">
				<div class="float-right">
					<div class="text-muted">Grupo 1</div>
				</div>
			</div>
			</footer>
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