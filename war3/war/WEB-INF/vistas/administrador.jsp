<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="controladores.*"%>
<%@ page import="modelos.*"%>
<%
	HttpSession misession = request.getSession();
	String nombreAd = (String) misession.getAttribute("nombre");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Colegio Emblem�tico Independencia Americana</title>
<link rel="stylesheet" href="estilo2.css">
</head>

<body>
	<div class="contenedor">
		<header>
		<div class="logo">
			<IMG src="/pictures/unnamed.jpg"> <a href="index.jsp">Colegio
				Emblem�tico Independencia Americana</a>
		</div>
		<nav><a href="index.jsp">P�gina principal</a></nav>
		</header>

		<section class="main">
			<article>
			<IMG src="/pictures/rey-blanco-7.png" style="width:5%;">
			<h3 class="titulo">Bienvenido administrador <%= nombreAd %></h3>
			</article>
			<article>
				<h3 class="titulo">Puede realizar las siguientes acciones</h3>
				<p>Estas acciones son exclusivas del administrador, este seguro de realizar estos cambios ya que no podr� recuperarlos</p>
				<div class="contr-acciones">
					<div class="acciones">
						<p ><a href="accionAdmin?action=verCuentas" >Ver cuentas</a></p>
						<p>La acci�n "Ver cuentas" le permite revisar y ver todas las cuentas registradas en esta p�gina web</P>
					</div>
					<div class="acciones">
						<h3 class="titulo" style="color:black;">Habilitar Usuario</h3>
						<form method="post" action="habilitarUsuario">
						Dni<input type="text" name="dni">
						<input type="submit" value="enviar">
						</form>
						<P>La acci�n "Inhabilitar Usuario" le permite inhabilitar a un usuario espec�fico, identificado por su dni</P>
					</div>
					<div class="acciones">
						<h3 class="titulo" style="color:black;">Publicar comunicado</h3>
						<form action="accionAdmin?action=publicar" method="post">
						<input type="hidden" name="identidad" value="<%=request.getSession().getAttribute("nombre")%>">
						<input type="text" name="postear">
						<input type="submit" value="Comentar">
						</form>
						<P>La acci�n "Publicar comunicado" le permite publicar un comunicado el cual aparecer� en la secci�n de noticias</P>
					</div>
					<div class="acciones">
						<h3 class="titulo" >Eliminar Usuario</h3>
						<form method="post" action="eliminarUsuario">
						Dni<input type="text" name="dni">
						<input type="submit" value="enviar">
						</form>
						<p>La acci�n "Eliminar Usuario" le permite eliminar a un usuario espec�fico, identificado por su dni</P>
					</div>
					<div class="acciones">
						<h3 class="titulo" style="color:black;">Inhabilitar Usuario</h3>
						<form method="post" action="inhabilitarUsuario">
						Dni<input type="text" name="dni">
						<input type="submit" value="enviar">
						</form>
						<P>La acci�n "Inhabilitar Usuario" le permite inhabilitar a un usuario espec�fico, identificado por su dni</P>
					</div>
					<div class="acciones">
						<p><a href="accionAdmin?action=registrar">Registrar</a></p>
						<p>La acci�n "Registrar" Alumno" le permite registrar aun usuario en esta aplicaci�n</P>
					</div>
				</div>
			</article>		
			<article>
				<p><a href="cerrar">Cerrar Sesion</a></p>
			</article>
		</section>
		<footer>
		<div class="social">
				<a href="https://web.facebook.com/IndependenciaAmericana/">FB</a>
			</div>
		<div class="add">Hecho por: Harry Sandoval, Gabriel Justo,
			Ronald Ccori, Angel Caceres</div>

		</footer>
	</div>
</body>
</html>
