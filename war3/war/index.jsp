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
	<title>Colegio Emblem�tico Independencia Americana</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="estilo2.css">
	
</head>

<body>
	<div class="contenedor">
		<header>
			<div class="logo">
				<IMG src="/pictures/unnamed.jpg" alt=""> <a href="index.jsp">Colegio
					Emblem�tico Independencia Americana</a>
			</div>
			<nav>	
					<a href="index.jsp">Instituci�n</a>
					<a href="academico.jsp">Area Acad�mica</a>
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
				<h3 class="titulo">Bienvenidos</h3>
				<br>
				<p>Les damos la bienvenida a la p�gina de la Instituci�n
					emeblem�tica Independencia Americana.</p>
			</article>
			<article>
				<IMG src="/pictures/descarga.jpg">
				<IMG src="/pictures/images.jpg">
				<IMG src="/pictures/entrada.jpg" style="width:345px;">
			</article>
			<article>
				<h3 class="titulo">Actividades recientes</h3>
				<br>
				<p>Actvidades por el d�aa de la madre: CRONOGRAMA.</p>
				<table align="center">
					<tr>
						<td>Hora</td>
						<td>Actividad</td>
						<td>Secci�n</td>
					</tr>
					<tr>
						<td>8</td>
						<td>Presentaci�n y agradecimientos</td>
						<td>1� A</td>
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
				<h3 class="titulo">Misi�n y Visi�n</h3>
				<br>
				<p>Nuestra misi�n es brindar una educaci�n de la calidad, mediante
					el uso de tecnolog�as educativas modernas, promovemos el desarrollo
					de capacidades y actitudes basadas en nuestro c�digo �tico-moral
					independiente.<br> La Emblem�tica Instituci�n Educativa, Glorioso Colegio
					Nacional de la Independencia Americana, por su riqueza hist�rica, por
					ser alma mater de personajes ilustres de Arequipa y el Per�, ejemplo
					de prestigio, alcanzado desde su creaci�n, hasta el presente y
					seguramente en el futuro, debe seguir siendo la Instituci�n que
					se�ale el rumbo en la tarea de ense�ar y educar a la ni�ez y
					adolescentes del Plantel y de la Regi�n. Se dice e insiste, que, para
					brindar un servicio de calidad hay que contar con una informaci�n,
					real y completa sobre los agentes de la educaci�n; conocer la
					situaci�n familiar- social y econ�mica del estudiante, sus
					aspiraciones, ideales, a fin de darles las orientaciones debidas a
					cargo de profesionales especializados y actualizados. El estudiante
					no es un recipiente de conociminetos impuestos, ajenos a sus
					actitudes y vocaci�n, el estudiante es ante todo una persona en
					formaci�n, necesita comprensi�n, amor y protecci�n que le permita
					adoptar comportamientos y conductas concientes y positivas. La
					formaci�n de las generaciones del futuro no es ni debe ser tarea,
					s� lo de las Instituciones Educativas, es algo en la que deben
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
