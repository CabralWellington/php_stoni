<?php 
  require_once('functions.php'); 

  if (isset($_GET['ID_Identidade'])){
      $id = $_GET['ID_Identidade'];
      removeIdentidade($id);
  } else {
    die("ERRO: ID não definido.");
  }
?>