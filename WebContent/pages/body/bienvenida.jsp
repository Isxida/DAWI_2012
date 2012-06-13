<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<div>
	Bienvenido:
	<s:property value="#session.s_usuario.cod_usu" />
	<br> Nombre:
	<s:text name="usuario.nom_usu" />
	<br> Tipo Usuario:
	<s:text name="usuario.tipo_usu.desc_usu" />
</div>