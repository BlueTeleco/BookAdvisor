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
              <h1 class="brand-heading">Mi cuenta</h1>
              <p class="intro-text">
                <br><h5 style= "font-size:27px;">BookAdvisor</h5></p>
              <a href="#about" class="btn btn-circle js-scroll-trigger">
                <i class="fa fa-angle-double-down animated"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </header>

  <section id="about" >
    </section>
    <br><br>
    
    <%
    	if (found) {
			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getValue().equals("lector")) {
	%>

					<%@ include file = "DatosLector.jsp" %>
	
	<%
				} else if (cookies[i].getValue().equals("publicista")) {
	%>

					<%@ include file = "DatosPublicista.jsp" %>
	
	<%
				}
			}
    	}
    %>
     
    <br><br>
    <h4>Logout</h4>
      <%@ include file = "FormLogout.jsp" %>
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