<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="labs.*"%>
<%@ page session="true"%>
<%
	HttpSession misession = request.getSession();
	String a1 = (String) misession.getAttribute("nombre");
%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>Colegio Emblemático Independencia Americana</title>
<link rel="stylesheet" href="estilo2.css">
<link rel="stylesheet" href="css/bootstrap.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<div class="contenedor">
		<header>
			<div class="logo" align="center">
				<IMG src="unnamed.jpg"> <a href="index.jsp">Colegio
					Emblemático Independencia Americana</a>
			</div>
			<nav>
				<a href="index.jsp">InstituciÃ³n</a>
				<a href="academico.jsp">Area Academica</a>
				<a href="formativa.jsp">Area Formativa</a>
				<a href="compartimos.jsp">Compartimos</a>
				<a href="organos.jsp">Organos</a>
				<a href="mapa.jsp">Mapa del Sitio</a>
			  <a href="sesion.jsp">Iniciar Sesión</a>
			</nav>
		</header>
		
		<section class="main">
		
			<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="well well-sm">
						<form class="form-horizontal" method="post" action="registrar">
							<fieldset>
								<legend class="text-center header">Registrarse</legend>
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"><i
										class="fa fa-envelope bigicon"></i></span>
									<div class="col-md-8">
										<input id="fname" name="email" type="email"
											placeholder="Correo Electronico" class="form-control" required>
									</div>
								</div>
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"><i
										class="fa fa-envelope bigicon"></i></span>
									<div class="col-md-8">
										<input id="fname" name="pass" type="password"
											placeholder="Password" class="form-control" required>
									</div>
								</div>
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"><i
										class="	fa fa-drivers-license bigicon"></i></span>
									<div class="col-md-8">
										<input id="fname" name="dni" type="number" placeholder="Dni"
											class="form-control" required>
									</div>
								</div>
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"><i
										class="fa fa-user bigicon"></i></span>
									<div class="col-md-8">
										<input id="fname" name="nombre" type="text"
											placeholder="Nombres ompletos" class="form-control" required>
									</div>
								</div>
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"><i
										class="fa fa-user bigicon"></i></span>
									<div class="col-md-8">
										<input id="lname" name="apellido" type="text"
											placeholder="Apellidos completos" class="form-control" required>
									</div>
								</div>

								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"><i
										class="fa fa-heartbeat bigicon"></i></span>
									<div class="col-md-8">
										<input id="email" name="fechaN" type="date"
											placeholder="Fecha de Nacimiento" class="form-control" required>
									</div>
								</div>

								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"><i
										class="fa fa-intersex bigicon"></i></span>
									<div class="col-md-8">
										<select name="genero" class="form-control">
											<option value="Hombre">Hombre</option>
											<option value="Mujer">Mujer</option>
										</select>
									</div>
								</div>
								
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"><i
										class="fa fa-car bigicon"></i></span>
									<div class="col-md-8">
										<input id="lname" name="direccion" type="text"
											placeholder="Direccion" class="form-control" required>
									</div>
								</div>
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"><i
										class="fa fa-volume-control-phone bigicon"></i></span>
									<div class="col-md-8">
										<input id="lname" name="telefono" type="number"
											placeholder="Telefono" class="form-control" required>
									</div>
								</div>
								<div class="form-group">
									<span class="col-md-1 col-md-offset-2 text-center"><i
										class="fa fa-users bigicon"></i></span>
									<div class="col-md-8">
										<select name="roles" class="form-control">
											<option value="Administrador">Administrador</option>
											<option value="Profesor">Profesor</option>
											<option value="Alumno">Alumno</option>
											<option value="Apoderado">Apoderado</option>
											<option value="Servicios">Servicios</option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-12 text-center">
										<button type="submit" class="btn btn-primary btn-lg">Registrar</button>
									</div>
								</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>

		</section>
		<footer>
			<div class="links">
				<a href="index.jsp">Regresar</a>
			</div>
			<div class="add">Hecho por: Harry Sandoval, Gabriel Justo,
				Ronald Ccori, Angel Caceres</div>

		</footer>
	</div>
</body>
</html>