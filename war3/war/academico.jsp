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
    <title>Colegio Emblemático Independencia Americana</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="estilo2.css">
  </head>

  <body>
  	<div class="contenedor">
		<header>
			<div class="logo">
			<IMG src="/pictures/unnamed.jpg">
				<a href="index.jsp">Colegio Emblemático Independencia Americana</a>
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
				<h1>Area Academica</h1>
				<p>El &Aacute;rea Acad&eacute;mica tiene como objetivo contribuir a
					la formaci&oacute;n integral y a la actualizaci&oacute;n continua de
					directivos, docentes y personal de apoyo de las instituciones
					educativas de nuestro pa&iacute;s, para que desempe&ntilde;en
					c&aacute;lida y eficazmente su labor y ofrezcan un servicio de calidad
					a sus alumnos y padres de familia, impactando positivamente a su
					comunidad.</p>
			
				<p>
					<strong>Algunos de sus prop&oacute;sitos generales son:</strong>
				</p>
			
				<ul>
					<li>Formar formadores comprometidos con su quehacer educativo
						para mejorar los procesos de ense&ntilde;anza &ndash; aprendizaje y,
						en general, la calidad educativa de nuestro pa&iacute;s.</li>
					<li>Ofrecer cursos hechos a la medida para responder a las
						necesidades y circunstancias espec&iacute;ficas de las diversas
						instituciones y centros educativos.</li>
					<li>
						<p>Ofrecer cursos propios, sencillos y pr&aacute;cticos,&nbsp;
							concebidos como talleres, para proporcionar a los distintos
							participantes criterios,&nbsp; m&eacute;todos, estrategias y&nbsp;
							t&eacute;cnicas que les permitan desarrollar competencias y
							habilidades para su &aacute;rea de trabajo y su vida personal.</p>
					</li>
					<li>
						<p>Promover una educaci&oacute;n basada en valores, el respeto a
							la persona humana y el desarrollo integral de los individuos.</p>
					</li>
				</ul>
			
				<p>&nbsp;</p>
			
				<p>
					<strong>&iquest;QU&Eacute; OFRECEMOS?</strong>
				</p>
			
				<p>
					<strong>Formaci&oacute;n presencial.</strong>
				</p>
			
				<p>En los cursos-taller presenciales docentes, directivos y padres
					de familia tienen como objetivo facilitar un proceso de crecimiento
					personal y desarrollo de habilidades docentes y directivas que les
					permitan a los maestros establecer un clima de confianza y seguridad
					propicio para el desarrollo de talentos y formaci&oacute;n
					acad&eacute;mica de sus alumnos.&nbsp; Los docentes y directivos
					aprenden de manera pr&aacute;ctica y vivencial a desarrollar sus
					competencias docentes.&nbsp;</p>
			
				<p>
					<strong>Cursos:</strong>
				</p>
			
				<ul>
					<li>Ruta de Mejora Escolar Argumentada (En L&iacute;nea y
						presencial)</li>
					<li>Planeaci&oacute;n Did&aacute;ctica Argumentada (En
						L&iacute;nea y presencial)</li>
					<li>Coaching en el aula.</li>
					<li>Comprensi&oacute;n lectora.&nbsp;</li>
					<li>Desarrollo Humano del docente y su implicaci&oacute;n en el
						aula.</li>
					<li>Prevenci&oacute;n y Atenci&oacute;n al bullying.</li>
				</ul>
			
				<p>&nbsp;</p>
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
				Hecho por: Harry Sandoval, Gabriel Justo, Ronald Ccori, Angel Caceres 	</div>
			
		</footer>
	</div>
  </body>
</html>
