<%@page import="javax.naming.ldap.ExtendedRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- Enunciado: Crea una página JSP que solicite al usuario su nombre y apellido por separado. Al enviar el formulario, 
la página debe mostrar un mensaje que diga "¡Hola [nombre] [apellido]!". -->
<body>

	<h1>Introduzca su nombre y apellido</h1>
	
	<form action="">
		<input type="text" id="nombre" name="nombre">
		<label for="nombre">Nombre</label>
		
		<input type="text" id="apellido" name="apellido">
		<label for="apellido">Apellido</label>	
		<br><br>
		<input type="submit" value="Enviar">
	</form>
	<%
				String nombre = request.getParameter("nombre");
				String apellido = request.getParameter("apellido");				
	%>
	


</body>
</html>