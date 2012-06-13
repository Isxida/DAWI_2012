package com.cibertec.dawi.proy.daos.interfaces;

import java.util.List;

import com.cibertec.dawi.proy.beans.TipoUsuarioDTO;


public interface TipoUsuarioDAO {

	public List<TipoUsuarioDTO> listarTipoUsu() throws Exception;
	
}
