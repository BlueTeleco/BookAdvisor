<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="en">

	<head>
	
		<meta charset="utf-8">
   		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   		<meta name="description" content="">
    	<meta name="author" content="">
		
		<title>BA-Ficha de libro</title>
	
		 <!-- Bootstrap core CSS -->
    	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    	<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

    	<!-- Custom fonts for this template -->
    	<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    	<link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    	<link href='https://fonts.googleapis.com/css?family=Cabin:700' rel='stylesheet' type='text/css'>
 
   		 <!-- Custom styles for this template -->
   		 <link href="css/ficha.css" rel="stylesheet">
	
	</head>
 
 	<body id="page-top">
	
	    <!-- Navigation -->
	  	<%@ include file = "NavigationBar.jsp" %>
    <br><br><br>

    <div class="container" >
      <div id="home">
        <nav>
          <ul class="nav nav-pills nav-fill" >
            <li class="nav-item" id="pills-tab" role="tablist">
              <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#nav-ficha" role="tab" aria-controls="nav-home" aria-selected="true" >Home</a>
            </li>
            <li class="nav-item">
             <a class="nav-link" id="nav-critica-tab" data-toggle="pill" href="#nav-critica" role="tab" aria-controls="nav-critica" aria-selected="false" >CrÃ­ticas</a>
            </li>
            <li class="nav-item">
             <a class="nav-link" id="nav-intercambio-tab" data-toggle="pill" href="#nav-intercambio" role="tab" aria-controls="nav-intercambio" aria-selected="false">Intercambio de libros</a>
           </li>
           <li class="nav-item">
             <a class="nav-link" id="nav-biblioteca-tab" data-toggle="pill" href="#nav-biblioteca" role="tab" aria-controls="nav-biblioteca" aria-selected="false" >Bibliotecas</a>
            </li>
          </ul>
      <br><hr>
      </div></div>

  <!-- Page Content -->
  <div class="container" >
    <div class="tab-content" id="pills-tabContent">
      <div class="tab-pane fade show active" id="nav-ficha" role="tabpanel" aria-labelledby="nav-home-tab">
        <br><br>
        <div class="row">

        <!-- Post Content Column -->
        <div>

          <!-- Title -->
          <h1 class="mt-4">La chica del tren</h1>

          <!-- Author -->
          <p class="lead">
            by
            <a href="#">Juan PÃ©rez</a>
          </p>

          <hr>

          <!-- Date/Time -->
          <p>Posted on January 1, 2018 at 12:00 PM</p>
		
          <br>
          <!-- Preview Image -->
          <div class="container">
          <div class="row my-8">
        <div class="col-lg-3">
        	<h1><c:out value="${fl.getTitulo()}"/></h1>
			<img  class="img-fluid rounded" src="https://imagessl1.casadellibro.com/a/l/t0/71/9788408141471.jpg" alt="" style = "height:20rem;">        </div>
        <!-- /.col-lg-8 -->
        <div class="col-lg-8">
          <h5>Autor/a del libro: <c:out value="${fl.getAutor()}"/></h5>  <br>
          <h5>Editorial del libro: Editorial: <c:out value="${fl.getAutor()}"/></h5> <br>
          <h5>Fecha de publicación de libro:</h5> <br>
          <h5>Categoría del libro:</h5> <c:out value="${fl.getCategoria()}"/><br>
          <h5>Reseña de la editorial:</h5> <c:out value="${fl.getResEdit()}"/> <br>
        </div>
        </div>
        <!-- /.col-md-4 -->
      </div>
          
          <br>
          <hr>

          <!-- Post Content -->
          <p class="lead"> La chica del tren es un excelente thriller psicolÃ³gico que viene avalado por el enorme Ã©xito cosechado en el mercado anglosajÃ³n. Tanto es asÃ­ que Dreamworks ya ha adquirido los derechos para hacer la versiÃ³n cinematogrÃ¡fica. </p>

          <p>La protagonista, Rachel Watson, es una mujer deprimida. El divorcio de su exmarido le ha condenado al alcoholismo. Todos los dÃ­as toma en Londres el tren de las 8:04. En el trayecto siempre observa a una pareja que parece tiene una vida perfecta, pero un dÃ­a ve algo y, la chica a la que ella llamaba Jess, desaparece... </p>

          <p>Con este argumento, que nos recuerda a la pelÃ­cula La ventana indiscreta de Alfred Hitchcock, la autora Paula Hawkins construye una buena historia. Con capÃ­tulos cortos y utilizando el punto de vista de 3 de los personajes de la novela; Rachel, Jess (Megan) y Anna (actual pareja de su ex); la narraciÃ³n es Ã¡gil y brillante. Con un ritmo que va in crescendo y unos giros inesperados, la lectura se vuelve adictiva, absorbente y en ocasiones claustrofÃ³bica. Cuidado porque nada es lo que parece. </p>
          

         

          <blockquote class="blockquote">
            <p class="mb-0">Tenemos entre la manos el mÃ¡s que probable Ã©xito del verano.</p>
            <footer class="blockquote-footer">Lector de
              <cite title="Source Title">La chica del tren</cite>
            </footer>
          </blockquote>

          <p>En resumen, tenemos entre la manos el mÃ¡s que probable Ã©xito del verano. Un estupendo thriller psicolÃ³gico, con unos personajes bien definidos, narrado de forma Ã¡gil y dinÃ¡mica y que nos hace vivir momentos de tensiÃ³n y angustia. Muy recomendable. </p>

            <br><br><hr>
        
      </div>
    </div>
  </div>




  <!-- fORMULARIO DE CRITICAS -->
    <div  class="tab-pane fade" id="nav-critica" role="tabpanel" aria-labelledby="nav-critica-tab">
          <!-- Comments Form -->
          <br><br><br><br>
          
          
           <form action="CreateCriticaServlet">
          <div>
          <div class="card my-4">
            <h5 class="card-header">Deja una crÃ­tica de la ficha</h5>
            <div class="card-body">
                <div class="form-group">
                <input type="text" class="form-control" name="titulo" placeholder="Titulo de la crítica..."><br>
					<br/>
				<textarea class="form-control" rows="3" name="cuerpo" rows="4" cols="50" placeholder="Descripción de la crítica..."></textarea>
				<br/>
                </div>
                <h5>Puntúa la ficha:</h5>
            <span>
				<input type="radio" name="rating" value="1">&#9733;</input>
				<input type="radio" name="rating" value="2">&#9733;</input>
				<input type="radio" name="rating" value="3">&#9733;</input>
				<input type="radio" name="rating" value="4">&#9733;</input>
				<input type="radio" name="rating" value="5">&#9733;</input>
			</span> <br><br>
           <noscript>Necesitas tener habilitado javascript para poder votar</noscript>
                <input class="btn btn-primary" type="submit" value="Crear nueva crítica" style="background-color:#42DCA3;"></input>
              </form>
            </div>
          </div> <br><br>
         </div> <hr> <br>
			<div>
	   			 <h4>Críticas de otros lectores:</h4>
					<c:forEach items="${fl.getCriticas()}" var="criticai">
			 		<h3><c:out value="${criticai.getTitulo()}"/></h3>
			 		<p><c:out value="${criticai.getTexto()}"/></p>
			 		<strong>Firmado: <c:out value="${criticai.getAutor().getNombre()}"/></strong></br>		 
			 		 
					</c:forEach>
				</select>
			</div>
          <!-- Single Comment -->
          <div>
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <div class="media-body">
              <h5 class="mt-0">Comentario </h5>
              Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
            </div>
          </div>

            <div class="ec-stars-wrapper">
              <a href="#" data-value="1" title="Votar con 1 estrellas">&#9733;</a>
              <a href="#" data-value="2" title="Votar con 2 estrellas">&#9733;</a>
              <a href="#" data-value="3" title="Votar con 3 estrellas">&#9733;</a>
              <a href="#" data-value="4" title="Votar con 4 estrellas">&#9733;</a>
              <a href="#" data-value="5" title="Votar con 5 estrellas">&#9733;</a>
          </div>
         <noscript>Necesitas tener habilitado javascript para poder votar</noscript>
      </div>

          <!-- Comment with nested comments -->
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <div class="media-body">
              <h5 class="mt-0">Comentario </h5>
              Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.

              <div class="media mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                  <h5 class="mt-0">Comentario respuesta</h5>
                  Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                </div>
              </div>

              <div class="media mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                  <h5 class="mt-0">Comentario respuesta</h5>
                  Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                </div>
              </div>

            </div>
          </div>

        </div>

  
  
  <!-- FORMULARIO INTERCAMBIO DE LIBROS -->
  <div  class="tab-pane fade" id="nav-intercambio" role="tabpanel" aria-labelledby="nav-intercambio-tab">
          <!-- Comments Form -->
          <br><br>
          <form action="CreateExchangeServlet">
          
          <br><br><div>
          <div class="card my-4">
            <h5 class="card-header">Proponer un intercambio</h5>
            <div class="card-body">
              <form>
                <div class="form-group">
                  <input type="text" class="form-control" name="formato" placeholder="Formato de mi libro">
					<br><br>
				<input type="text" class="form-control" name="estado" placeholder="Estado de mi libro">
					<br><br>
				<input type="text" class="form-control" name="ISBN" placeholder="ISBN de mi libro">
					<br><br>
				<textarea name="info" class="form-control" rows="4" cols="50" rows="3" placeholder="Información adicional..."></textarea>
					<br><br>
				<input type="submit" class="form-control" class="btn btn-primary" value="Crear propuesta de intercambio" style="background-color:#42DCA3;"></input>
                </div>
              </form>
            </div>
          </div>
          <br><hr><br><br>
          <h4> Lectores que ofrecen intercambio de libros:</h4>
          <div>
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
			<div class="media mb-4">
            	<img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            	<div class="media-body">
            	  <h5 class="mt-0">Comentario </h5>
             	 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
           	</div>
          </div> <br>
          <hr>
          <br>

      </div>
    </div>

  <div  class="tab-pane fade" id="nav-biblioteca" role="tabpanel" aria-labelledby="nav-biblioteca-tab">
         	
            <br><br><br><br><h5 class="card-header" style= >Bibliotecas mÃ¡s cercanas con disponibilidad del producto</h5>
            <div class="card-body">

               <!-- Map Section -->
               <br><br> 
            <div align="center"><h3 style="color:grey"> Biblioteca ETSIT UPM</h3>
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3036.0339945498727!2d-3.7284007851684966!3d40.45238456139523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd422834b7a8fb4d%3A0x2a3c66a12ada73f9!2sUPM+Escuela+T%C3%A9cnica+Superior+de+Ingenieros+de+Telecomunicaci%C3%B3n!5e0!3m2!1ses!2ses!4v1525527190219" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div> <br><br><br><br><br><br><br>

            
            <div align="center"><h3 style="color:grey"> Biblioteca Nacional de EspaÃ±a</h3>
              <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3037.338225704359!2d-3.691621085169501!3d40.423508963152194!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd4228907e039627%3A0xd5b5764d8a0a53f7!2sBiblioteca+Nacional+de+Espa%C3%B1a!5e0!3m2!1ses!2ses!4v1525527143693" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div> <br><br><br><br><br><br>

            <div align="center"><h3 style="color:grey; text-align:center;"> Biblioteca Municipal LeÃ³n Tolstoi</h3>
            <iframe  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3032.7887896140924!2d-3.8935320851660475!3d40.52415925702377!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd418324023c0ba9%3A0x241e4c45c9c6e546!2sBiblioteca+Municipal+Le%C3%B3n+Tolst%C3%B3i!5e0!3m2!1ses!2ses!4v1525527249786" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen ></iframe></div>

              
            </div>
          </div>
            
          </div>
          <br>

         
          
      </div>
    </div> 
  </div>
		<br><br>     
      <!-- /.row -->

    </div>
    <!-- /.container -->
    <br><br>

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Isst Grupo 07</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
