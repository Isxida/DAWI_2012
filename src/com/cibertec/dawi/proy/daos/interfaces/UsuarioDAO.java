package com.cibertec.dawi.proy.daos.interfaces;

import com.cibertec.dawi.proy.beans.UsuarioDTO;

public interface UsuarioDAO {

	public UsuarioDTO validarUsuario(UsuarioDTO usuario) throws Exception;

	public UsuarioDTO getUsuario(String cod_usu) throws Exception;

}
