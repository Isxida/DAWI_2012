<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<div align="left" >
<h2>
	<s:text name="form.ingresar.titulo"></s:text>
</h2>
</div>

<s:form action="ingresarSistema">
<table width="80%" border="0">
  <tr>
    <td><s:text name="form.ingresar.user"></s:text></td>
    <td><s:textfield name="usuario.cod_usu"></s:textfield></td>
  </tr>
  <tr>
    <td><s:text name="form.ingresar.pass"></s:text></td>
    <td><s:password name="usuario.clave"></s:password></td>
  </tr>
  <tr>
    <td><h3><s:actionerror/></h3></td>
    <td>
     <s:if test="#request.locale.language=='en'">
    	 <s:submit value="Log in"></s:submit>
    </s:if>
    <s:else>
    	<s:submit value="Ingresar"></s:submit> 
    </s:else>    
    </td>
  </tr>
</table>

</s:form>