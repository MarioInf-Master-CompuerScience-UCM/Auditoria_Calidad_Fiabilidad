<?php
  $servername = "localhost";
  $usernameDB = "administrador";
  $passwordDB = "administrador";
  $dbname = "auag";


  $nick = $_POST['nick'];
  $password = $_POST['passw'];
  if ( !$nick || !preg_match("/^[a-zA-Z0-9]+$/", $nick)) {
        //$result[] = 'El nombre de usuario no es válido';
    echo 'El nombre de usuario no es válido';
    $ok = FALSE;
    return;
  }
      // Create connection
  $conn = new mysqli($servername, $usernameDB, $passwordDB, $dbname);
      // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  } 

  $sql = "INSERT INTO usuarios (nick, pass)
  VALUES ('${nick}', '${password}')";

  if ($conn->query($sql) === TRUE) {
      echo "Registrado correctamente. Ya puede hacer Login";
  } else {
      echo "Error: " . $sql . "<br>" . $conn->error;
  }

  $conn->close();
?>