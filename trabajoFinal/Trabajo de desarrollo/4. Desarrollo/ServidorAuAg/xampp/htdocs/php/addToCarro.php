<?php
session_start();
  $producto = $_POST['producto'];
  $cantidad = $_POST['cantidad'];

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

  $sql = "INSERT INTO carrito (nick, producto, cantidad)
  VALUES ('${nick}', '${producto}', '${cantidad}')";

  if ($conn->query($sql) === TRUE) {
      echo "New record created successfully";
  } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
  }

  $conn->close();
?>