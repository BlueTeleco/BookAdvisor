<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="CreateFichaServlet" method="post" enctype="multipart/form-data">

	<span class="contact100-form-title">
					Ficha
	</span>
	<center>
            <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate="Please Type Your Name">
                <span class="label-input100">Título *</span>
                <input class="input100" ﻿type="text" name="titulo" placeholder="Titulo del libro"o">
            </div>

            <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" >
                <span class="label-input100">Autor *</span>
                <input class="input100" ﻿type="text" name="autor" placeholder="Autor del libro">
            </div>
            <br>
            <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" >
                <span class="label-input100">Fecha de publicacion del libro *</span>
                <input class="input100" ﻿type="text" name="fecha" placeholder="dd/mm/aaaa">
            </div>
            <br>
             <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" >
                <span class="label-input100">Editorial *</span>
                <input class="input100" ﻿type="text" name="editorial" placeholder="Editorial del libro">
            </div>
            <br>

            <div class="wrap-input100 input100-select bg1 rs1-wrap-input100">
                <span class="label-input100">Categoría *</span>
                <div>
                    <select class="js-select2" name="service">
                        <option value="Terror">Terror</option>
				<option value="Ficcion">Ficcion</option>
				<option value="Romantica">Romantica</option>
				<option value="Autoayuda">Autoayuda</option>
				<option value="Comic">Comic</option>
				<option value="Historia">Historia</option>
				<option value="Ciencias">Ciencias</option>
				<option value="Aventura">Aventura</option>
				<option value="Biografia">Biografia</option>
				<option value="Otros">Otros</option>		
                    </select>
                    <div class="dropDownSelect2"></div>
                </div>
            </div>
     	<br>
	<div class="wrap-input100 validate-input bg1 rs1-wrap-input100" >
                <span class="label-input100">Selecciona una foto para tu ficha *</span><br>
                 <input type="file" name="file" accept="image/*">
     </div>
	<br>
	 
            <div class="wrap-input100 validate-input bg0 rs1-alert-validate rs1-wrap-input100" data-validate = "Please Type Your Message">
                <span class="label-input100">Descripción</span>
                <textarea class="input100" name="resenaEditorial" placeholder="Comentarios sobre el libro seleccionado"></textarea>
            </div>
            <br>
         </center>

            <div class="container-contact100-form-btn">
                <button class="contact100-form-btn" type="submit">
						<span>
							Publicar
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
                </button>
            </div>

</form>