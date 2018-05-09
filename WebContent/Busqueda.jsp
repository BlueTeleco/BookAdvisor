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

    <title>BA - Búsqueda</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Cabin:700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/busqueda.min.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigation -->
  	<%@ include file = "NavigationBar.jsp" %>

   
                                            <!-- Page Content -->

<br><br> <br><br>
<header class="masthead">
<!-- Page Content -->
    <section id="about" >
    <div class="container">

      <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">
          
          <br><br><br><h1 class="my-4"> Resultados de tu búsqueda </h1> <br><br>

	<div class="row">
		<%@ include file = "BookList.jsp" %>
	</div> <!--row-->

    <div>
    	<br><br><br>
    </div>
 
    </div>

        <!-- Sidebar Widgets Column -->
       <div class="col-md-4">
		<br><br><br><br><br><br><br><br>
          <!-- Search Widget -->
          <div class="card my-4">
            <h5 class="card-header" style="color:grey;">Buscar libros por TÍTULO</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Escribe aquí..">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Buscar</button>
                </span>
              </div>
            </div>
          </div>

          <div><br></div>

          <!-- Search Widget -->
          <div class="card my-4">
            <h5 class="card-header" style="color:grey;">Buscar libros por AUTOR</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Escribe aquí...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Buscar</button>
                </span>
              </div>
            </div>
          </div>

        <div><br></div>

          <!-- Categories Widget -->
          <div class="card my-4">
            <h5 class="card-header" style="color:grey;">Géneros</h5>
            <div class="card-body">
              <div class="row">
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Autoayuda</a>
                    </li>
                    <li>
                      <a href="#">Aventura</a>
                    </li>
                    <li>
                      <a href="#">Biografía</a>
                    </li>
                    <li>
                      <a href="#">Ciencias</a>
                    </li>
                    <li>
                      <a href="#">Cómic</a>
                    </li>
                  </ul>
                </div>
                <div class="col-lg-6">
                  <ul class="list-unstyled mb-0">
                    <li>
                      <a href="#">Ficción</a>
                    </li>
                    <li>
                      <a href="#">Historia</a>
                    </li>
                    <li>
                      <a href="#">Romántica</a>
                    </li>
                    <li>
                      <a href="#">Terror</a>
                    </li>
                    <li>
                      <a href="#">Otros</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

</section>
</header>
    <!-- Footer -->
    <footer>
      <div class="container text-center">
        <p>Copyright &copy; ISST Grupo 7</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

    <!-- Custom scripts for this template -->
    <script src="js/grayscale.min.js"></script>

  </body>

</html>