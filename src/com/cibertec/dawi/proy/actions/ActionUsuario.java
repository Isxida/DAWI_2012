package com.cibertec.dawi.proy.actions;

import java.util.Map;


import com.cibertec.dawi.proy.beans.UsuarioDTO;
import com.cibertec.dawi.proy.services.GestionUsuarioBusinessDelegate;
import com.cibertec.dawi.proy.services.UsuarioService;
import com.cibertec.dawi.proy.util.Constantes;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ActionUsuario extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7798990179508918546L;

	// bean
	private UsuarioDTO usuario;

	// service
	public UsuarioService usuarioService = GestionUsuarioBusinessDelegate
			.getUsuarioService();

	public UsuarioDTO getUsuario() {
		return usuario;
	}

	public void setUsuario(UsuarioDTO usu) {
		this.usuario = usu;
	}

	public String validarUsuario() {

		String resultado = "";

		try {
			boolean existe = usuarioService.existeUsuario(usuario);

			if (existe) {
				// validar si el usuario existe
				usuario = usuarioService.getUsuario(usuario.getCod_usu());
				// obtenemos la sesion
				Map<String, Object> session = ActionContext.getContext()
						.getSession();
				// pasar el Usuario a la sesion
				session.put("s_usuario", usuario);
				
				// segun tipo de usuario, redireccionar
				int tipo = usuario.getTipo_usu().getId_tipoUsu();

				switch (tipo) {
				case 1:
					resultado = Constantes.ADMIN_LOGIN;
					break;

				default:
					resultado = Constantes.USUARIO_EXISTE;
				}

			} else {
				addActionError(Constantes.MENSAJE_LOGIN_INCORRECTO);
				resultado = Constantes.USUARIO_LOGIN;
			}

			return resultado;

		} catch (Exception e) {
			// TODO Auto-generated catch block
			addActionError(Constantes.MENSAJE_ERROR);
			resultado = Constantes.USUARIO_LOGIN;
			e.printStackTrace();
		}

		return resultado;
	}

	public String logout(){
		
		ActionContext.getContext().getSession().remove("s_usuario");
	    return Constantes.USUARIO_LOGOUT;
	}
	
	
}
