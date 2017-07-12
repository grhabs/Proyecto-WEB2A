<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="controladores.*"%>
<%@ page import="modelos.*"%>
<%
	ArrayList<Usuario> cuentas = (ArrayList<Usuario>) getServletContext().getAttribute("cuentas");
	ArrayList<Usuario> cuentasAlumno = new ArrayList<Usuario>();
	for (Usuario b : cuentas) {
		if (b.getRoles().getNombre().equals("Alumno"))
			cuentasAlumno.add(b);
	}
%>
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
				<IMG src="/pictures/unnamed.jpg"> <a href="index.jsp">Colegio
					Emblemático Independencia Americana</a>
			</div>
		</header>

		<section class="main">
			<article>
				<h3 class="titulo">Bienvenidos</h3>
				<br>
				<p>Les damos la bienvenida a la página de la Institución
					emeblematica Independdencia Americana.</p>
				<%
					if (cuentas.size() > 0) {
				%>
				<h1>Tabla de alumnos</h1>
				<%
					if (cuentasAlumno.size() > 0) {
				%>
				<table class="table">
					<thead>
						<tr>
							<th>DNI</th>
							<th>Nombres</th>
							<th>Nota 1</th>
							<th>Nota 2</th>
							<th>Nota 3</th>
							<th>Nota 4</th>
							<th>Nota 5</th>
							<th>Promedio</th>
						</tr>
					</thead>
					<tbody>
						<%
							for (Usuario a : cuentasAlumno) {
						%>
						<tr>

							<td><%=a.getIdUsuario()%></td>
							<td><%=a.getNombre()%></td>
							<td><%=a.getNota1()%></td>
							<td><%=a.getNota2()%></td>
							<td><%=a.getNota3()%></td>
							<td><%=a.getNota4()%></td>
							<td><%=a.getNota5()%></td>
							<td><%=a.getPromedio()%></td>
							<td>
							<form action="editarNotas" method="post" >
							<button type="submit" name="dni" value="<%= a.getIdUsuario() %>"> Editar</button>
							</form>
							</td>
						</tr>
						<%
							}
						%>
					</tbody>
				</table>

				<%
					}
					}
				%>
			</article>
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
