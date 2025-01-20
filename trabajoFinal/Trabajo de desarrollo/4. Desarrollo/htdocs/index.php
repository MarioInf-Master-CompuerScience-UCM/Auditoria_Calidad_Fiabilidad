<?php
  session_start();
?>   
    <!DOCTYPE html>
    <html lang="es">
    <head>
    	<title>Tienda Au Ag</title>

    	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    	<meta name="author" content="Iván Aguilera Calle y Daniel García Moreno" /> 
    	<meta name="keywords" content="Tienda AUAG" />
    	<meta name="description" content="Web AUAG" />
    	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    	<link rel="stylesheet" href="./bootstrap-3.3.6-dist/css/bootstrap.css">

    	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      <script src="./bootstrap-3.3.6-dist/js/bootstrap.js"></script>

       <!--SACADO DE W3SCHOOLS-->
       <!-- COMO HACER QUE TODOS LOS CUADROS OCUPEN LO MISMO-->
       <style>
          .carousel-inner > .item > img,
          .carousel-inner > .item > a > img {
              width: auto;
              max-height: 500px;
              height: 200px;
              margin: auto;
          }
      </style>

      <script type="text/javascript">
        $(document).ready(function () {    
          $('[id*="buttonCompra_"]').click(function onClick() {
              var id = this.id.split("_")[1];
              var c = $("#c" + id).val();

              $.ajax({
                  url: 'php/addToCarro.php',
                  data: {producto: id, cantidad: c},
                  type: "POST",
                  error: function(){
                      alert("Problemas en el envío del formulario")
                  },
                  success: function(data,status){
                    alert("Has añadido al carrito el producto!\n");
                    location.reload();
                  }
              });              
            });

          $('#buscar').click(function onClick() {
              var texto = $('#buscarText').val();

              $.ajax({
                  url: 'php/buscarProducto.php',
                  data: {producto: texto},
                  type: "GET",
                  error: function(){
                      alert("Problemas en el envío del formulario");
                  },
                  success: function(data,status){
                    $('#visualizadorProductos').empty();
                    $('#visualizadorProductos').append(data);
                    
                    $('[id*="buttonCompra_"]').click(function onClick() {
                        var id = this.id.split("_")[1];
                        var c = $("#c" + id).val();

                        $.ajax({
                            url: 'php/addToCarro.php',
                            data: {producto: id, cantidad: c},
                            type: "POST",
                            error: function(){
                                alert("Problemas en el envío del formulario")
                            },
                            success: function(data,status){
                              alert("Has añadido al carrito el producto!\n");
                              location.reload();
                            }
                        });              
                      });
                  }
              });              
            });
        });


    </script>

</head>

<body>
    <?php include 'includes/header.php' ?>
<ol class="breadcrumb">
 <li class="activein">Inicio</li>
</ol>

<div class="jumbotron">
    <h1 align="center">Novedades</h1>
    <div class="container">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <a href="#"><img src="./img/arras.jpg"></a>
            </div>

            <div class="item">
                <a href="#"><img src="./img/concha-con-cruz.jpg"></a>
            </div>

            <div class="item">
                <a href="#"><img src="./img/cubiertos-de-cadete.jpg"></a>
            </div>

            <div class="item">
                <a href="#"><img src="./img/lingotes.jpg"></a>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
</div>

<div class="row">
    <div class="col-md-2">
      <div class="input-group">
        <input type="text" class="form-control" id="buscarText">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button" id="buscar">Buscar</button>
        </span>
      </div>
        <table class="table">
            <tr>
             <th><h3>Categorías</h3></th>
         </tr>
         <tr>
             <td><a href="#">Oro</a></td>
         </tr>

         <tr>
             <td><a href="#">Plata</a></td>
         </tr>
         <tr>
             <td><a href="#">Regalos</a></td>
         </tr>
         <tr>
             <td><a href="#">Personalizados</a></td>
         </tr>
     </table>
 </div>

 <div class="col-md-10" align="center" id="visualizadorProductos">
    <?php include 'php/visualizaProductos.php' ?>
</div>
</div>
</div>
</body>
</html>