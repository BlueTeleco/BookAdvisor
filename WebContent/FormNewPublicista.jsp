<form action="CreatePublicistaServlet" style="margin:auto;width:50%;padding:10px">

	<!--Username-->
                <div class="form-group">
                    <label for="name" class="cols-sm-2 control-label" >Usuario</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                           
                            <input type="text" class="form-control" name="name" id="name"  placeholder="Introduce tu usuario"/>
                        </div>
                    </div>
                </div>

                <!--Email-->
                <div class="form-group">
                    <label for="email" class="cols-sm-2 control-label">Email</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                           
                            <input type="text" class="form-control" name="email" id="email"  placeholder="Introduce tu Email"/>
                        </div>
                    </div>
                </div>
                
                <!--URL-->
                <div class="form-group">
                    <label for="email" class="cols-sm-2 control-label">URL</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <input type="text" class="form-control" name="url" id="email"  placeholder="Introduce la url"/>
                        </div>
                    </div>
                </div>

                <!--Contrasena-->
                <div class="form-group">
                    <label for="password" class="cols-sm-2 control-label">Contrasena</label>
                    <div class="cols-sm-10">
                        <div class="input-group">
                            <input type="password" class="form-control" name="password" id="password"  placeholder="Contrasea"/>
                        </div>
                    </div>
                </div>


                <center>
	            <span class="input-group-btn">
                  <button class="btn btn-secondary" type="submit" style="margin:auto;width:50%;padding:10px">Crear publicista</button>
                </span>
                </center>


</form>
