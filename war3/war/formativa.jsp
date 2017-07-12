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
				<h3>Area Formativa</h3>
				<p>Nuestra misi�n es lograr que cada uno de nuestros estudiantes
				den lo mejor de s�, haciendo de ellos un mejor hombre y una mejor
				mujer, capaces de pensar con profundidad desde su inteligencia y de
				actuar con autonom�a, desde su voluntad, ordenadas sus facultades
				hacia la verdad y el amor que los planifica y libera.</p>
				<p><strong>La misi�n pedag�gica tomista est� orientada a que los estudiantes:</strong></p>
				<ul>
					<li>Abran su inteligencia hacia la verdad de las cosas,
						desarrollando adem�s un pensamiento l�gico y coherente.</li>
					<li>Ejerciten su voluntad y fortalezcan su car�cter, con el fin
						de asumir sus compromisos con responsabilidad.</li>
					<li>Sensibilicen sus afectos para apreciar las grandes
						manifestaciones culturales y art�sticas.</li>
					<li>Sensibilicen su esp�ritu para que se abra al valor de la
						trascendencia y de la dignidad de toda persona humana.</li>
					<li>Desarrollen sus capacidades f�sicas, promoviendo la fortaleza
						y destreza corporal.</li>
					<li>Potencien sus capacidades cognitivas, promoviendo un
						aprendizaje aut�nomo y colaborativo.</li>
					<li>Adquieran los conocimientos y t�cnicas que les posibiliten
						involucrarse competentemente en el mundo de la educaci�n superior.</li>
				</ul>
				<h2>�rea Formativa</h2>
				<p>
					El Departamento de Orientaci�n de los colegios de la Red, est� al
					servicio de toda la comunidad educativa. Brinda apoyo a los diferentes
					procesos psico-educativos y asesora t�cnicamente a los alumnos,
					profesores, padres y equipos directivos, a trav�s de intervenciones
					tutoriales y grupales; programas de: prevenci�n, afectividad,
					sexualidad y valores; charlas y talleres, evaluaciones.<br /> En la
					ense�anza media se desarrolla un programa de Orientaci�n Vocacional,
					que considera a los estudiantes y apoderados, relacionada con el
					conocimiento de s� mismo e informaci�n de las alternativas acad�micas
					en la educaci�n superior. Los padres pueden acceder al Orientador,
					Psicopedagogo y/o Psic�logo v�a correo electr�nico o contacto
					telef�nico. Ver portal de su colegio.
				</p>
				<h2>�rea Pastoral</h2>
				<p>La fraternidad y solidaridad son uno de los pilares del Proyecto
					Educativo. Por tal motivo el Encargado de Pastoral coordina las
					actividades pastorales para los estudiantes, padres, profesores,
					administrativos y directivos en concordancia con el PEI. Los
					estudiantes participan activamente en catequesis para la primera
					comuni�n y confirmaci�n, misas, jornadas, retiros, misiones. La
					comunidad educativa participa de celebraci�n de las fiestas religiosas
					m�s importantes del a�o, como es la Semana Santa, el Mes de Mar�a y
					Navidad.</p>

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
				Hecho por: Harry Sandoval, Gabriel Justo, Ronald Ccori,  Angel Caceres 	</div>
			
		</footer>
	</div>
  </body>
</html>
