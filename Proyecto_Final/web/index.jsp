<%-- 
    Document   : index
    Created on : 29/09/2020, 10:02:16 PM
    Author     : rodri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="JS/AllInOne.js"></script>

<title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10">
                <div class="card-body">
                    <form class="form-sign" action="sr_login" method="POST">
                        <div class="form-group text-center">
                            <h3>Login</h3>
                            <img src="upload/2551513.jpg" alt="" height="70" width="170"/>
                            <label>Bienvenido</label>
                        </div>
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" id="txt_usuario" name="txt_usuario" class="form-control" placeholder="Escriba su usuario" required>
                        </div>
                        <div class="form-group">
                            <label>Contraseña</label>
                            <input type="password" id="txt_pass" name="txt_pass" class="form-control" placeholder="Escriba su Contraseña" required>
                         <a style="color: #000000" data-toggle="modal" data-target="#ModalUsuario" href="#ModalUsuario">No tienes cuenta?</a>
                        </div>
                        <input type="submit" value="Ingresar" class="btn btn-primary btn-b" name="Ingresar" id="Ingresar" />
                        <!--<input type="submit" name="accion" value="Ingresar" class="btn btn-primary btn-b">-->
                    </form>
                </div>
            </div>
        </div>
        <!-- Fin form-->
        <div class="modal" id="ModalUsuario">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
       <h5 style="color: #000000;" id="Titulo" class="text-center">NUEVO REGISTRO</h5>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
     <form action="sr_login" method="post" class="form-group" enctype="multipart/form-data" name="formulario" class="form-horizontal" role="form">
                     
                                     <label style="color: #000">Nombre usuario</label>                                    <br>
                                    <input type="text" id="text_usuario" class="form-control" name="txt_usuarionuevo" required="">
                                    <br>
                                    <label style="color: #000">Nombres</label>                                    <br>
                                    <input type="text" id="text_nombre" class="form-control" name="txt_nombre" required="" onkeypress="return text(event);">
                                    <br>
                                    <label style="color: #000">Apellidos</label>                                    <br>
                                    <input type="text" id="text_apellidos" class="form-control" name="txt_apellidos" required="" onkeypress="return text(event);">
                                     <br>
                                     <label style="color: #000">Correo</label>                                    <br>
                                    <input type="email" id="text_correo" class="form-control" name="txt_correo" required="">
                                    <br>
                                    <label style="color: #000">Password</label>                                    <br>
                                    <input type="password" id="text_pass" class="form-control" name="txt_passnueva" required="">
                                    <br>
                                       <label style="color: #000">Foto De Perfil</label>  
                                     <input type="file" id="imagen" name="archivo" class="col-md-8 btn" onchange="cargarFotodeperfil(this)">
                                <br>
                                    <label style="color: #000">Codigo de validacion</label>                                    <br>
                                    <input type="text" id="text_codigo" class="form-control" name="txt_codigo" required="" maxlength="7">
                                    <br>
                              
                                     <input type="hidden" name="nombre" id="file">
                                     <input id ="Registrar" name="Registrar" value="Registrar" class="btn btn-success" type ="submit" onclick="return ValidarCodigo();">
        <button  class="btn btn-danger" data-dismiss="modal">Close</button>
                     
                        </form>
      </div>


          


    </div>
  </div>
</div>

    </body>
</html>
