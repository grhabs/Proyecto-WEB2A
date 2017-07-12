<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="controladores.*"%>
<%@ page import="modelos.*"%>
<%@ page session="true"%>
<%
	HttpSession misession = request.getSession();
	String a1 = (String) misession.getAttribute("nombre");
	String a2 = (String) misession.getAttribute("rol");
	String a3 = (String)getServletContext().getAttribute("coment");
%>
<%ArrayList<String> post = (ArrayList<String>)getServletContext().getAttribute("publicar");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Colegio Emblem�tico Independencia Americana</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="estilo2.css">
  </head>

  <body>
  	<div class="contenedor">
		<header>
			<div class="logo">
			<IMG src="/pictures/unnamed.jpg">
				<a href="index.jsp">Colegio Emblem�tico Independencia Americana</a>
			</div>
			<nav>
				<a href="index.jsp">Instituci�n</a>
				<a href="academico.jsp">Area Academica</a>
				<a href="formativa.jsp">Area Formativa</a>
				<a href="compartimos.jsp">Compartimos</a>
				<a href="organos.jsp">Organos</a>
				<a href="mapa.jsp">Mapa del Sitio</a>
				<a href="comentarios.jsp">Comunicados</a>
					<%if(a1==null){%>
					<a href="registrar.jsp">Registrarse</a>  
			  		<%}else{%>
					<a href="comprobar?action=<%=a2.toLowerCase() %>" style="color:white;">Ver Acciones</a>
			  		<%}%>
				  	<%if(a1==null){%>
					<a href="sesion.jsp">Iniciar Sesi�n</a>
					<%}else{%>
					<a href="cerrar">Cerrar Sesi�n</a>
					<%}%> 
			</nav>
		</header>
 
		<section class="main">
			<article>
				<h3 class="titulo">Bienvenidos</h3><br>
				<p>Les damos la bienvenida a la p�gina de la Instituci�n emeblematica
				Independdencia Americana.</p>
			</article>
			<article>
				<h3 class="titulo">Cont�ctenos</h3><br>
				<p>Para alguna consulta llamar a:(054) 225883
				<br>O enviar un mensaje a: ghrabs@gmail.com</p> 
				<form name="contactenos" methos="post" action="#">
					Nombre:<input type="text" name="nombre"><br>
					Correo<input type="text" name="correo"><br>
					Comentarios:<input type="text" name="correo"><br>
					<input type="submit" value"SUBMIT">
				</form>
			</article>
			<article>
			<h1>Mapa del Sitio</h1>
				<table>
					<tr>
						<td><a href="/index.jsp">Institucion</a></td>
						<td><a href="/index.jsp">Nosotros</a></td>
					</tr>
					<tr>
						<td><a href="/academico.jsp">Area Academica</a></td>
						<td><a href="/formativa.jsp">Area Formativa</a></td>
					</tr>
					<tr>
						<td><a href="/compartimos.jsp">Compartimos</a></td>
						<td><a href="/organos.jsp">Datos de la Escuela</a></td>
					</tr>
				</table>
						
			</article>
		</section>
		<aside>
			<div class="widget">
				<h4>Publicaciones</h4>
				<%if (post!=null) {%>
					<table class="table table-bordered" Style="color:white;">
							<tr>
								<th width="20%">Publicado por</th>
								<th width="80%">Post</th>
								
							</tr>
							<%for (int i=0;i<post.size();i++){%>
							<tr>
								<td><%=a3 %></td>
								<td><%=post.get(i)%></td>
							</tr>
							<%}	%>
					</table>
				<%} else {%>
					<h5>No hay publicaciones</h3>
				<%}%>
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
