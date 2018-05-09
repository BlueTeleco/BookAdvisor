<c:forEach items="${list_result}" var="book">
	<div class="col-lg-3 col-sm-6 mb-4" style = "height: 20rem;">
		<div class="card h-100">
			<a href="#"><img class="card-img-top" src="https://imagessl6.casadellibro.com/a/l/t0/96/9788490663196.jpg" alt="" style = "height:14rem;"></a>
			<div class="card-body">
				<h4 class="card-title">
					<a href="#">${book.getTitulo()} <br/>  <h6>${book.getAutor()}</h6> </a>
				</h4>
			</div>
		</div>
	</div> 
</c:forEach>