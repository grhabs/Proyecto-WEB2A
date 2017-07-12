<%@ page import="controladores.*"%>
<%@ page import="modelos.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%%>
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
				<nav><a href="index.jsp">Página principal</a></nav>
		</div>
		</header>

		<section class="main">
		<article>
		<h3 class="titulo">Bienvenidos</h3>
		<br>
		<p>Les damos la bienvenida a la página de la Institución
			emeblematica Independdencia Americana.</p>
		</article>
		<article>
		<IMG src="/pictures/images.png" style="width:5%;">
		</article>
		<article>
		<h3 class="titulo">Puede realizar las siguientes funciones</h3>
			<div class="acciones">
				<form action="verNotas" method="post" >
				<button type="submit" name="dnis" value=""> verNotas</button></form>
				<p>Visualizar y publicar las notas de los alumnos y la lista de ellos, asi como tambien publicar comunicados ( En implementacion)<br>
			</div>
				<div class="acciones">
						<h3 class="titulo" style="color:black;">Publicar comunicado</h3>
						<form action="accionProfe?action=publicar" method="post">
						<input type="hidden" name="identidad" value="<%=request.getSession().getAttribute("nombre")%>">
						<input type="text" name="postear">
						<input type="submit" value="Comentar">
						</form>
						<P>La acción "Publicar comunicado" le permite publicar un comunicado el cual aparecerá en la sección de noticias</P>
					</div>
		</article>
		<article>
			<p><a href="cerrar">Cerrar Sesion</a></p>
		</article>
		</section>
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
