package com.cibertec.dawi.proy.services;

import com.cibertec.dawi.proy.beans.UsuarioDTO;
import com.cibertec.dawi.proy.daos.factory.DAOFactory;
import com.cibertec.dawi.proy.daos.interfaces.UsuarioDAO;


public class UsuarioServiceImpl implements UsuarioService {

	DAOFactory fabrica = DAOFactory.getDAOFactory(DAOFactory.MYSQL);
	UsuarioDAO usuarioDAO = fabrica.getUsuarioDAO();

	@Override
	public boolean existeUsuario(UsuarioDTO usuario) throws Exception {

		if (usuarioDAO.validarUsuario(usuario) != null)
			return true;
		return false;
	}

	@Override
	public UsuarioDTO getUsuario(String cod_usu) throws Exception {
		// TODO Auto-generated method stub
		
		UsuarioDTO usuario= usuarioDAO.getUsuario(cod_usu);
		
		return usuario;
	}

}
