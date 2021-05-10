package Dao;
import java.util.ArrayList;

import Entidades.Usuario;

public interface DaoUsuario {

	
	public ArrayList<Usuario> listarUsuarios();
	public boolean existeUsuarioContraAdmin(Usuario user);
	public boolean existeUsuarioContraCliente(Usuario user);
	

	
	/*public boolean ElminarUsuario(Usuario_A_Eliminar) {
		
		boolean isdeleteExitoso = false;
			
		Connection conexion = Conexion.getConexion().getSQLConexion();
		PreparedStatement statement;
		
		try 
		{
			statement = conexion.prepareStatement(DeletePersona);
			statement.setString(1, persona_a_eliminar.getDni());
			if(statement.executeUpdate() > 0)
			{
				conexion.commit();
				isdeleteExitoso = true;
			}
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return isdeleteExitoso;
	}*/
}
