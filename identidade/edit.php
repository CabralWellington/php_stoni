<?php
require_once('functions.php');
editIdentidade2();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Atualizar Identidade</h2>
<?php if (!empty($_SESSION['message'])) : ?>
	<div class="alert alert-<?php echo $_SESSION['type']; ?> alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		<?php echo $_SESSION['message']; ?>
	</div>
	<?php clear_messages(); ?>
<?php endif; ?>

<form action="edit.php?ID_Identidade=<?php echo $Identidade['ID_Identidade']; ?>" method="POST">
    <div class="row">
        <div class="form-group col-md-3">
            <label for="name">Nome / Razão Social</label>
            <input type="text" class="form-control" name="Identidade['Nome_Identidade']" value="<?php echo $Identidade['Nome_Identidade']; ?>">
        </div>

        <div class="form-group col-md-3">
            <label for="name2">Nome / Razão Social</label>
            <input type="text" class="form-control" name="Identidade['Marca_Identidade']" value="<?php echo $Identidade['Marca_Identidade']; ?>">
        </div>


        <div id="actions" class="row">
            <div class="col-md-12">
                <button type="submit" class="btn btn-primary">Salvar</button>
                <a href="index.php" class="btn btn-default">Cancelar</a>
            </div>
        </div>

    </div>
</form>
<?php include(FOOTER_TEMPLATE); ?>