<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<table>
	<tr>
		<td><s:if test="#session.s_usuario != null">
				<s:url action="logout" id="salir"></s:url>
				<s:a href="%{salir}">
					<s:text name="menu.logout"></s:text>
				</s:a>
			</s:if></td>
	</tr>
</table>