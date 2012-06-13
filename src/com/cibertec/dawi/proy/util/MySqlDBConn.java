package com.cibertec.dawi.proy.util;

import java.sql.*;

public class MySqlDBConn {
	/**
	 * Permite Cargar en Memoria los Drivers
	 */
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	/**
	 * Obtiene una conexión a la Base de Datos.
	 */
	public Connection getConnection() {

		Connection connection = null;
		try {
			connection = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/bd_proydawi", "root", "mysql");

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return connection;
	}

}
