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

    <title>BA - Iniciar Sesión</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
	   <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Cabin:700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/sesion.css" rel="stylesheet">
    
  
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
              <br><br><br><br>
              <h1 class="brand-heading">Iniciar Sesión</h1>
              <p class="media-text" style= "font-size:27px;">
                BookAdvisor</p>
                <a href="#about" class="btn btn-circle js-scroll-trigger">
                <i class="fa fa-angle-double-down animated"></i>
              </a>
              
            </div>
          </div>
        </div>
      </div>
    </header><br>

  <div style="background-color:white">
  <br><br><br><br>
  <section id="about" >
    <h1 class="media-heading" style="text-align:center; color:black">Inicia Sesión</h1>
	<%@ include file = "FormLogin.jsp" %>
  </section> <br><br><br>

  
  <section id="about" >
  <div class= "container">
  <hr><br><br><br>
      <h1 class="media-heading" style="text-align:center; color:black">¿Eres nuevo por aquí? </h1>
  </div> <br>
  </div>
  <div style="background-color:lightgrey"> <br>
  <div class="container">
      <h2 class="media-heading" style="color:white;" >Registrarse como nuevo lector</h2>
      </div>
      <%@ include file = "FormNewUser.jsp" %> <br><br><br><br><br>
      </div>
   <div style="background-color:white">
   <div class="container"> <br><br>
      <h2 class="media-heading" style="color:black">Registrarse como nuevo publicista </h2>
      <%@ include file = "FormNewPublicista.jsp" %> <br><br>
   </div>
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
