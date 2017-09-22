<?php require_once 'inc/config.php'; ?>
<?php
require_once DBAPI;
?>
<?php include(HEADER_TEMPLATE); 

    if (isset($_SESSION['id'])) {
        if($_SESSION['nivel'] !=1 ){
            header('location:' . USER_SITE);
        }
    }
?>
<?php $db = open_database(); ?>


<h4>Stoni - Sistema de Outsourcing de Impressão</h4>
<hr />


<?php if ($db) : ?>

    <div class="row">
        <div class="col-xs-6 col-sm-3 col-md-2">
            <a href="view/equipamento/" class="btn btn-default">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <i class="fa fa-file-code-o fa-5x"></i>
                    </div>
                    <div class="col-xs-12 text-center">
                        <p>OID suportado</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-xs-6 col-sm-3 col-md-2">
            <a href="view/identidade/" class="btn btn-default">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <i class="fa fa-user-plus fa-5x"></i>
                    </div>
                    <div class="col-xs-12 text-center">
                        <p>Identidade</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-xs-6 col-sm-3 col-md-2">
            <a href="view/equipamento/" class="btn btn-default">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <i class="fa fa-print fa-5x"></i>
                    </div>
                    <div class="col-xs-12 text-center">
                        <p>Impressora</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-xs-6 col-sm-3 col-md-2">
            <a href="view/equipamento/" class="btn btn-default">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <i class="fa fa-file-pdf-o fa-5x"></i>
                    </div>
                    <div class="col-xs-12 text-center">
                        <p>Relatórios</p>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-xs-6 col-sm-3 col-md-2">
            <a href="view/equipamento/" class="btn btn-default">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <i class="fa fa-money fa-5x"></i>
                    </div>
                    <div class="col-xs-12 text-center">
                        <p>Perfil de preço</p>
                    </div>
                </div>
            </a>
        </div>

        <div class="col-xs-6 col-sm-3 col-md-2">
            <a href="view/equipamento/" class="btn btn-default">
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <i class="fa fa-bank fa-5x"></i>
                    </div>
                    <div class="col-xs-12 text-center">
                        <p>Perfil de preço</p>
                    </div>
                </div>
            </a>
        </div>
    </div>

<?php else : ?>
    <div class="alert alert-danger" role="alert">
        <p><strong>ERRO:</strong> Não foi possível Conectar ao Banco de Dados!</p>
    </div>

<?php endif; ?>


<?php include(FOOTER_TEMPLATE); ?>