<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="CreateLectorServlet" method="get" style="margin:auto;width:50%;padding:10px">

	<!--Username-->
                <div class="form-group">
                    <div class="cols-sm-10">
                        <div class="input-group">
                           
                            <input type="text" class="form-control" name="name" id="name"  placeholder="Introduce tu usuario"/>
                        </div>
                    </div>
                </div><br>

                <!--Email-->
                <div class="form-group">
                    <div class="cols-sm-10">
                        <div class="input-group">
                           
                            <input type="text" class="form-control" name="email" id="email"  placeholder="Introduce tu Email"/>
                        </div>
                    </div>
                </div><br>

                <!--Contraseña-->
                <div class="form-group">
                     <div class="cols-sm-10">
                        <div class="input-group">
                            
                            <input type="password" class="form-control" name="password" id="password"  placeholder="Contraseña"/>
                        </div>
                    </div>
                </div><br>
                
                <center>
		            <span class="input-group-btn">
	                  <button class="btn btn-secondary" type="submit" style="align:center; border-radius: 15px;">Crear lector</button>
	                </span>
                </center>
</form>
