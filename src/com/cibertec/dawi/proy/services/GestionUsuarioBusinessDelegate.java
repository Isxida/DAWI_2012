package com.cibertec.dawi.proy.services;

public class GestionUsuarioBusinessDelegate {

	public static UsuarioService getUsuarioService(){
		return new UsuarioServiceImpl();
	}
	
}
