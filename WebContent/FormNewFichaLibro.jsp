<form action="CreateFichaServlet" method="post">

	<input type="text" name="titulo" placeholder="Titulo del libro" />
	<input type="text" name="autor" placeholder="Autor del libro" />
	<input type="text" name="editorial" placeholder="Editorial del libro" /><br/>

	<p>Fecha de publicacion del Libro:
	<input type="text" name="fecha" placeholder="dd/mm/aaaa"/></p>

	<p>
	<label for="categoria">Categoria del libro: 
		<select class="form-control" style="width: 250px;" name="categoria" id="categoria">
			<optgroup label="Categoria del libro">
				<option value="Terror">"Terror"</option>
				<option value="Ficcion">"Ficcion"</option>
				<option value="Romantica">"Romantica"</option>
				<option value="Autoayuda">"Autoayuda"</option>
				<option value="Comic">"Comic"</option>
				<option value="Historia">"Historia"</option>
				<option value="Ciencias">"Ciencias"</option>
				<option value="Aventura">"Aventura"</option>
				<option value="Biografia">"Biografia"</option>
				<option value="Otros">"Otros"</option>				
			</optgroup>
		</select>
	</label>
	</p>
		
	<!--  <input type="file" name="image" accept="image/*"/> -->
	
	<p>Reseña de la editorial:</p>
	<textarea cols="50" rows="4" name="resenaEditorial"> </textarea>
	<br/>
	<br/>
	<input type="submit" value="crear ficha de libro"></input>
	<br/>
	<br/>

</form>
