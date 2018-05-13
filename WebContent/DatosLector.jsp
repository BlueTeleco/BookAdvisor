<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div>
    <div class="container" >
    <hr class="">
    <div class="container target">
        <div class="row">
            <div class="col-sm-10">
                <h1 class="">Usuario: <c:out value="${lector.getNombre()}"/></h1>
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
                    <li class="list-group-item text-right"><span><strong class="pull-left" style="color:black">Nombre:  ${lector.getNombre()} </strong><button class="pull-right" id="button2" style="color:black">Editar</button></span> </li>
                    <li class="list-group-item text-right"><span><strong class="pull-left" style="color:black">Email: ${lector.getEmail()}</strong><button id="button2" style="color:black">Editar</button></span> </li>
                    <li class="list-group-item text-right"><span class="pull-left"><strong style="color:black">Role: Lector </strong></span> </li>
                </ul>
            </div>
            <div id="push"></div>
        </div>
    </div>
</div>
</div>
