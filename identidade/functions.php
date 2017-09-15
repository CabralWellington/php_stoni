<?php

require_once('../inc/config.php');
require_once(DBAPI);

$customers = null;
$customer = null;

/**
 *  Listagem de Clientes
 */
function indexIdentidade() {
    global $Identidades;
    $Identidades = find_allIdentidade('equipamento');
}

function find_allIdentidade($table) {
    return findIdentidade($table);
}

function findIdentidade($table = null, $id = null) {
    $database = open_database();
    $found = null;
    try {
        if ($id) {
            $sql = "SELECT * FROM " . $table . " WHERE ID_".$table." = " . $id;
            $result = $database->query($sql);

            if ($result->num_rows > 0) {
                $found = $result->fetch_assoc();
            }
        } else {

            $sql = "SELECT * FROM " . $table;
            $result = $database->query($sql);

            if ($result->num_rows > 0) {
                $found = $result->fetch_all(MYSQLI_ASSOC);
            }
        }
    } catch (Exception $e) {
        $_SESSION['message'] = $e->GetMessage();
        $_SESSION['type'] = 'danger';
    }

    close_database($database);
    return $found;
}

function addIdentidade(){
    if (!empty($_POST['Identidade'])) {
        $table = $_POST["table"];
        $Identidades = $_POST['Identidade'];
        save($table, $Identidades);
        header('location: index.php');
    }
}

function editIdentidade() {
    $idequipamento = null;
    $Nome_Identidade = null;
    $Marca_Identidade = null;
    $now = date_create('now', new DateTimeZone('America/Sao_Paulo'));

    if (isset($_GET['ID_Identidade'])) {

        $idequipamento = $_GET['ID_Identidade'];
        //header('location: index.php?tea='.$id);


        if (isset($_GET['Nome_Identidade'])) {
            $Nome_Identidade = $_GET['Nome_Identidade'];
            $Marca_Identidade = $_GET['Marca_Identidade'];

            $sql = "update equipamento set Nome_Identidade = '" . $Nome_Identidade . "'"
                    . " , Marca_Identidade = '" . $Marca_Identidade . "'"
                    . " where id_Identidade = " . $idequipamento;

            updateIdentidade($sql);
            header('location: index.php');
        } else {
            global $Identidade;
            $Identidade = findIdentidade('equipamento', $idequipamento);
        }
    } else {
        header('location: index.php?asdasd=adad');
    }
}

function editIdentidade2() {
    $idequipamento = null;
    $now = date_create('now', new DateTimeZone('America/Sao_Paulo'));
    
    if (isset($_GET['ID_Identidade'])) {

        $idequipamento = $_GET['ID_Identidade'];
        //header('location: index.php?tea='.$id);

        if (isset($_POST['Identidade'])) {

            $Parametros = $_POST['Identidade'];
            $Parametro = "update equipamento set ";
            foreach ($Parametros as $key => $value) {
                $Parametro .= trim($key, "'");
                $Parametro .= " = ";
                $Parametro .= "'$value',";
            }
            $Parametro = rtrim($Parametro,",");
            $Parametro .= "where ID_Identidade = ".$idequipamento;
            
            updateORdelete($Parametro);
            header('location: index.php?aa=' . $Parametro);
        } else {
            
            global $Identidade;
            $Identidade = findIdentidade('equipamento', $idequipamento);
        }
    } else {
        header('location: index.php?asdasd=adad');
    }
}

function deleteIdentidade($id = null) {

  global $Equipament;
  $Identidade = remove('Identidade', $id);

  header('location: index.php');
}

function removeIdentidade($id = null ) {

    if ($id) {
      $sql = "DELETE FROM equipamento WHERE ID_Identidade = " .$id;
      updateORdelete($sql);
      header('location: index.php?aa='.$sql);
}
}
