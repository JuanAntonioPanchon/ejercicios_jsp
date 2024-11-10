<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tabla_multiplicar</title>
</head>
<body>


	<h1>Tabla de multiplicar</h1>

	<form action="">
		<label for="numero">Introduce un numero del 1 al 10</label> <input
			type="number" id="numero" name="numero" min="1" max="10"> <br>
		<br> <input type="submit" value="Calcular">
	</form>
	<br>
	<br>

	<%
				String numeroStr = request.getParameter("numero");
				String resultado = "";
				int multiplicacion = 0;
			
				
				if(numeroStr !=null){
					
					int numero = Integer.parseInt(numeroStr);
					
					if(numero > 0 && numero <= 10){
	%>

	<h2>
		Tabla de multiplicar del
		<%= numero %>
	</h2>
	<table border="1">

		<%
						for(int i = 0; i <= 10 ; i++){
	%>
		<tr>
			<td><%= numero%> X <%= i%></td>
			<td><%= numero * i %></td>
		</tr>
		<%
					}
	%>
	</table>

	<%
                } else {
    %>
		<p>El numero introducido no es válido</p>

	<%
                }
				}
    %>

	<br>
	<br>
	<a href="../index.jsp">Volver al menu principal</a>
</body>
</html>