package com.cibertec.dawi.proy.services;

import com.cibertec.dawi.proy.beans.UsuarioDTO;

public interface UsuarioService {

	public boolean existeUsuario(UsuarioDTO usuario) throws Exception;

	public UsuarioDTO getUsuario(String cod_usu) throws Exception;

}
