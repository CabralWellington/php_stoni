<?php 
  require_once('functions.php'); 

  if (isset($_GET['ID_Equipamento'])){
      $id = $_GET['ID_Equipamento'];
      removeEquipamento($id);
  } else {
    die("ERRO: ID não definido.");
  }
?>