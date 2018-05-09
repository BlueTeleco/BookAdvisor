<div>
    <h1 >Mis datos: Modo Lector </h1>
    
    <p>Nombre del usuario: <c:out value="${lector.getNombre()}"/> <button id="button2">Editar</button></p>    
    
    <p>Email del usuario: <c:out value="${lector.getEmail()}"/> <button id="button2">Editar</button></p>
        
    
    <p></p>
   	<select name="Criticas">
		<option value="" disabled selected>Mis críticas:</option>
		<c:forEach items="${criticas_list}" var="criticai">
				 <option value="Mis Criticas">${criticai.getTitulo()}</option>
		</c:forEach>
	</select>
</div>