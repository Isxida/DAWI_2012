package com.cibertec.dawi.proy.beans;

import java.io.Serializable;

public class UsuarioDTO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -9114251595377850881L;
	
	private String cod_usu;
	private String clave;
	private String nom_usu;
	private String ape_usu;
	private TipoUsuarioDTO tipo_usu;
	
	public String getCod_usu() {
		return cod_usu;
	}

	public void setCod_usu(String cod_usu) {
		this.cod_usu = cod_usu;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public String getNom_usu() {
		return nom_usu;
	}

	public void setNom_usu(String nom_usu) {
		this.nom_usu = nom_usu;
	}

	public String getApe_usu() {
		return ape_usu;
	}

	public void setApe_usu(String ape_usu) {
		this.ape_usu = ape_usu;
	}

	public TipoUsuarioDTO getTipo_usu() {
		return tipo_usu;
	}

	public void setTipo_usu(TipoUsuarioDTO tipo_usu) {
		this.tipo_usu = tipo_usu;
	}

}
