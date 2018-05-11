
	<form action="CreateFichaServlet" method="post">
<span class="contact100-form-title">
					Noticia
				</span>

            
<center>
            <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" >
                <span class="label-input100">Autor *</span>
                <input class="input100" type="hidden" name="pub_name" value="${publicista.getNombre()}" >
            </div>
            <div class="wrap-input100 validate-input bg1 rs1-wrap-input100" >
                <span class="label-input100">Titulo *</span>
                <input class="input100" type="text" name="titulo" placeholder="Titulo">
            </div>
           <div class="wrap-input100 validate-input bg0 rs1-alert-validate" data-validate = "Please Type Your Message">
                <span class="label-input100">Descripcion</span>
                <textarea class="input100" name="message" placeholder="Desarrollo de la noticia"></textarea>
            </div>

            
            </center>

            


            

            <div class="container-contact100-form-btn">
                <button class="contact100-form-btn" type="submit">
						<span>
							Publicar noticia
							<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
						</span>
                </button>
            </div>
</form>