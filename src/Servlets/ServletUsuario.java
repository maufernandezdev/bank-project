package Servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Negocio.NegocioUsuario;
import NegocioImpl.NegocioUsuarioImpl;
import Entidades.Usuario;

/**
 * Servlet implementation class ServletUsuario
 */
@WebServlet("/ServletUsuario")
public class ServletUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletUsuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		if (request.getParameter("Param") != null) {
			NegocioUsuarioImpl user = new NegocioUsuarioImpl();
			ArrayList<Usuario> lista = user.listarUsuarios();
			request.setAttribute("listaU", lista);

			RequestDispatcher rd = request.getRequestDispatcher("/listadoClientes.jsp");
			rd.forward(request, response);
		}
		
		
		// Login de usuario // // verifica si es admin o cliente tambien //
		int ingreso = 0; // 0 no lo encontro | -2 dos campos vacios | -1 usuario vacio | -3 contra vacia
		boolean ingresa = true;
		
		if (request.getParameter("btnIngresar") != null) {
				
			
						// si no hay ningun campo vacio se procede a buscar en la BD
						if(ingresa==true){
							
							if(request.getParameter("usuario") != "" && request.getParameter("contrasenia") != "" ){
								
								Usuario usuario = new Usuario();
								NegocioUsuarioImpl user = new NegocioUsuarioImpl();
								
								usuario.setUsuario(request.getParameter("usuario"));
								usuario.setContrasenia(request.getParameter("contrasenia"));
								
								if(user.existeUsuarioContraAdmin(usuario) == true) 
								{
									// se logueo un admin
									request.getSession().setAttribute("userconect", usuario);
									
									request.setAttribute("uc", usuario);
									RequestDispatcher rd = request.getRequestDispatcher("index_admin.jsp");
									rd.forward(request, response);
									
								}
								
								if(user.existeUsuarioContraCliente(usuario) == true) 
								{
									// se logue un cliente
									request.getSession().setAttribute("userconect", usuario);
									request.setAttribute("uc", usuario);
									RequestDispatcher rd = request.getRequestDispatcher("iniciousuario.jsp");
									rd.forward(request, response);
									
								}
								
								else 
								{
									// usuario y/o contraseña incorrectas
									
									RequestDispatcher rd = request.getRequestDispatcher("errordeingreso.jsp");
									rd.forward(request, response);
								}
								
								}
							
							
						}
								
		} // fin btn ingresar != null

		
		
	} // fin doGet

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
