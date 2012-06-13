<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>.::SISTEMA INTEGRAL DE GESTION DE REQUERIMIEMTOS DE
	SOFTWARE Y PROYECTOS TI::.</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<style type="text/css">
body {
	background-image: url(img/fondo.jpg);
	background-repeat: repeat-x;
	margin-top: 0px;
}

.titulo_header {
	color: #F30;
	font-size: 150px;
	font-family: Verdana, Geneva, sans-serif;
	
}

</style>
</head>
<body>
	<table width="80%" border="0" align="center">
  <tr>
 			 <th height="235" colspan="3" align="center" valign="middle"
				background="img/logo.jpg" class="titulo_header" scope="col" style="font-size: 50px">
				<tiles:insertAttribute name="header" />
				
				</th>
		</tr>
		<tr>
		  <td valign="top" width="200px">
				<tiles:insertAttribute name="menu" />
			</td>      
		  <td width="274" rowspan="2">
			  <tiles:insertAttribute name="body" />
          </td>
		  <td width="200">
          <tiles:insertAttribute name="menuLogout" />
          </td>
      </tr>
		<tr>
			 <td valign="top" width="200px">
             </td>
			 <td width="200">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="3">
				<tiles:insertAttribute name="footer" />
			</td>
		</tr>


	</table>

</body>
</html>