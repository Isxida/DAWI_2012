<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<style type="text/css">
.table_size {
	align: center;
	width: 80%;
	border: 0px;
}

body {
	background-image: url(img/fondo_body.jpg);
	margin-top: 0px;
	background-repeat: repeat;
}

.titulo_header {
	color: #F30;
	font-size: 150px;
	font-family: Verdana, Geneva, sans-serif;
	
}

</style>

<title dir="ltr">.::SISTEMA INTEGRAL DE GESTION DE
	REQUERIMIEMTOS DE SOFTWARE Y PROYECTOS TI::.</title>
</head>
<body>

	<s:url id="idiomaEn" action="idioma">
		<s:param name="request_locale">en</s:param>
	</s:url>

	<s:url id="idiomaEs" action="idioma">
		<s:param name="request_locale">es</s:param>
	</s:url>

	<table align="center" class="table_size">
		<tr>
			<th height="235" colspan="2" align="center" valign="middle"
				background="img/logo.jpg" class="titulo_header" scope="col" style="font-size: 50px">
				<h2>&nbsp;</h2>
				<h1>SISTEMA INTEGRAL DE</h1>
				<h1>
					<br>GESTI&Oacute;N Y CONTROL
				</h1>
				<h1>
					<br>DE REQUERIMIENTOS
				</h1>
				<h1>
					<br>Y PROYECTOS TI
				</h1>
				<p>&nbsp;</p>
			</th>
		</tr>
		<tr>
			<td width="50%" align="center" bgcolor="#80C9F2"><p>
					<img src="img/peru.gif" width="80" height="58" alt="bandera_peru"
						longdesc="img/peru.gif">
				</p>
				<h2>
					<s:a href="%{idiomaEs}">
						<s:text name="inicio.idioma.espanol"></s:text>
					</s:a>
				</h2></td>
			<td width="50%" align="center" bgcolor="#80C9F2"><p>
					<img src="img/usa.gif" width="84" height="57" alt="bandera_usa"
						longdesc="img/usa.gif">
				</p>
				<h2>
					<s:a href="%{idiomaEn}">
						<s:text name="inicio.idioma.ingles"></s:text>
					</s:a>
				</h2></td>
		</tr>
		<tr>
			<td colspan="2">
				<div class="fb-like"
					data-href="http://localhost:28080/DAW1_ProyGestionReq/"
					data-send="false" data-width="450" data-show-faces="true"
					data-font="tahoma"></div>
			</td>
		</tr>
		<tr>
			<td><a href="https://twitter.com/share"
				class="twitter-share-button" data-via="yvancho" data-lang="es">Twittear</a>
				<script>
					!function(d, s, id) {
						var js, fjs = d.getElementsByTagName(s)[0];
						if (!d.getElementById(id)) {
							js = d.createElement(s);
							js.id = id;
							js.src = "//platform.twitter.com/widgets.js";
							fjs.parentNode.insertBefore(js, fjs);
						}
					}(document, "script", "twitter-wjs");
				</script>
			</td>
		</tr>
	</table>

</body>
<div id="fb-root"></div>
<script>
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1";
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
</html>