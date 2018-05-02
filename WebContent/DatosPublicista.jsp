<div>
    <h1 >Mis datos: Modo Publicista </h1>
    
    <p>Nombre del usuario: <c:out value="${publicista.getNombre()}"/> </p>    
    <p>Email del usuario: <c:out value="${publicista.getEmail()}"/> </p>
    <p>Web de referencia: <c:out value="${publicista.getWeb()}"/> </p>
    
   	<select name="Noticias">
		<option value="" disabled selected>Mis noticias:</option>
		<c:forEach items="${noticias_list}" var="noticiai">
				 <option value="Mis Noticias">${noticiai.getTitulo()}</option>
		</c:forEach>
	</select>
</div>