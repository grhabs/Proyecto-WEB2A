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
	 <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0"> 
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<title>Colegio Emblemático Independencia Americana</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="estilo2.css">
	
</head>

<body>
	<div class="contenedor">
		<header>
			<div class="logo">
				<IMG src="/pictures/unnamed.jpg" alt=""> <a href="index.jsp">Colegio
					Emblemático Independencia Americana</a>
			</div>
			<nav>	
					<a href="index.jsp">Institución</a>
					<a href="academico.jsp">Area Académica</a>
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
				<h3 class="titulo">Bienvenidos</h3>
				<br>
				<p>Les damos la bienvenida a la página de la Institución
					emeblemática Independencia Americana.</p>
			</article>
			<article>
				<IMG src="/pictures/descarga.jpg">
				<IMG src="/pictures/images.jpg">
				<IMG src="/pictures/entrada.jpg" style="width:345px;">
			</article>
			<article>
				<h3 class="titulo">Actividades recientes</h3>
				<br>
				<p>Actvidades por el díaa de la madre: CRONOGRAMA.</p>
				<table align="center">
					<tr>
						<td>Hora</td>
						<td>Actividad</td>
						<td>Sección</td>
					</tr>
					<tr>
						<td>8</td>
						<td>Presentación y agradecimientos</td>
						<td>1º A</td>
					</tr>
				</table>
			</article>
			<article>
				<h3 class="titulo">Nosotros</h3>
				<br>
				<p>Somos una I.E. acreditada que forma estudiantes competitivos,
					talentosos, creativos, integros, con tabla de valores propios, una
					autoestima elevada, y con una afecto y amor al colegio unico. Y
					contamos con una bella y grande infraestructura.</p>
				</article>
			<article>
				<h3 class="titulo">Misión y Visión</h3>
				<br>
				<p>Nuestra misión es brindar una educación de la calidad, mediante
					el uso de tecnologías educativas modernas, promovemos el desarrollo
					de capacidades y actitudes basadas en nuestro código ético-moral
					independiente.<br> La Emblemática Institución Educativa, Glorioso Colegio
					Nacional de la Independencia Americana, por su riqueza histórica, por
					ser alma mater de personajes ilustres de Arequipa y el Perú, ejemplo
					de prestigio, alcanzado desde su creación, hasta el presente y
					seguramente en el futuro, debe seguir siendo la Institución que
					señale el rumbo en la tarea de enseñar y educar a la niñez y
					adolescentes del Plantel y de la Región. Se dice e insiste, que, para
					brindar un servicio de calidad hay que contar con una información,
					real y completa sobre los agentes de la educación; conocer la
					situación familiar- social y económica del estudiante, sus
					aspiraciones, ideales, a fin de darles las orientaciones debidas a
					cargo de profesionales especializados y actualizados. El estudiante
					no es un recipiente de conociminetos impuestos, ajenos a sus
					actitudes y vocación, el estudiante es ante todo una persona en
					formación, necesita comprensión, amor y protección que le permita
					adoptar comportamientos y conductas concientes y positivas. La
					formación de las generaciones del futuro no es ni debe ser tarea,
					sí lo de las Instituciones Educativas, es algo en la que deben
					participar, la sociedad en su conjunto y el Estado dando normas
					reales, efectivas y permanentes</p>
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
