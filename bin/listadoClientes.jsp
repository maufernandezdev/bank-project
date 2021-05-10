<%@page import="Entidades.Usuario"%>
<%@page import="java.util.ArrayList"%>

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
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
	crossorigin="anonymous"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="js/all.min.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>

<script>
	$(document)
			.ready(
					function() {
						$('#tabla_users')
								.DataTable(
										{
											autoWidth : true,
											lengthChange : false,
											"language" : {
												"sProcessing" : "Procesando...",
												"sLengthMenu" : "Mostrar _MENU_ registros",
												"sZeroRecords" : "No se encontraron resultados",
												"sEmptyTable" : "Ningún dato disponible en esta tabla",
												"sInfo" : "Mostrando _START_ de _END_ de un total de _TOTAL_ registros",
												"sInfoEmpty" : "Mostrando 0 de 0 de un total de 0 registros",
												"sInfoFiltered" : "(filtrado de un total de _MAX_ registros)",
												"sInfoPostFix" : "",
												"sSearch" : "Buscar:",
												"sUrl" : "",
												"sInfoThousands" : ",",
												"sLoadingRecords" : "Cargando...",
												"oPaginate" : {
													"sFirst" : "Primero",
													"sLast" : "Último",
													"sNext" : "Siguiente",
													"sPrevious" : "Anterior"
												},
												"oAria" : {
													"sSortAscending" : ": Activar para ordenar la columna de manera ascendente",
													"sSortDescending" : ": Activar para ordenar la columna de manera descendente"
												},
												"buttons" : {
													"copy" : "Copiar",
													"colvis" : "Visibilidad"
												}
											}

										});
					});
</script>
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
							<i class="fas fa-list"></i>
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
				<div class="small">Logueado como:<label> ${userconect.usuario} </label> </div>
				user_admin
			</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main>
			<div class="container-fluid">

				<div class="jumbotron jumbotron-fluid">
					<div class="container">
						<h3 class="display-3">Listado Usuarios</h3>
					</div>
				</div>

				<%
					ArrayList<Usuario> lista = null;
					if (request.getAttribute("listaU") != null) {
						lista = (ArrayList<Usuario>) request.getAttribute("listaU");
					}
				%>


				<table id="tabla_users">
					<thead>
						<tr>
							<th scope="col">DNI</th>
							<th scope="col">CUIL</th>
							<th scope="col">Nombre</th>
							<th scope="col">Apellido</th>
						</tr>
					</thead>
					<tbody>
						<%
							if (lista != null)
								for (Usuario user : lista) {
						%>
						<tr>
							<td><%=user.getDni()%></td>
							<td><%=user.getCuil()%></td>
							<td><%=user.getNombre()%></td>
							<td><%=user.getApellido()%></td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>

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

</body>
</html>