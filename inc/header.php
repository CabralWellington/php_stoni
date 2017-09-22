<!DOCTYPE html>

<?php require_once LOGIN_TEMPLATE;
?>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Stoni - Sistema de Outsourcing de Impressão</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">



        <link rel="stylesheet" href="<?php echo BASEURL; ?>inc/css/bootstrap.min.css">

        <style>
            body {
                padding-top: 50px;
                padding-bottom: 20px;
            }
        </style>

        <link rel="stylesheet" href="<?php echo BASEURL; ?>inc/css/boostrap.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.css">
        <link rel="stylesheet" href="css/ionicons.min.css">

    </head>
    <body>

        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="<?php echo BASEURL; ?>index.php" class="navbar-brand">STONI</a>
                </div>
                <div id="navbar" class="navbar-collapse pull-left">
                    <ul class="nav navbar-nav">          
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                Clientes <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo BASEURL; ?>customers">Gerenciar Clientes</a></li>
                                <li><a href="<?php echo BASEURL; ?>customers/add.php">Novo Cliente</a></li>
                            </ul>
                        </li>
                        <li class="" align='right'>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                Clientes <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="<?php echo BASEURL; ?>customers">Gerenciar Clientes</a></li>
                                <li><a href="<?php echo BASEURL; ?>customers/add.php">Novo Cliente</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!--/.navbar-collapse -->
                <div id="navbar" class="navbar-collapse pull-right">
                    <ul class="nav navbar-nav">          
                        <li class="" align='right'>
                            <a href="<?php echo BASEURL; ?>inc/functionslogin.php?exit=1" class="btn btn-sm">
				<i class="fa fa-exchange"></i> Sair
			</a></li>
                    </ul>
                </div><!--/.navbar-collapse -->
            </div>
        </nav>

        <main class="container">