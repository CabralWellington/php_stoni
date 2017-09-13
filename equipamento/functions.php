<?php

require_once('../inc/config.php');
require_once(DBAPI);

$customers = null;
$customer = null;

/**
 *  Listagem de Clientes
 */
function indexEquipamento() {
    global $Equipamentos;
    $Equipamentos = find_allEquipamento('equipamento');
}

function find_allEquipamento($table) {
    return findEquipamento($table);
}

function findEquipamento($table = null, $id = null) {
    $database = open_database();
    $found = null;
    try {
        if ($id) {
            $sql = "SELECT * FROM " . $table . " WHERE ID_Equipamento = " . $id;
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

function addEquipamento() {

    if (!empty($_POST['Equipamento'])) {

//$today = date_create('now', new DateTimeZone('America/Sao_Paulo'));

        $customer = $_POST['customer'];
//$customer['modified'] = $customer['created'] = $today->format("Y-m-d H:i:s");

        save('equipamento', $customer);
        header('location: index.php');
    }
}

function editEquipamento() {
    $idequipamento = null;
    $Nome_Equipamento = null;
    $Marca_Equipamento = null;
    $now = date_create('now', new DateTimeZone('America/Sao_Paulo'));

    if (isset($_GET['ID_Equipamento'])) {

        $idequipamento = $_GET['ID_Equipamento'];
        //header('location: index.php?tea='.$id);


        if (isset($_GET['Nome_Equipamento'])) {
            $Nome_Equipamento = $_GET['Nome_Equipamento'];
            $Marca_Equipamento = $_GET['Marca_Equipamento'];

            $sql = "update equipamento set Nome_Equipamento = '" . $Nome_Equipamento . "'"
                    . " , Marca_Equipamento = '" . $Marca_Equipamento . "'"
                    . " where id_Equipamento = " . $idequipamento;

            updateEquipamento($sql);
            header('location: index.php');
        } else {
            global $Equipamento;
            $Equipamento = findEquipamento('equipamento', $idequipamento);
        }
    } else {
        header('location: index.php?asdasd=adad');
    }
}

function editEquipamento2() {
    $idequipamento = null;
    $Nome_Equipamento = null;
    $Marca_Equipamento = null;
    $now = date_create('now', new DateTimeZone('America/Sao_Paulo'));

    if (isset($_GET['ID_Equipamento'])) {

        $idequipamento = $_GET['ID_Equipamento'];
        //header('location: index.php?tea='.$id);


        if (isset($_POST['Equipamento'])) {

            $Parametros = $_POST['Equipamento'];
            $Parametro = "update equipamento set ";
            foreach ($Parametros as $key => $value) {
                $Parametro .= trim($key, "'");
                $Parametro .= " = ";
                $Parametro .= "'$value',";
            }
            $Parametro = rtrim($Parametro,",");
            $Parametro .= "where ID_Equipamento = ".$idequipamento;
            
            updateEquipamento($Parametro);
            header('location: index.php?aa=' . $Parametro);
        } else {
            global $Equipamento;
            $Equipamento = findEquipamento('equipamento', $idequipamento);
        }
    } else {
        header('location: index.php?asdasd=adad');
    }
}

function updateEquipamento($query = null) {

    $database = open_database();

    try {
        $database->query($query);

        $_SESSION['message'] = 'Registro atualizado com sucesso.';
        $_SESSION['type'] = 'success';
    } catch (Exception $e) {

        $_SESSION['message'] = 'Nao foi possivel realizar a operacao.';
        $_SESSION['type'] = 'danger';
    }

    close_database($database);
}

function saveEquipamento($table = null, $data = null) {

    $database = open_database();

    $columns = null;
    $values = null;

    //print_r($data);

    foreach ($data as $key => $value) {
        $columns .= trim($key, "'") . ",";
        $values .= "'$value',";
    }

    // remove a ultima virgula
    $columns = rtrim($columns, ',');
    $values = rtrim($values, ',');

    $sql = "INSERT INTO " . $table . "($columns)" . " VALUES " . "($values);";
    header('location: index.php?teste=' . $sql);
    try {
        $database->query($sql);

        $_SESSION['message'] = 'Registro cadastrado com sucesso.';
        $_SESSION['type'] = 'success';
    } catch (Exception $e) {

        $_SESSION['message'] = 'Nao foi possivel realizar a operacao.';
        $_SESSION['type'] = 'danger';
    }

    close_database($database);
}
