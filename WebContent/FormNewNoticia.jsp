<form action="CreateNoticiaServlet">
	<input type="hidden" name="pub_name" value="${publicista.getName()}" />

	<input type="text" name="titulo" placeholder="Titulo" /> 
	<input type="text" name="noticia" placeholder="Noticia del libro..." /> 

	<input type="submit">Crear nueva noticia</input>
</form>