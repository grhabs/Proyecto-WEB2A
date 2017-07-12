<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% // file index.jsp %>
<%@ page import="controladores.*"%>
<%@ page import="modelos.*"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Colegio Emblemático Independencia Americana</title>
<link rel="stylesheet" href="estilo2.css">
</head>

<body>
	<div class="contenedor">
		<header>
		<div class="logo">
			<IMG src="/pictures/unnamed.jpg" > <a href="index.jsp">Colegio
				Emblemático Independencia Americana</a>
				<nav><a href="index.jsp">Página principal</a></nav>
		</div>
		</header>

		<section class="main">
		<article>
		<h3 class="titulo">Bienvenidos</h3>
		<br>
					<div class="acciones">
						<h3 class="titulo" style="color:black;">Publicar comunicado</h3>
						<form action="accionAlumn?action=publicar" method="post">
						<input type="hidden" name="identidad" value="<%=request.getSession().getAttribute("nombre")%>">
						<input type="text" name="postear">
						<input type="submit" value="Comentar">
						</form>
						<P>La acción "Publicar comunicado" le permite publicar un comunicado el cual aparecerá en la sección de noticias</P>
					</div>
		</article>
		<article>
		<IMG src="/pictures/ajedrez-peon-forma-ios-7-simbolo-interfaz_318-36312.jpg" style="width:5%;">
		</article>
		<article>
		<h3 class="titulo">Puede realizar las siguientes funciones</h3>
		<br>
		<p><a href="verNotas"> Puede ver sus notas aqui</a></p>
		</article>
		<article>
			<form action="<%= blobstoreService.createUploadUrl("/upload") %>" method="post" enctype="multipart/form-data">
            <input type="text" name="foo">
            <input type="file" name="myFile">
            <input type="submit" value="Submit">
        	</form>
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
