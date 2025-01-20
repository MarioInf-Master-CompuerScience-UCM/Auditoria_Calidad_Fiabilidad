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
</head>

<body>
    <?php include 'includes/header.php' ?>

<ol class="breadcrumb">
 <li class="activein">Carrito</li>
</ol>

<div class="row">
    <div class="col-md-2">
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

 <div class="col-md-10" align="center">
  <?php include "php/visualizaCarrito.php" ?>
</div>
</div>
</div>
</body>
</html>