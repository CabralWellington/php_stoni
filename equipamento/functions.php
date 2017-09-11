<?php

require_once('../config.php');
require_once(DBAPI);

$customers = null;
$customer = null;

/**
 *  Listagem de Clientes
 */
function index() {
	global $customers;
	$customers = find_all('equipamento');
}

function add() {

  if (!empty($_POST['customer'])) {
    
    $today = 
      date_create('now', new DateTimeZone('America/Sao_Paulo'));

    $customer = $_POST['customer'];
    //$customer['modified'] = $customer['created'] = $today->format("Y-m-d H:i:s");
    
    save('equipamento', $customer);
    header('location: index.php');
  }
}

function edit() {

  $now = date_create('now', new DateTimeZone('America/Sao_Paulo'));

  if (isset($_GET['id'])) {

    $id = $_GET['id'];

    if (isset($_POST['customer'])) {

      $customer = $_POST['customer'];
      $customer['modified'] = $now->format("Y-m-d H:i:s");

      update('equipamento', $id, $customer);
      header('location: index.php');
    } else {

      global $customer;
      $customer = find('equipamento', $id);
    } 
  } else {
    header('location: index.php');
  }
}