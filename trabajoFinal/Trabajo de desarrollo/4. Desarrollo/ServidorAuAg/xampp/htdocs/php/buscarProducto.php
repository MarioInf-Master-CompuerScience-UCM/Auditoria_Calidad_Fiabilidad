<?php
session_start();
  $producto = $_GET['producto'];
  $servername = "localhost";
  $usernameDB = "administrador";
  $passwordDB = "administrador";
  $dbname = "auag";

      // Create connection
  $conn = new mysqli($servername, $usernameDB, $passwordDB, $dbname);
      // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  } 

  $rs = $conn->query("SELECT * FROM productos WHERE nombre LIKE '%${producto}%'");

  if ($rs) {
    $i = 0;
    while($fila = $rs->fetch_assoc()) {
      $nombre = $fila['nombre'];
      $descripcion = $fila['descripcion'];
      $categoria = $fila['categoria'];
      $unidades = $fila['unidades'];
      $precio = $fila['precio'];
      $imagen = $fila['imagen'];
      
      $inicio = "";
      $fin = "";
      $bloqueCarrito = "";
      if ($i % 3 == 0){
        $inicio = "<div class=\"row\">";
      }

      $bloque = <<<EOF
          <div class="col-md-4" id="${fila['id']}">
              <div class="thumbnail">
                  <img src="./img/${fila['imagen']}" alt="..."></img>

                  <div class="caption">
                      <h3>${fila['nombre']}</h3>
                      <p>${fila['descripcion']}</p>
                      <h4>Precio ${fila['precio']}€</h4>
EOF;

  if(isset($_SESSION['login']) && $_SESSION['login'] == TRUE){

      $bloqueCarrito = <<<EOF
      <div class="form-group">
                          <label class="control-label" for="cantidad">Cantidad:</label>
                          <input type="number" class="form-control" name="cantidad" id="c${fila['id']}" style="
    width:  fit-content;" min="1" max="${fila['unidades']}" value="1">
                      </div>                           
                       <button id="buttonCompra_${fila['id']}" type="button" class="btn btn-primary btn-lgclass glyphicon glyphicon-plus center-block" style="
                        font-size:  -webkit-xxx-large;
                    ">Añadir</button>

EOF;
  }

  $bloque = $bloque.$bloqueCarrito."</div></div>";

      $bloque = $bloque."</div>";
      $i = $i + 1;
      if ($i % 3 == 0){
        $fin = "</div>";
      }

      echo $inicio.$bloque.$fin;
    }
  }

  $rs->free();
  

  $conn->close();
?>
