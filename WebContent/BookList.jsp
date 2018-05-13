<c:forEach items="${list_result}" var="book">
	<div class="col-lg-3 col-sm-6 mb-4" style = "height: 20rem;">
		<div class="card h-100">
			<a href="ReadFichaLibroServlet?titulo=${book.getTitulo()}">
			<img class="card-img-top" src="ServeImageServlet?titulo=${book.getTitulo()}" } alt="" style = "height:14rem;"></a>
			<div class="card-body">
				<h4 class="card-title">
					<a href="ReadFichaLibroServlet?titulo=${book.getTitulo()}">${book.getTitulo()} <br/>  <h6>${book.getAutor()}</h6> </a>
				</h4>
			</div>
		</div>
	</div> 
</c:forEach>