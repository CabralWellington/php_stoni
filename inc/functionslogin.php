<?php

require_once('config.php');
require_once(DBAPI);

loginOrLogout();

function loginOrLogout() {
    session_start();
    if (!isset($_SESSION['id'])) {
        header('location:' . LOGIN_SITE);
    }
    
    if ((isset($_POST['login'])) and ( isset($_POST['password']))) {
        $login = $_POST['login'];
        $password = $_POST['password'];
        login($login, $password);
    }
    
    if (isset($_GET['exit'])) {
        if ($_GET['exit'] == 1) {
            logut();
        }
    }
}

function login($login = null, $password = null) {
    if ($login != "" || $password != "") {
        try {
        $sql = "select * from identidade where Login_Identidade ='".$login."' and Password_Identidade =".$password;
        $retorno = findLogin($sql);
        $_SESSION['id'] = $retorno['ID_Identidade'];
        $_SESSION['nivel'] = $retorno['nivel_Identidade'];
        header('location: '.SITE);
        } catch (Exception $exc) {
        }
    } else {
        header('location: '.LOGIN_SITE);
    }
}

function logut(){
        session_destroy();
        header('location: '.LOGIN_SITE);
    
}
