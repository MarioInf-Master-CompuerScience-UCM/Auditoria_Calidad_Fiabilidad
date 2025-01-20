<?php
  session_start();
  function logout() {
    //Doble seguridad: unset + destroy
    unset($_SESSION['login']);
    unset($_SESSION['nick']);

    session_destroy();
    session_start();
  }

	echo logout();

?>