<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculo tiempo viaje</title>
</head>
<body>
		
			<%
				String nombre = request.getParameter("nombre");
				String apellido = request.getParameter("apellido");
				String respuesta = "";
				
				if(nombre !=null && apellido != null){
					respuesta = "¡Hola " + nombre + " " + apellido + " !"; 
				}
	%>
	
	
	
	<h1>Introduzca su nombre y apellido</h1>
	
	<form action="">
		<label for="nombre">Nombre</label>
		<input type="text" id="nombre" name="nombre">
		
		
		<label for="apellido">Apellido</label>
		<input type="text" id="apellido" name="apellido">
		<br><br>
		<input type="submit" value="Enviar">
	</form>
	
	<h2>  
	<%=
		respuesta
	%>
	</h2>
	<br>
	<br>
	<a href="../index.jsp">Volver al menu principal</a>
</body>
</html>