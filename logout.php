<?php
   session_start();
   unset($_SESSION["username"]);
   unset($_SESSION["password"]);
   
   echo 'You have logged out of the session';
   header('Refresh: 2; URL = login.php');
?>