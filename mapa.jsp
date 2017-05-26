<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="labs.*"%>
<%@ page session="true"%>
<%
	HttpSession misession = request.getSession();
	String a1 = (String) misession.getAttribute("nombre");
	String a2 = (String) misession.getAttribute("rol");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Colegio Emblem√°tico Independencia Americana</title>
    <link rel="stylesheet" href="estilo2.css">
  </head>

  <body>
  	<div class="contenedor">
		<header>
			<div class="logo">
			<IMG src="unnamed.jpg">
				<a href="index.jsp">Colegio Emblem·tico Independencia Americana</a>
			</div>
			<nav>
				<a href="index.jsp">Instituci√≥n</a>
				<a href="academico.jsp">Area Academica</a>
				<a href="formativa.jsp">Area Formativa</a>
				<a href="compartimos.jsp">Compartimos</a>
				<a href="organos.jsp">Organos</a>
				<a href="mapa.jsp">Mapa del Sitio</a>
			   <%if(a1==null){%>
				<nav><a href="sesion.jsp">Iniciar Sesion</a></nav>  
			  <%}else{%>
				<nav><a href="cerrar">Cerrar Sesion</a></nav>
				<%}%>  
			</nav>
		</header>
 
		<section class="main">
			<article>
				<h3 class="titulo">Bienvenidos</h3><br>
				<p>Les damos la bienvenida a la p·gina de la InstituciÛn emeblematica
				Independdencia Americana.</p>
			</article>
			<article>
				<h3 class="titulo">Cont√°ctenos</h3><br>
				<p>Para alguna consulta llamar a:(054) 225883
				<br>O enviar un mensaje a: ghrabs@gmail.com</p> 
				<form name="contactenos" methos="post" action="#">
					Nombre:<input type="text" name="nombre"><br>
					Correo<input type="text" name="correo"><br>
					Comentarios:<input type="text" name="correo"><br>
					<input type="submit" value"SUBMIT">
				</form>
			</article>
		</section>
		<aside>
			<div class="widget">
				<%if(a1==null){%>
				<h4 class=titulo align=center>Registrarse</h4><br>
				<p>Para registrarse haga click en el siguiente enlace</p><br>
				<a href="registrar.jsp" style="color:white;">Registrarse</a>  
			  	<%}else{%>
			  	<h4 class=titulo align=center>Acciones</h4><br>
				<p>Para realizar acciones de acuerdo a su rol haga click aqui</p><br>
				<a href="comprobar?action=<%a2.toLowerCase(); %>" style="color:white;">Ver Acciones</a>
			  	<%}%>
			</div>
			<div class="widget">
				<div class="imagen"></div>
			</div>
			<div class="widget">
				<div class="imagen"></div>
			</div>
			<div class="widget">
				<div class="imagen"></div>
			</div>
			<div class="widget">
				<div class="imagen"></div>
			</div>
		</aside>
		<footer> 
			<div class="links">
				<a href="index.jsp" >Regresar</a>
			</div>
			<div class="add">
				Hecho por: Harry Sandoval, Gabriel Justo, Ronald Ccori 	</div>
			
		</footer>
	</div>
  </body>
</html>
