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
	String a3 = (String)getServletContext().getAttribute("coment2");
	String a4 = (String)getServletContext().getAttribute("coment3");
%>
<%ArrayList<String> post = (ArrayList<String>)getServletContext().getAttribute("publicar2");%>
<%ArrayList<String> post2 = (ArrayList<String>)getServletContext().getAttribute("publicar3");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>Colegio Emblemático Independencia Americana</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="estilo2.css">
	

</head>

<body>
	<div class="contenedor">
		<header>
			<div class="logo">
				<IMG src="/pictures/unnamed.jpg"> <a href="index.jsp">Colegio
					Emblemático Independencia Americana</a>
			</div>
			<nav>	
					<a href="index.jsp">Institución</a>
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
					<a href="sesion.jsp">Iniciar Sesión</a>
					<%}else{%>
					<a href="cerrar">Cerrar Sesión</a>
					<%}%>
			</nav>
		</header>

		<section class="main">
			<article>
				<h3>Publicaciones de profesores</h3>
				<%if (post!=null) {%>
					<table class="table table-bordered">
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
			<article>
			<article>
				<h3>Publicaciones de alumnos</h3>
				<%if (post2!=null) {%>
					<table class="table table-bordered">
							<tr>
								<th width="20%">Publicado por</th>
								<th width="80%">Post</th>
								
							</tr>
							<%for (int i=0;i<post2.size();i++){%>
							<tr>
								<td><%=a4 %></td>
								<td><%=post2.get(i)%></td>
							</tr>
							<%}	%>
					</table>
				<%} else {%>
					<h5>No hay publicaciones</h3>
				<%}%>
			<article>
		</section>
		<aside>
			<div class="widget">
			</div>
		</aside>
		<footer>
			<div class="social">
					<a href="https://web.facebook.com/IndependenciaAmericana/">FB</a>
			</div>
			<div class="add">Hecho por: Harry Sandoval, Gabriel Justo,
				Ronald Ccori, Angel Caceres
			</div>
		</footer>
	</div>
</body>
</html>
