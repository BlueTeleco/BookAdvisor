<form action="CreateCriticaServlet">

	<strong>Valorar este libro: </strong>
	<br/>
	<span>
		<input type="radio" name="rating" value="1">&#9733;</input>
		<input type="radio" name="rating" value="2">&#9733;</input>
		<input type="radio" name="rating" value="3">&#9733;</input>
		<input type="radio" name="rating" value="4">&#9733;</input>
		<input type="radio" name="rating" value="5">&#9733;</input>
	</span>
	<br/>
	<input type="text" name="titulo" placeholder="Titulo de la cr�tica">
	<br/>
	<textarea name="cuerpo" rows="4" cols="50" placeholder="Descripci�n de la cr�tica..."></textarea>
	<br/>
	<input type="submit" value="Crear nueva cr�tica"></input>
	
</form>