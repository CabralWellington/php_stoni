<?php
    require_once('./functions.php');
    indexEquipamento();
?>

<?php include(HEADER_TEMPLATE); ?>

<header>
	<div class="row">
		<div class="col-sm-6">
			<h2>Equipamentos</h2>
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
<?php if ($Equipamentos) : ?>
<?php foreach ($Equipamentos as $Equipamento) : ?>
	<tr>
		<td><?php echo $Equipamento['ID_Equipamento']; ?></td>
		<td><?php echo $Equipamento['Nome_Equipamento']; ?></td>
		<td><?php echo $Equipamento['Marca_Equipamento']; ?></td>
		<td class="actions text-left">
			<a href="view.php?ID_Equipamento=<?php echo $Equipamento['ID_Equipamento']; ?>" class="btn btn-sm btn-success"><i class="fa fa-eye"></i> Visualizar</a>
			<a href="edit.php?ID_Equipamento=<?php echo $Equipamento['ID_Equipamento']; ?>" class="btn btn-sm btn-warning"><i class="fa fa-pencil"></i> Editar</a>
                        <a href="del.php?ID_Equipamento=<?php echo $Equipamento['ID_Equipamento']; ?>" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#delete-modal">
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

<?php include(FOOTER_TEMPLATE); ?><?php
