package com.cibertec.dawi.proy.daos.mysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cibertec.dawi.proy.beans.TipoUsuarioDTO;
import com.cibertec.dawi.proy.beans.UsuarioDTO;
import com.cibertec.dawi.proy.daos.interfaces.UsuarioDAO;
import com.cibertec.dawi.proy.util.MySqlDBConn;


public class UsuarioMySqlDAO implements UsuarioDAO {

	Connection cnx = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;

	private Connection getConexion() {
		MySqlDBConn mysql = new MySqlDBConn();
		return mysql.getConnection();
	}

	@Override
	public UsuarioDTO validarUsuario(UsuarioDTO usuario) throws Exception {

		String sql = "SELECT count(*) " + "	FROM TB_USUARIO"
				+ "	WHERE id_usu=?" + "	AND clave=?";

		try {
			cnx = getConexion();
			pstm = cnx.prepareStatement(sql);
			pstm.setString(1, usuario.getCod_usu());
			pstm.setString(2, usuario.getClave());
			rs = pstm.executeQuery();
			rs.first();

			if (rs.getInt(1) == 0)
				usuario = null;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cnx.close();
			pstm.close();
			rs.close();
		}

		return usuario;
	}

	@Override
	public UsuarioDTO getUsuario(String cod_usu) throws Exception {

		UsuarioDTO usu = null;

		String sql = "SELECT u.*,t.desc FROM tb_usuario u " +
				     "join tb_tipousuario t " +
				     "on u.id_tipoUsu = t.id_tipoUsu " +
				     "WHERE u.id_usu=?";

		try {

			cnx = getConexion();
			pstm = cnx.prepareStatement(sql);

			pstm.setString(1, cod_usu);
			rs = pstm.executeQuery();

			if (rs.next()) {
				usu = new UsuarioDTO();

				usu.setCod_usu(rs.getString(1));
				usu.setClave(rs.getString(2));
				usu.setNom_usu(rs.getString(3));
				usu.setApe_usu(rs.getString(4));

				// instanciamos tipo de usuario y seteamos con el resulset de la
				// base de datos
				TipoUsuarioDTO tipo_usu = new TipoUsuarioDTO();
				tipo_usu.setId_tipoUsu(rs.getInt(5));
				tipo_usu.setDesc_usu(rs.getString(6));
				
				//seteamos 
				usu.setTipo_usu(tipo_usu);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cnx.close();
			pstm.close();
			rs.close();
		}
		return usu;
	}

}
