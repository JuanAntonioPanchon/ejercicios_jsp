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
				String distanciaStr = request.getParameter("distancia");
				String velocidadStr = request.getParameter("velocidad");
				Double tiempo = null;
			
				
				if(distanciaStr !=null && velocidadStr != null){
					
					double distancia = Double.parseDouble(distanciaStr);
					double velocidad = Double.parseDouble(velocidadStr);
					
					tiempo = distancia / velocidad; 
				}
				
				
				String respuesta;
				if (tiempo != null) {
				    respuesta = "Tardarás " + tiempo + " horas";
				} else {
				    respuesta = "";
				}
	%>
	
	
	
	<h1>Calculemos el tiempo de viaje</h1>
	
	<form action="">
		<label for="distancia">Distancia en Km</label>
		<input type="number" id="distancia" name="distancia" required>
		
		
		<label for="velocidad">Velocidad en Km/h</label>
		<input type="number" id="velocidad" name="velocidad" required>
		<br><br>
		<input type="submit" value="Calcular">
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