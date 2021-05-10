package NegocioImpl;


import java.util.ArrayList;

import Dao.DaoUsuario;
import DaoImpl.DaoUsuarioImpl;
import Entidades.Usuario;
import Negocio.NegocioUsuario;

public class NegocioUsuarioImpl implements NegocioUsuario{
	
	DaoUsuario pdao = new DaoUsuarioImpl();
	

	@Override
	public ArrayList<Usuario> listarUsuarios() {
		// TODO Auto-generated method stub
		return pdao.listarUsuarios();
	}


	@Override
	public boolean existeUsuarioContraAdmin(Usuario user) {
		// TODO Auto-generated method stub
		boolean existe = false;
		
		if(user.getUsuario().trim().length()> 0 && user.getContrasenia().trim().length()>0)
		{
			existe=pdao.existeUsuarioContraAdmin(user);
		}
		return existe;
		
		
	}


	@Override
	public boolean existeUsuarioContraCliente(Usuario user) {
		// TODO Auto-generated method stub
		boolean existe = false;
		
		if(user.getUsuario().trim().length()> 0 && user.getContrasenia().trim().length()>0)
		{
			existe=pdao.existeUsuarioContraCliente(user);
		}
		return existe;
		
	}


}
