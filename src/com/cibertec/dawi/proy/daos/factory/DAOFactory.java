package com.cibertec.dawi.proy.daos.factory;

import com.cibertec.dawi.proy.daos.factory.dbms.DerbyDAOFactory;
import com.cibertec.dawi.proy.daos.factory.dbms.MySqlDAOFactory;
import com.cibertec.dawi.proy.daos.factory.dbms.OracleDAOFactory;
import com.cibertec.dawi.proy.daos.factory.dbms.XMLDAOFactory;
import com.cibertec.dawi.proy.daos.interfaces.UsuarioDAO;

public abstract class DAOFactory {

	public static final int MYSQL = 1;
	public static final int ORACLE = 2;
	public static final int DB2 = 3;
	public static final int SQLSERVER = 4;
	public static final int XML = 5;
	
	public abstract UsuarioDAO getUsuarioDAO();

	public static DAOFactory getDAOFactory(int whichFactory) {

		switch (whichFactory) {
		case MYSQL:
			return new MySqlDAOFactory();
		case ORACLE:
			return new OracleDAOFactory();
		case DB2:
			return new DerbyDAOFactory();
		case SQLSERVER:
			return new XMLDAOFactory();
		case XML:
			return new MySqlDAOFactory();
		default:
			return null;
		}
	}
}
