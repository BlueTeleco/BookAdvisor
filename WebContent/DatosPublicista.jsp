<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
   <div class="container" >
    <hr class="">
    <div class="container target">
        <div class="row">
            <div class="col-sm-10">
                <h1 class="">Usuario: ${publicista.name}</h1>
                <button type="button" class="btn btn-success">Mis noticias</button>  
                <button type="button" class="btn btn-info">Mis criticas</button>
                <select name="Noticias">
					    <option value="" disabled selected>Mis noticias:</option>
					    <c:forEach items="${noticias_array}" var="noticiasi">
					    	<c:if test="${noticiai.autor == publicista.name}">
								 <option value=${noticiai}>${noticiai.titulo}</option>
							</c:if>  
					    </c:forEach>
				</select>
                <br>
            </div>
            <div class="col-sm-2"><a href="/users" class="pull-right"><img title="profile image" class="img-circle img-responsive" src="http://www.rlsandbox.com/img/profile.jpg"></a>

            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-6">
                <!--left col-->
                <ul class="list-group">
                    <li class="list-group-item text-muted" contenteditable="false">Perfil</li>
                    <li class="list-group-item text-right"><span><strong class="pull-left" style="color:black">Nombre: ﻿${publicista.getNombre()}</strong><button class="pull-right" id="button2" style="color:black">Editar</button></span> </li>
                    <li class="list-group-item text-right"><span><strong class="pull-left" style="color:black">Email: ﻿${publicista.getEmail()}</strong><button class="pull-right" id="button2" style="color:black">Editar</button></span> </li>
                    <li class="list-group-item text-right"><span><strong class="pull-left" style="color:black">Url:﻿${publicista.getWeb()}</strong><button class="pull-right" id="button2" style="color:black">Editar</button></span> ${publicista.url}</li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong style="color:black">Role: Publicista</strong></span> Publicista</li>
                </ul>
            </div>
            <div id="push"></div>
        </div>
    </div>
</div>
</div>

