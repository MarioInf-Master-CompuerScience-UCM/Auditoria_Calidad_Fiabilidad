<?php
  $bloque = <<<EOF
    <div class="container-fluid">
      <a title="Tienda AU AG" href="./index.php"><img style="
    max-height: 150px;
"src="./img/logo.png" class="img-responsive" alt="TechnologyMarkt"></a>

      <nav class="navbar navbar-default" role="navigation">
           <!-- El logotipo y el icono que despliega el menú se agrupan
           para mostrarlos mejor en los dispositivos móviles -->
           <div class="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse"
               data-target=".navbar-ex1-collapse">
               <span class="sr-only">Desplegar navegación</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
           </button>
           <a class="navbar-brand" href="./index.php">Tienda</a>
          </div>

           <!-- Agrupar los enlaces de navegación, los formularios y cualquier
           otro elemento que se pueda ocultar al minimizar la barra -->
           <div class="collapse navbar-collapse navbar-ex1-collapse">
               <ul class="nav navbar-nav">
                   <li class="dropdown">
                   <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                     Categorías <b class="caret"></b>
                 </a>
                 <ul class="dropdown-menu">         <tr>
                     <li><a href="#">Oro</a></li>
                     <li><a href="#">Plata</a></li>
                     <li><a href="#">Regalos</a></li>
                     <li><a href="#">Personalizados</a></li>
                 </ul>
             </li>

              </ul>
                <div class="navbar-right">
                   <ul class="nav navbar-nav">
EOF;

                  if(isset($_SESSION['login']) && $_SESSION['login'] == TRUE){
                    $bloque = $bloque."<a href=\"carro.php\" class=\"btn btn-info  glyphicon glyphicon-shopping-cart\" id=\"visualizarMiCarro\" style=\"
            font-size:  xx-large;
        \">Carro</a>";
                    $bloque = $bloque."<button type=\"button\" class=\"btn btn-danger glyphicon glyphicon-off\" id=\"cerrarSesion\" style=\"
            font-size:  xx-large;
        \">Logout</button>";
                  } else {
                    $bloque = $bloque."<button type=\"button\" class=\"btn btn-success glyphicon glyphicon-off\" id=\"iniciarSesion\" style=\"
            font-size:  xx-large;
        \">Login</button>";
                  };

                  $bloque = $bloque."</ul></div></div></nav></div></div></nav>";

$bloqueLogin = <<<EOF
<div class="modal fade" id="dialogLogin">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title">Login</h4>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Username" required="required" id="username">
        </div>
        <div class="form-group">
            <input type="password" class="form-control" placeholder="Password" required="required" id="password">
        </div>
        <div class="form-group">
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-info" data-dismiss="modal" id="registrarse">Registrarse</button>
            <button type="button" class="btn btn-success" id="iniciarsesion">Login</button>
            <p> *Para registrarse, introduzca los campos y pulse sobre registrarse </p>
        </div>

    </div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</div>
      <script type="text/javascript">
        $(document).ready(function () {
            $("#iniciarSesion").bind('click', function () {
                $('#dialogLogin').modal('show');
            });

            $("#iniciarsesion").click(function(){
                var usu = $("#username").val();
                var psw = $("#password").val();
                $.ajax({
                    url: 'php/login.php',
                    data: {usuario: usu, contrasena: psw},
                    type: "POST",
                    error: function(){
                        alert("Problemas en el envío del formulario")
                    },
                    success: function(data,status){
                        alert(data);
                        location.reload();
                    }
                })
              });

            $("#cerrarSesion").click(function(){
                $.ajax({
                    url: 'php/logout.php',
                    type: "POST",
                    error: function(){
                        alert("Problemas en el envío del formulario")
                    },
                    success: function(data,status){
                      alert("Hasta luego!");
                      document.location.href="/";
                    }
                });
              });

            $("#registrarse").click(function(){
                var usu = $("#username").val();
                var psw = $("#password").val();
                $.ajax({
                    url: 'php/registrarse.php',
                    data: {nick: usu, passw: psw},
                    type: "POST",
                    error: function(){
                        alert("Problemas en el envío del formulario")
                    },
                    success: function(data,status){
                        alert(data);
                        location.reload();
                    }
                })
              });
        });


    </script>
EOF;


echo $bloque.$bloqueLogin;
?>             