<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Suma acumulativa</title>
</head>
<body>
		
			<%
				String numeroStr = request.getParameter("numero");
				String resultado = "";
				int suma = 0;
			
				
				if(numeroStr !=null){
					
					int numero = Integer.parseInt(numeroStr);
					
					for(int i = 0; i <= numero ; i++){
						suma += i;
					}
					
					resultado = "El resultado de la suma desde 0 hasta " + numero + " es igual a " + suma;
					
				}
				

	%>
	
	
	
	<h1>Suma acumulativa</h1>
	
	<form action="">
		<label for="numero">Introduce un numero</label>
		<input type="number" id="numero" name="numero">
	
		<br><br>
		<input type="submit" value="Calcular suma acumulativa">
	</form>
	
	<h2>  
	<%=
		resultado
	%>
	</h2>
	<br>
	<br>
	<a href="../index.jsp">Volver al menu principal</a>
</body>
</html>