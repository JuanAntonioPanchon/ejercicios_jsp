<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dia_de_la_semana</title>
</head>
<body>
		
			<%
				String numeroStr = request.getParameter("numero");
				String dia = "";
			
				
				if(numeroStr !=null){
					
					int numero = Integer.parseInt(numeroStr);
					
					
					switch (numero) {
				    case 1:
				    	dia = "Lunes";
				        break;
				    case 2:
				    	dia = "Martes";
				        break;
				    case 3:
				    	dia = "Miercoles";
				        break;
				    case 4:
				    	dia = "Jueves";
				        break;
				    case 5:
				    	dia = "Viernes";
				        break;
				    case 6:
				    	dia = "Sabado";
				        break;
				    case 7:
				    	dia = "Domingo";
				    	break;

				    default:
				        dia = "Debes introducir un numero del 1 al 7";
				        break;
				}

					
					
				}

	%>
	
	
	
	<h1>Dia de la semana</h1>
	
	<form action="">
		<label for="numero">Introduce un numero del 1 al 7</label>
		<input type="number" id="numero" name="numero">
	
		<br><br>
		<input type="submit" value="Mostrar dia">
	</form>
	
	<h2>  
	<%=
		dia
	%>
	</h2>
	<br>
	<br>
	<a href="../index.jsp">Volver al menu principal</a>
</body>
</html>