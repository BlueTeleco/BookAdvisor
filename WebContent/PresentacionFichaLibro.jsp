<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
 <body>
	
	    <!-- Navigation -->
	  	<%@ include file = "NavigationBar.jsp" %>
</div>
	<div>
	    <h1><c:out value="${fl.getTitulo()}"/></h1>
	    <p> AQUI VA LA FOTO </p>
	    <p>Autor: <c:out value="${fl.getAutor()}"/></p>
	    <p>Editorial: <c:out value="${fl.getAutor()}"/></p>   
	    <p>Fecha de publicación: <c:out value="${fl.getFecha()}"/></p>  
	    <p>Categoria: <c:out value="${fl.getCategoria()}"/></p>
	    <p>Reseña de la editorial: <c:out value="${fl.getResEdit()}"/></p></br>    
	</div>

	<div>
		<%@ include file = "FormNewExchange.jsp" %>
	</div>
</div>
	
	</br>
	</br>
	</br>
	</br>
	
</div>	
	<div>	
		<%@ include file = "FormCritica.jsp" %>
	</div>
	<div>
	    <h1 >Críticas de otros lectores:</h1>
			<c:forEach items="${fl.getCriticas()}" var="criticai">
			 	<h3><c:out value="${criticai.getTitulo()}"/></h3>
			 	<p><c:out value="${criticai.getTexto()}"/></p>
			 	<strong>Firmado: <c:out value="${criticai.getAutor().getNombre()}"/></strong></br>		 
			 		 
			</c:forEach>
		</select>
	</div>
</div>	
	
	</br>
	</br>
	</br>
	</br>
	
<div>	
	<div>
		<%@ include file = "FormNewExchange.jsp" %>
	</div>
	<div>
	    <h1 >Propuestas de intercambio:</h1>
			<c:forEach items="${fl.getExchanges()}" var="exchangei">
			 	<h3><c:out value="${exchangei.getTitulo()}"/></h3>
			 	<p>Email de contacto: <c:out value="${exchangei.getEmail()}"/></p>
			 	<p>Formato: <c:out value="${exchangei.getFormato()}"/></p>
			 	<p>Estado del libro: <c:out value="${exchangei.getEstado()}"/></p>
			 	<p>ISBN: <c:out value="${exchangei.getISBN()}"/></p>
			 	<p>Información adicional: <c:out value="${exchangei.getInfo()}"/></p></br>
			</c:forEach>
		</select>
	</div>
</div>
	

</body>
</html>