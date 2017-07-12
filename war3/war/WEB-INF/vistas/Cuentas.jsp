<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="controladores.*"%>
<%@ page import="modelos.*"%>
<%
	ArrayList<Usuario> cuentas = (ArrayList<Usuario>)getServletContext().getAttribute("cuentas");
	ArrayList<Usuario> cuentasAdministrador=new ArrayList<Usuario>();
	ArrayList<Usuario> cuentasPadres=new ArrayList<Usuario>();
	ArrayList<Usuario> cuentasAlumno=new ArrayList<Usuario>();
	ArrayList<Usuario> cuentasProfesor=new ArrayList<Usuario>();
		for (Usuario b : cuentas) {
			if((b.getRoles().getNombre()).equals("Administrador"))
				cuentasAdministrador.add(b);
			else if(b.getRoles().getNombre().equals("Profesor"))
				cuentasProfesor.add(b);
			else if(b.getRoles().getNombre().equals("Alumno"))
				cuentasAlumno.add(b);
			else if(b.getRoles().getNombre().equals("Apoderado"))
				cuentasPadres.add(b);
		}
	
%>
<%@ page session="true"%>
<%
	HttpSession misession = request.getSession();
	String a1 = (String) misession.getAttribute("nombre");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

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
		<nav><a href="comprobar?action=administrador">Regresar</a></nav> 
	    </header>

		<section class="main"> <article>
		<h3 class="titulo">Cuentas de Usuarios</h3>
		<br>
		<p>Las siguientes tablas muestran las diferentes cuentas de usuarios registrados en la aplicación
		clasificados por categorías.</p>
		</article> <article>
		<div class="container" align="left">
			<div class="row justify-content-md-center">
				<div class="col-md-10">
					<%
						if (cuentas.size() > 0) {
					%>
					<h1>Tabla de Alumnos</h1>
						<%
							if (cuentasAlumno.size()>0) {
						%>
						<table class="table">
							<thead>
								<tr>
									<th>DNI</th>
									<th>Nombres</th>
									<th>Apellidos</th>
									<th>Correo</th>
									<th>Fecha de Nacimiento</th>
									<th>Género</th>
									<th>Rol</th>
								</tr>
							</thead>
							<tbody>
								<%
									for (Usuario a : cuentasAlumno) {
								%>
								<tr>
	
									<td><%=a.getIdUsuario()%></td>
									<td><%=a.getNombre()%></td>
									<td><%=a.getApellido()%></td>
									<td><%=a.getCuenta()%></td>
									<td><%=a.getFeNacimiento()%></td>
									<td><%=a.getGenero()%></td>
									<td><form action="eliminarUsuario" method="post" >
										<button type="submit" name="dni" value="<%= a.getIdUsuario() %>"> Eliminar</button></form>
									</td>
									
									<%if(!a.isEstado()){%>
										<td><form action="habilitarUsuario" method="post" >
										<button type="submit" name="dni" value="<%= a.getIdUsuario() %>">Habilitar</button></form>
									</td>
										<%}else{%>
										<td><form action="inhabilitarUsuario" method="post" >
										<button type="submit" name="dni" value="<%= a.getIdUsuario() %>" >Inhabilitar</button></form>
										</td>
										<%} %>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
						
						<%
						} else {
						%>
						<h4>No se encontró ningún Alumno matriculado</h4>
						<%
							}
						%>
						<br>
						<h1>Tabla de Profesores</h1>
						<%
							if (cuentasProfesor.size()>0) {
						%>
						<table class="table">
							<thead>
								<tr>
									<th>DNI</th>
									<th>Nombres</th>
									<th>Apellidos</th>
									<th>Correo</th>
									<th>Fecha de Nacimiento</th>
									<th>Género</th>
								</tr>
							</thead>
							<tbody>
								<%
									for (Usuario c : cuentasProfesor) {
								%>
								<tr>
	
									<td><%=c.getIdUsuario()%></td>
									<td><%=c.getNombre()%></td>
									<td><%=c.getApellido()%></td>
									<td><%=c.getCuenta()%></td>
									<td><%=c.getFeNacimiento()%></td>
									<td><%=c.getGenero()%></td>
									<td><form action="eliminarUsuario" method="post" >
										<button type="submit" name="dni" value="<%= c.getIdUsuario() %>" >Eliminar</button></form>
									</td>
									<%if(!c.isEstado()){%>
										<td><form action="habilitarUsuario" method="post" >
										<button type="submit" name="dni" value="<%= c.getIdUsuario() %>">Habilitar</button></form>
									</td>
										<%}else{%>
										<td><form action="inhabilitarUsuario" method="post" >
										<button type="submit" name="dni" value="<%= c.getIdUsuario() %>" >Inhabilitar</button></form>
										</td>
										<%} %>
	
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
						
						<%
						} else {
						%>
						<h4>No se encontró ningún Profesor</h4>
						<%
							}
						%>
						
						<h1>Tabla de Padres</h1>
						<%
							if (cuentasPadres.size()>0) {
						%>
						<table class="table">
							<thead>
								<tr>
									<th>DNI</th>
									<th>Nombres</th>
									<th>Apellidos</th>
									<th>Correo</th>
									<th>Fecha de Nacimiento</th>
									<th>Género</th>
									<th>Rol</th>
								</tr>
							</thead>
							<tbody>
								<%
									for (Usuario d : cuentasPadres) {
								%>
								<tr>
	
									<td><%=d.getIdUsuario()%></td>
									<td><%=d.getNombre()%></td>
									<td><%=d.getApellido()%></td>
									<td><%=d.getCuenta()%></td>
									<td><%=d.getFeNacimiento()%></td>
									<td><%=d.getGenero()%></td>
									<td><form action="eliminarUsuario" method="post" >
										<button type="submit" name="dni" value="<%= d.getIdUsuario() %>" >Eliminar</button></form>
									</td>
									<%if(!d.isEstado()){%>
										<td><form action="habilitarUsuario" method="post" >
										<button type="submit" name="dni" value="<%= d.getIdUsuario() %>">Habilitar</button></form>
									</td>
										<%}else{%>
										<td><form action="inhabilitarUsuario" method="post" >
										<button type="submit" name="dni" value="<%= d.getIdUsuario() %>" >Inhabilitar</button></form>
										</td>
										<%} %>
	
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
						
						<%
						} else {
						%>
						<h4>No se encontró ningún Padre</h4>
						<%
							}
						%>
						
						<h1>Tabla de Administradores</h1>
						<%
							if (cuentasAdministrador.size()>0) {
						%>
						<table class="table">
							<thead>
								<tr>
									<th>DNI</th>
									<th>Nombres</th>
									<th>Apellidos</th>
									<th>Correo</th>
									<th>Fecha de Nacimiento</th>
									<th>Género</th>
									<th>Rol</th>
								</tr>
							</thead>
							<tbody>
								<%
									for (Usuario e: cuentasAdministrador) {
										if(e.getRoles().getNombre().equals("Administrador")){
								%>
								<tr>
	
									<td><%=e.getIdUsuario()%></td>
									<td><%=e.getNombre()%></td>
									<td><%=e.getApellido()%></td>
									<td><%=e.getCuenta()%></td>
									<td><%=e.getFeNacimiento()%></td>
									<td><%=e.getGenero()%></td>
									<td><form action="eliminarUsuario" method="post" >
										<button type="submit" name="dni" value="<%= e.getIdUsuario() %>" >Eliminar</button></form>
									</td>
									<%if(!e.isEstado()){%>
										<td><form action="habilitarUsuario" method="post" >
										<button type="submit" name="dni" value="<%= e.getIdUsuario() %>">Habilitar</button></form>
									</td>
										<%}else{%>
										<td><form action="inhabilitarUsuario" method="post" >
										<button type="submit" name="dni" value="<%= e.getIdUsuario() %>" >Inhabilitar</button></form>
										</td>
										<%} %>
	
								</tr>
								<%}
									}
								%>
							</tbody>
						</table>
						
						<%
						} else {
						%>
						<h4>No se encontró ningún Administrador</h4>
						<%
							}
						%>
						
					<%
						} else {
					%>
					<h4>No se encontró ninguna Cuenta</h4>
					<%
						}
	%>
				</div>
			</div>
		</div>
		<p><a href="cerrar">Cerrar Sesión</a></p>
		</article> 
		
		</section>
		<footer>
		<div class="links">
			<a href="comprobar?action=administrador">Regresar</a>
		</div>
		<div class="add">Hecho por: Harry Sandoval, Gabriel Justo,
			Ronald Ccori, Angel Caceres</div>

		</footer>
	</div>
</body>
</html>
