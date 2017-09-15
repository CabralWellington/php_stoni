<?php
    require_once('./functions.php');
    indexIdentidade();
?>

<?php include(HEADER_TEMPLATE); ?>

<header>
	<div class="row">
		<div class="col-sm-6">
			<h2>Identidades</h2>
		</div>
		<div class="col-sm-6 text-right h2">
	    	<a class="btn btn-primary" href="add.php"><i class="fa fa-plus"></i> Novo Cliente</a>
	    	<a class="btn btn-default" href="index.php"><i class="fa fa-refresh"></i> Atualizar</a>
	    </div>
	</div>
</header>

<?php if (!empty($_SESSION['message'])) : ?>
	<div class="alert alert-<?php echo $_SESSION['type']; ?> alert-dismissible" role="alert">
		<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		<?php echo $_SESSION['message']; ?>
	</div>
	<?php clear_messages(); ?>
<?php endif; ?>

<hr>

<table class="table table-hover">
<thead>
	<tr>
		<th>ID</th>
		<th width="30%">Nome</th>
		<th>Marca</th>
		<th align="justify">Opções</th>
	</tr>
</thead>
<tbody>
<?php if ($Identidades) : ?>
<?php foreach ($Identidades as $Identidade) : ?>
	<tr>
		<td><?php echo $Identidade['ID_Identidade']; ?></td>
		<td><?php echo $Identidade['Nome_Identidade']; ?></td>
		<td><?php echo $Identidade['Marca_Identidade']; ?></td>
		<td class="actions text-left">
			<a href="view.php?ID_Identidade=<?php echo $Identidade['ID_Identidade']; ?>" class="btn btn-sm btn-success"><i class="fa fa-eye"></i> Visualizar</a>
			<a href="edit.php?ID_Identidade=<?php echo $Identidade['ID_Identidade']; ?>" class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i> Editar</a>
                        <a href="#" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#delete-modal" data-customer="<?php echo $Identidade['ID_Identidade']; ?>">
				<i class="fa fa-trash"></i> Excluir
			</a>
		</td>
	</tr>
<?php endforeach; ?>
<?php else : ?>
	<tr>
		<td colspan="6">Nenhum registro encontrado.</td>
	</tr>
<?php endif; ?>
</tbody>
</table>
<?php include('modal.php'); ?>
<?php include(FOOTER_TEMPLATE); ?><?php
