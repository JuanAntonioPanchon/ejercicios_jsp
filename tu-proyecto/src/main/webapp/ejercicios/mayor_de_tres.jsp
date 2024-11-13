<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mayor_de_tres</title>
</head>
<body>
		
			<%
				String unoStr = request.getParameter("uno");
				String dosStr = request.getParameter("dos");
				String tresStr = request.getParameter("tres");
				Double mayor = null;
			
				
				if(unoStr !=null && dosStr != null && tresStr != null){
					
					double uno = Double.parseDouble(unoStr);
					double dos = Double.parseDouble(dosStr);
					double tres = Double.parseDouble(tresStr);
					
					if (uno >= dos && uno >= tres) {
				       mayor = uno;
				    } else if(dos >= uno && dos >= tres) {
				    	 mayor = dos;
				    } else {
				    	 mayor = tres;
				    }
				}
				
				
				String respuesta = "El numero mayor es " + mayor;
	%>
	
	
	
	<h1>Introduzca tres numeros</h1>
	
	<form action="">
		<label for="uno">nº1</label>
		<input type="number" id="uno" name="uno" required="required">
		
		
		<label for="dos">nº2</label>
		<input type="number" id="dos" name="dos" required="required">
		
		<label for="tres">nº3</label>
		<input type="number" id="tres" name="tres" required="required">
		
		<br><br>
		<input type="submit" value="Mostrar nº Mayor">
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