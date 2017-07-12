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
    <title>Colegio Emblemático Independencia Americana</title>
    <link rel="stylesheet" href="estilo2.css">
  </head>

  <body>
  	<div class="contenedor">
		<header>
			<div class="logo">
			<IMG src="unnamed.jpg">
				<a href="index.jsp">Colegio Emblemático Independencia Americana</a>
			</div>
			<nav>
				<a href="index.jsp">Institución</a>
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
				<p>Les damos la bienvenida a la página de la Institución emeblematica
				Independdencia Americana.</p>
			</article>
			<article>
				<form method="post" action="iniciar">
				Correo<input type="email" name="usuario">
				Password<input type="password" name= "password">
				<input type="submit" value="enviar">
				</form>
			</article>
		</section>
		<aside>
			<div class="widget">
				<%if(a1==null){%>
				<h4 class=titulo align=center>Registrarse</h4><br>
				<p>Para registrarse haga click en el siguiente enlace</p><br>
				<a href="registrar.jsp" style="color:white;">Registrarse</a>  
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
				Hecho por: Harry Sandoval, Gabriel Justo, Ronald Ccori, Angel Caceres 	</div>
			
		</footer>
	</div>
  </body>
</html>
