package DaoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Dao.DaoUsuario;
import Entidades.Usuario;

public class DaoUsuarioImpl implements DaoUsuario {


	private static final String ListaUsuariosContrasAdm = "Select Username_U, Password_U from usuarios where Tipo_U = 1";
	private static final String ListaUsuariosContrasCli = "Select Username_U, Password_U from usuarios where Tipo_U = 2";
	

	public ArrayList<Usuario> listarUsuarios() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		ArrayList<Usuario> users = new ArrayList<Usuario>();
		try {
			Connection conexion = Conexion.getConexion().getSQLConexion();
			Statement st = conexion.createStatement();

			ResultSet rs = st.executeQuery("Select Nombre_U, Apellido_U, Dni_U, Cuil_U from usuarios where Tipo_U = 2 order by Nombre_U");
			while (rs.next()) {
				Usuario userrt = new Usuario();
				userrt.setDni(rs.getString("dni_u"));
				userrt.setCuil(rs.getString("Cuil_U"));
				userrt.setNombre(rs.getString("nombre_u"));
				userrt.setApellido(rs.getString("apellido_u"));
				users.add(userrt);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		return users;
	}
	
	// Existe usuario admin? por usuario , contra //
	
	public boolean existeUsuarioContraAdmin(Usuario user) {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		boolean existe = false;
		try {
			Connection conexion = Conexion.getConexion().getSQLConexion();
			ResultSet rs = null;
			Statement st = conexion.createStatement();
			rs = st.executeQuery(ListaUsuariosContrasAdm);
			while (rs.next()) {
				
				if(rs.getString("Username_U").equals(user.getUsuario()) && rs.getString("Password_U").equals(user.getContrasenia()))
				{
					existe = true;
					return existe;
					
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {

		}
		
		return existe;
	}
	
	// Existe usuario cliente? por usuario , contra //
	
		public boolean existeUsuarioContraCliente(Usuario user) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			boolean existe = false;
			try {
				Connection conexion = Conexion.getConexion().getSQLConexion();
				ResultSet rs = null;
				Statement st = conexion.createStatement();
				rs = st.executeQuery(ListaUsuariosContrasCli);
				while (rs.next()) {
					
					if(rs.getString("Username_U").equals(user.getUsuario()) && rs.getString("Password_U").equals(user.getContrasenia()))
					{
						existe = true;
						return existe;
						
					}
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {

			}
			
			return existe;
		}


	

}
