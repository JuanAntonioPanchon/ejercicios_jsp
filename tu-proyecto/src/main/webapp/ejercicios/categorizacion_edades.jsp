<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Categorizacion de edades</title>
</head>
<body>
		
			<%
				String numeroStr = request.getParameter("numero");
				String categoria = "";
			
				
				if(numeroStr !=null){
					
					int numero = Integer.parseInt(numeroStr);
					
					if (numero < 12) {
						categoria = "Infante";
				    } else if (numero >= 12 && numero < 18) {
				    	categoria = "Adolescente";
				    } else if (numero >= 18 && numero < 61) {
				    	categoria = "Adulto";
				    } else {
				    	categoria = "Anciano";
				    }
					
				}

	%>
	
	
	
	<h1>Calcula tu clasificacion segun tu edad</h1>
	
	<form action="">
		<label for="numero">Introduce tu edad</label>
		<input type="number" id="numero" name="numero">
	
		<br><br>
		<input type="submit" value="Calcular">
	</form>
	
	<h2>  
	<%=
		categoria
	%>
	</h2>
	<br>
	<br>
	<a href="../index.jsp">Volver al menu principal</a>
</body>
</html>