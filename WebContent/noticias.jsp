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

    <title>BA - Noticias</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Cabin:700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/noticias.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigation -->
  	<%@ include file = "NavigationBar.jsp" %>

    <!-- Intro Header -->
    <header class="masthead">
      <div class="intro-body">
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto">
              <br> <br> <br><br><br>  
              <h1 class="brand-heading">Tablón de noticias</h1>
              <p class="intro-text">
                <br><h5>BookAdvisor</h5></p>
              <a href="#about" class="btn btn-circle js-scroll-trigger">
                <i class="fa fa-angle-double-down animated"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </header>


<br>
<br>

<div class="container" id="about">
      <br>
      <!-- Page Heading -->
      <h1 class="my-4">
        <small>Encuentra la editorial o librería que buscas</small>
      </h1>
    

    <section>
<!-- Search Widget -->
         <div class="row">
          <div class="card h-100" style="width:28rem;" >
            <h5 class="card-header" style="color:grey;">Buscar librerías</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Escribe aquí...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Buscar</button>
                </span>
              </div>
            </div>
        </div>
        <div class="card " style="width:28rem;">
            <h5 class="card-header" style="color:grey;">Buscar editoriales</h5>
            <div class="card-body">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Escribe aquí...">
                <span class="input-group-btn">
                  <button class="btn btn-secondary" type="button">Buscar</button>
                </span>
               
              </div>

            </div>
          </div>
        </div>
<br><br><br><hr>
</div>

</section>
    <section>
     <!-- Page Content -->
    <div class="container">
      <br><br>
      <!-- Page Heading -->
      <h1 class="my-4">
        <small>Noticias librerías</small>
      </h1>

      <!-- Project One -->
      <div class="row">
        <div class="col-md-7">
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="img/1.png" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Noticia 1</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam exercitationem expedita laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur quos perspiciatis atque eveniet unde.</p>
          <a class="btn btn-primary" href="#">Ver noticia</a>
        </div>
      </div>
      <!-- /.row -->

      <br><br><hr><br><br><br>

      <!-- Project Two -->
      <div class="row">
        <div class="col-md-7">
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="img/2.png" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>Noticia 2</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, odit velit cumque vero doloremque repellendus distinctio maiores rem expedita a nam vitae modi quidem similique ducimus! Velit, esse totam tempore.</p>
          <a class="btn btn-primary" href="#">Ver noticia</a>
        </div>
      </div>
      <!-- /.row -->




      <!-- Pagination -->
      <br><br>
      <ul class="pagination justify-content-center">
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Previous">
            <span aria-hidden="true" style="color: #00CED1;">&laquo;</span>
            <span class="sr-only">Previous</span>
          </a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" style="color: #00CED1;">1</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" style="color: #00CED1;">2</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" style="color: #00CED1;">3</a>
        </li>
        <li class="page-item">
          <a class="page-link" href="#" aria-label="Next">
            <span aria-hidden="true" style="color: #00CED1;">&raquo;</span>
            <span class="sr-only">Next</span>
          </a>
        </li>
      </ul>

    <br>
    </div>
    </section>

    <section style="background-color: white">
      <!-- Page Content -->
      <div class="container">

        <!-- Page Heading -->
        <br><br>
        <h1 class="my-4" style="color: #1b1e21">
          <small>Noticias editoriales</small>
        </h1>


        <!-- Project Three -->
        <div class="row">
          <div class="col-md-7">
            <a href="#">
              <img class="img-fluid rounded mb-3 mb-md-0" src="img/3.png" alt="">
            </a>
          </div>
          <div class="col-md-5">
            <h3 style="color: #1b1e21">Noticia 3</h3>
            <p style="color: #1b1e21">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, temporibus, dolores, at, praesentium ut unde repudiandae voluptatum sit ab debitis suscipit fugiat natus velit excepturi amet commodi deleniti alias possimus!</p>
            <a class="btn btn-primary" href="#">Ver noticia</a>
          </div>
        </div>
        <!-- /.row -->

        <br><br><hr><br><br><br>

        <!-- Project Four -->
        <div class="row">

          <div class="col-md-7">
            <a href="#">
              <img class="img-fluid rounded mb-3 mb-md-0" src="img/4.png" alt="">
            </a>
          </div>
          <div class="col-md-5">
            <h3 style="color: #1b1e21">Noticia 4</h3>
            <p style="color: #1b1e21">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, quidem, consectetur, officia rem officiis illum aliquam perspiciatis aspernatur quod modi hic nemo qui soluta aut eius fugit quam in suscipit?</p>
            <a class="btn btn-primary" href="#">Ver noticia</a>
          </div>
        </div>
        <!-- /.row -->

        <br><hr>



        <!-- Pagination -->
        <br><br>
        <ul class="pagination justify-content-center">
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Previous">
              <span aria-hidden="true" style="color: #00CED1;">&laquo;</span>
              <span class="sr-only">Previous</span>
            </a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#" style="color: #00CED1;">1</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#" style="color: #00CED1;">2</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#" style="color: #00CED1;">3</a>
          </li>
          <li class="page-item">
            <a class="page-link" href="#" aria-label="Next">
              <span aria-hidden="true" style="color: #00CED1;">&raquo;</span>
              <span class="sr-only">Next</span>
            </a>
          </li>
        </ul>
        <br>
      </div>
    </section>
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