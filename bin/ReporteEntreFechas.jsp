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
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark d-flex justify-content-between">
        <div>
            <a class="navbar-brand" href="index.html">${userconect.usuario}</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#">
                <i class="fas fa-bars" style="color: #fcb045;"></i>
            </button>
        </div>
        <!-- Navbar-->
        <ul class="navbar-nav ml-auto ml-md-0">
            <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: #fcb045;"><i
                        class="fas fa-user fa-fw"></i></a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                    <a class="dropdown-item" href="#">Mi Perfil</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="Login.jsp">Cerrar Sesión</a>
                </div>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark scrollable" id="sidenavAccordion">
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
                        </a>
                        <a class="nav-link" href="#">
                            <div class="sb-nav-link-icon">
                                <i class="fas fa-key"></i>
                            </div> Eliminar Cliente
                        </a>
                        <div class="sb-sidenav-menu-heading">Cuentas</div>
                        <a class="nav-link" href="#">
                            <div class="sb-nav-link-icon">
                                <i class="fas fa-user-plus"></i>
                            </div> Crear Cuenta
                        </a> <a class="nav-link" href="#">
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
                        </a> <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                            aria-expanded="false" aria-controls="collapsePages">
                            <div class="sb-nav-link-icon">
                                <i class="fas fa-book-open"></i>
                            </div> Informes
                            <div class="sb-sidenav-collapse-arrow">
                                <i class="fas fa-angle-down"></i>
                            </div>
                        </a>
                        <div class="collapse" id="collapsePages" aria-labelledby="headingTwo"
                            data-parent="#sidenavAccordion">
                            <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages"> <a
                                    class="nav-link collapsed" href="#" data-toggle="collapse"
                                    data-target="#pagesCollapseAuth" aria-expanded="false"
                                    aria-controls="pagesCollapseAuth">
                                    Informes Semanales </a> <a class="nav-link collapsed" href="#"
                                    data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false"
                                    aria-controls="pagesCollapseAuth">
                                    Informes Mensuales </a> <a class="nav-link collapsed" href="#"
                                    data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false"
                                    aria-controls="pagesCollapseAuth">
                                    Informes Anuales </a> </nav>
                        </div>
                    </div>
                </div>
                <div class="sb-sidenav-footer">
                    <div class="small">Logueado como:<label> ${userconect.usuario} </label></div>
                    user_admin
                </div>
            </nav>
        </div>
        <div id="layoutSidenav_content">

            <main>
                <div class="container-fluid">

                    <div class="jumbotron jumbotron-fluid">
                        <div class="container">
                            <h1 class="display-3">Informe de Prestamos Mensuales</h1>
                        </div>
                    </div>

                    <div class="navbar">

                        <div class="container" >
 
                                    <div class="input-group">

                                        <h1>Generar Informe entre:  </h1>

                                        <div class="dropdown">
                                            <button class="btn btn-secondary dropdown-toggle" type="button"
                                                id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                                Febrero
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Enero</a>
                                                <a class="dropdown-item" href="#">Febrero</a>
                                                <a class="dropdown-item" href="#">Marzo</a>
                                                <a class="dropdown-item" href="#">Abril</a>
                                                <a class="dropdown-item" href="#">Mayo</a>
                                                <a class="dropdown-item" href="#">Junio</a>
                                                <a class="dropdown-item" href="#">Julio</a>
                                                <a class="dropdown-item" href="#">Agosto</a>
                                                <a class="dropdown-item" href="#">Septiembre</a>
                                                <a class="dropdown-item" href="#">Octubre</a>
                                                <a class="dropdown-item" href="#">Noviembre</a>
                                                <a class="dropdown-item" href="#">Diciembre</a>
                                            </div>
                                        </div>
                                        <h1>  y:   </h1>
                                        <div class="dropdown">
                                            <button class="btn btn-secondary dropdown-toggle" type="button"
                                                id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">
                                                Marzo
                                            </button>
                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="#">Enero</a>
                                                <a class="dropdown-item" href="#">Febrero</a>
                                                <a class="dropdown-item" href="#">Marzo</a>
                                                <a class="dropdown-item" href="#">Abril</a>
                                                <a class="dropdown-item" href="#">Mayo</a>
                                                <a class="dropdown-item" href="#">Junio</a>
                                                <a class="dropdown-item" href="#">Julio</a>
                                                <a class="dropdown-item" href="#">Agosto</a>
                                                <a class="dropdown-item" href="#">Septiembre</a>
                                                <a class="dropdown-item" href="#">Octubre</a>
                                                <a class="dropdown-item" href="#">Noviembre</a>
                                                <a class="dropdown-item" href="#">Diciembre</a>
                                            </div>
                                        </div>


                                        <h1>  </h1>
                                        <div>
                                            <button type="button" class="btn btn-warning">Generar</button>
                                        </div>

                                    </div>



                        </div>

                        <table class="table table-dark">
                            <thead>
                                <tr>
                                    <th scope="col">Prestamo</th>
                                    <th scope="col">Cuenta</th>
                                    <th scope="col">Cliente</th>
                                    <th scope="col">Fecha Prestamo</th>
                                    <th scope="col">Importe Prestamo</th>
                                    <th scope="col">Importe Total a Pagar</th>
                                    <th scope="col">Plazo(Meses)</th>
                                    <th scope="col">Monto Mensual</th>
                                    <th scope="col">Saldo Restante</th>
                                    <th scope="col">Cuotas Restantes</th>
                                    <th scope="col">Estado</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>1111</td>
                                    <td>Otto Mark</td>
                                    <td>1/2/2020</td>
                                    <td>25000</td>
                                    <td>30000</td>
                                    <td>10</td>
                                    <td>3000</td>
                                    <td>15000</td>
                                    <td>5</td>
                                    <td>Activo</td>
        
                                    </td>
        
                                </tr>

                                <tr>
                                    <th scope="row">2</th>
                                    <td>2222</td>
                                    <td>Julian Weich</td>
                                    <td>1/2/2020</td>
                                    <td>250000</td>
                                    <td>300000</td>
                                    <td>10</td>
                                    <td>30000</td>
                                    <td>150000</td>
                                    <td>5</td>
                                    <td>Activo</td>
                                    </td>
                                </tr>

                                
                                <tr>
                                    <th scope="row">3</th>
                                    <td>3333</td>
                                    <td>Claudio Dota </td>
                                    <td>5/3/2020</td>
                                    <td>2500000</td>
                                    <td>3000000</td>
                                    <td>10</td>
                                    <td>300000</td>
                                    <td>1500000</td>
                                    <td>5</td>
                                    <td>Activo</td>
                                    </td>
                                </tr>
                             
                            </tbody>
                         
                        </table>

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
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/all.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>


</body>

</html>