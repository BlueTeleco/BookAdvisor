<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
  <div class="container">
	<a class="navbar-brand js-scroll-trigger" href="index.jsp" >BookAdvisor</a>
	<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
	  Menu
	  <i class="fa fa-bars"></i>
	</button> 
	<div class="collapse navbar-collapse" id="navbarResponsive">
	  <ul class="navbar-nav ml-auto">
		<li class="nav-item">
		  <a class="nav-link js-scroll-trigger" href="CatalogoServlet" onmouseover="this.style.color='orange';" onmouseout="this.style.color=''">Cat�logo</a>
		</li>
		<li class="nav-item">
		  <a class="nav-link js-scroll-trigger" href="noticias.jsp" onmouseover="this.style.color='orange';" onmouseout="this.style.color=''">Tabl�n de noticias</a>
		</li>
		<c:if test="${lector != null || publicista != null}">
			<li class="nav-item">
				<a class="nav-link js-scroll-trigger" href="MiCuentaServlet" onmouseover="this.style.color='orange';" onmouseout="this.style.color=''">Mi Cuenta</a>
			</li>
			<li class="nav-item">
				<a class="nav-link js-scroll-trigger" href="publicar.jsp" onmouseover="this.style.color='orange';" onmouseout="this.style.color=''">Publicar</a>
			</li>
		</c:if>
		<c:if test="${lector == null && publicista == null}">
				<li class="nav-item">
					<a class="nav-link js-scroll-trigger" href="iniciarsesion.jsp" onmouseover="this.style.color='orange';" onmouseout="this.style.color=''">Iniciar Sesi�n / Registrarse</a>
				</li>
		</c:if>
		
	  </ul>
	</div>
  </div>
</nav>