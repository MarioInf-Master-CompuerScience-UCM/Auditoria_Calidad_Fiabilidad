<?php
  $servername = "localhost";
  $usernameDB = "administrador";
  $passwordDB = "administrador";
  $dbname = "auag";

  $nick = $_SESSION['nick'];
      // Create connection
  $conn = new mysqli($servername, $usernameDB, $passwordDB, $dbname);
      // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  } 

  $query = sprintf("SELECT * FROM productos as p join carrito as c WHERE nick='%s' and p.id=c.producto", $conn->real_escape_string($nick));


  $rs = $conn->query($query);

  if ($rs) {
    while($fila = $rs->fetch_assoc()) {
      $precioTotal = $fila['precio'] * $fila['cantidad'];
      $bloque = <<<EOF
        <div class="row thumbnail">
          <div class="col-md-4" id="${fila['id']}" style="height : 20vh">
            <img style="
    height: -webkit-fill-available;
" src="./img/${fila['imagen']}" alt="..."></img>
          </div>
          <div class="col-md-4" id="${fila['id']}" style="height : 20vh">
            <div class="row" style="font-size:  -webkit-xxx-large;">
              ${fila['nombre']}
            </div>
            <span class="badge" style="
                font-size: -webkit-xxx-large;
            "> ${fila['cantidad']} Unid. </span>
            <span class="badge" style="
                font-size: -webkit-xxx-large;
            "> $precioTotal  €. </span>
        </div>
        <div class="col-md-4" id="1" style="height : 20vh">
                    <button type="button" class="btn btn-primary btn-lgclass center-block" style="
            height: 15vh;
            font-size:  -webkit-xxx-large;
        ">Comprar</button>
                  </div>
                  </div>
EOF;
      echo $bloque;
    }
  }

  $rs->free();

  $conn->close();

?>