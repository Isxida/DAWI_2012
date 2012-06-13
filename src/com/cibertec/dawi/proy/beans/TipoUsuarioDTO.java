package com.cibertec.dawi.proy.beans;

import java.io.Serializable;

public class TipoUsuarioDTO implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5871289807563381687L;

	private int id_tipoUsu;
	private String desc_usu;
	
	public int getId_tipoUsu() {
		return id_tipoUsu;
	}
	public void setId_tipoUsu(int id_tipoUsu) {
		this.id_tipoUsu = id_tipoUsu;
	}
	public String getDesc_usu() {
		return desc_usu;
	}
	public void setDesc_usu(String desc_usu) {
		this.desc_usu = desc_usu;
	}

	
}
