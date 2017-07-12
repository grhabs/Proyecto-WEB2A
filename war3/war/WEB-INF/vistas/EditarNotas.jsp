<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
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
<link rel="stylesheet" href="css/bootstrap.css">
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
							<th>dni</th>
							<th>Nombre</th>
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
							<form action="editandoNotas" method="post">
							<td><input type="text" name="dni" value="<%=a.getIdUsuario()%>" readonly></td>
							<td><%=a.getNombre()%></td>
							<td><input type="number" name="nota1" value="<%=a.getNota1()%>"></td>
							<td><input type="number" name="nota2" value="<%=a.getNota2()%>"></td>
							<td><input type="number" name="nota3" value="<%=a.getNota3()%>"></td>
							<td><input type="number" name="nota4" value="<%=a.getNota4()%>"></td>
							<td><input type="number" name="nota5" value="<%=a.getNota5()%>"></td>
							<td><%=a.getPromedio()%></td>
							<td><button type="submit" value="guardar">guardar</td>
							</form>
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
					<a href="#">FB</a> <a href="#">TW</a> <a href="#">G+</a>
				</div>
				<div class="add">Hecho por: Harry Sandoval, Gabriel Justo,
					Ronald Ccori, Angel Caceres</div>

			</footer>
	</div>
</body>
</html>
