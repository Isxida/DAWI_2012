package com.cibertec.dawi.proy.daos.factory.dbms;

import com.cibertec.dawi.proy.daos.factory.DAOFactory;
import com.cibertec.dawi.proy.daos.interfaces.UsuarioDAO;
import com.cibertec.dawi.proy.daos.mysql.UsuarioMySqlDAO;


public class MySqlDAOFactory extends DAOFactory {

	@Override
	public UsuarioDAO getUsuarioDAO() {
		// TODO Auto-generated method stub
		return new UsuarioMySqlDAO();
	}

	
}
