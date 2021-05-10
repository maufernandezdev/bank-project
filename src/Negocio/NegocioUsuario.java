package Negocio;

import java.util.ArrayList;

import Entidades.Usuario;


public interface NegocioUsuario {
	
	public ArrayList<Usuario> listarUsuarios();
	public boolean existeUsuarioContraAdmin(Usuario user);
	public boolean existeUsuarioContraCliente(Usuario user);
	
	//public boolean DeleteUsuario(Usuario_a_eliminar);
}
