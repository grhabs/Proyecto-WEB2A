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
<title>Colegio Emblem�tico Independencia Americana</title>
<link rel="stylesheet" href="estilo2.css">
</head>

<body>
	<div class="contenedor">
		<header>
		<div class="logo">
			<IMG src="unnamed.jpg"> <a href="index.jsp">Colegio
				Emblem�tico Independencia Americana</a>
		</div>
		<nav>	<a href="index.jsp">Instituci�n</a>
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
		<h3 class="titulo">Bienvenidos</h3>
		<br>
		<p>Les damos la bienvenida a la p�gina de la Instituci�n
			emeblematica Independencia Americana.</p>
		</article>
		<article>
		<IMG src="descarga.jpg">
		<IMG src="images.jpg">
		<IMG src="entrada.jpg" style="width:345px;">
		</article>
		<article>
		<h3 class="titulo">Actividades recientes</h3>
		<br>
		<p>Actvidades por el d�aa de la madre: CRONOGRAMA.</p>
		<table align="center">
			<tr>
				<td>Hora</td>
				<td>Actividad</td>
				<td>Sección</td>
			</tr>
			<tr>
				<td>8</td>
				<td>Presentaci�n y agradecimientos</td>
				<td>1� A</td>
			</tr>
		</table>
		</article> <article>
		<h3 class="titulo">Nosotros</h3>
		<br>
		<p>Somos una I.E. acreditada que forma estudiantes competitivos,
			talentosos, creativos, integros, con tabla de valores propios, una
			autoestima elevada, y con una afecto y amor al colegio unico. Y
			contamos con una bella y grande infraestructura.</p>
		</article> <article>
		<h3 class="titulo">Misi�n y Visi�n</h3>
		<br>
		<p>Nuestra mision es brindar una educacion de la calidad, mediante
			el uso de tecnologias educativas modernas, promovemos el desarrollo
			de capacidades y actitudes basadas en nuestro codigo etico-moral
			independiente.<br> La Emblemática Instituci�n Educativa, Glorioso Colegio
			Nacional de la Independencia Americana, por su riqueza histórica, por
			ser alma mater de personajes ilustres de Arequipa y el Per�, ejemplo
			de prestigio, alcanzado desde su creación, hasta el presente y
			seguramente en el futuro, debe seguir siendo la Institución que
			señale el rumbo en la tarea de enseñar y educar a la niñez y
			adolescentes del Plantel y de la Región. Se dice e insiste, que, para
			brindar un servicio de calidad hay que contar con una información,
			real y completa sobre los agentes de la educación; conocer la
			situaci�n familiar- social y econ�mica del estudiante, sus
			aspiraciones, ideales, a fin de darles las orientaciones debidas a
			cargo de profesionales especializados y actualizados. El estudiante
			no es un recipiente de conociminetos impuestos, ajenos a sus
			actitudes y vocación, el estudiante es ante todo una persona en
			formaci�n, necesita comprensión, amor y protección que le permita
			adoptar comportamientos y conductas concientes y positivas. La
			formación de las generaciones del futuro no es ni debe ser tarea,
			sólo de las Instituciones Educativas, es algo en la que deben
			participar, la sociedad en su conjunto y el Estado dando normas
			reales, efectivas y permanentes</p>
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
		<div class="social">
				<a href="#">FB</a>
				<a href="#">TW</a>
				<a href="#">G+</a>
			</div>
		<div class="add">Hecho por: Harry Sandoval, Gabriel Justo,
			Ronald Ccori, Angel Caceres</div>

		</footer>
	</div>
</body>
</html>
