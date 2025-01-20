<?php
session_start();
const HTML5_EMAIL_REGEXP = '^[a-zA-Z0-9.!#$%&\'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$';
function procesaFormulario($params) {
  $result = array();
  $ok = TRUE;
  $user = isset($params['usuario']) ? $params['usuario'] : null ;
  if ( !$user || !preg_match("/^[a-zA-Z0-9]+$/", $user)) {
        //$result[] = 'El nombre de usuario no es válido';
    $result[] = 'El nombre de usuario no es válido';
    $ok = FALSE;
  }
  $pass = isset($params['contrasena']) ? $params['contrasena'] : null ;
  if ( ! $pass || !preg_match("/^[a-zA-Z0-9]+$/", $pass) ) {
    $result[] = 'La contraseña no es válida';
    $ok = FALSE;
  }
  if ( $ok ) {

    $iniciaSesion = login($user, $pass);
    if ( $iniciaSesion == TRUE ) {
        // SEGURIDAD: Forzamos que se genere una nueva cookie de sesión por si la han capturado antes de hacer login
      #session_regenerate_id(TRUE);
      $result[] = 'Login correcto';
      session_regenerate_id(TRUE);
      
      
      $_SESSION['login'] = true;
      $_SESSION['nick'] = $user;

    }else {
      $result[] = 'El usuario o la contraseña es incorrecta';
    }
    
  }

  header('Content-Type: application/json');
  return json_encode($result);
}


function login($username, $pass) {
  $servername = "localhost";
  $usernameDB = "administrador";
  $passwordDB = "administrador";
  $dbname = "auag";

  $ok = FALSE;

      // Create connection
  $conn = new mysqli($servername, $usernameDB, $passwordDB, $dbname);
      // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  } 

  $query = sprintf("SELECT * FROM usuarios WHERE nick='%s'", $conn->real_escape_string($username));
  $rs = $conn->query($query);
  if ($rs && $rs->num_rows == 1) {
    $fila = $rs->fetch_assoc();

    if ($fila['pass'] == $pass){
      return TRUE;
    }
  }

  $conn->close();

  return FALSE;
}

echo procesaFormulario($_POST);
?>