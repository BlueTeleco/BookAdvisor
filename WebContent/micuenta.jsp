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

    <title>BA - Mi cuenta</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Cabin:700' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="css/micuenta.css" rel="stylesheet">

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
              <h1 class="brand-heading" style="color:black;">Mi cuenta</h1>
              <p class="intro-text">
                <br><h5 style= "font-size:27px; color:black;">BookAdvisor</h5></p>
              <a href="#about" class="btn btn-circle js-scroll-trigger">
                <i class="fa fa-angle-double-down animated" style="color:black;"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </header>

  <section id="about" >
    </section>
    <br><br>
	<c:if test="${lector != null}">
		<%@ include file = "DatosLector.jsp" %>
	</c:if>
	<c:if test="${publicista != null}">
		<%@ include file = "DatosPublicista.jsp" %>
	</c:if>
     
    <br><br><br>
    <center>
    <h4>Cerrar Sesión</h4>
      <%@ include file = "FormLogout.jsp" %>
    </center>
    <br><br><br><br><br><br><br><br>
    
    <br><br><br>
    <!-- Footer -->
    <footer>
      <div class="container text-center">
        <p>Copyright &copy; ISST Grupo 7</p>
      </div>
    </footer>
  </body>
</html>