<?php
require_once('../equipamento/functions.php');
editEquipamento3();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Atualizar Cliente</h2>
<h2>Nome do Equipamento <?php echo $Equipamento['Nome_Equipamento']; ?></h2>
<hr>

<?php if (!empty($_SESSION['message'])) : ?>
	<div class="alert alert-<?php echo $_SESSION['type']; ?>"><?php echo $_SESSION['message']; ?></div>
<?php endif; ?>

<dl class="dl-horizontal">
    <dt>Nome:</dt>
	<dd><?php echo $Equipamento['Nome_Equipamento']; ?></dd>

	<dt>Marca:</dt>
	<dd><?php echo $Equipamento['Marca_Equipamento']; ?></dd>

        
	<dt>OID Job_Name:</dt>
	<dd><?php echo $Equipamento['Job_Name_Equipamento']; ?></dd>

        
	<dt>OID Job_Number:</dt>
	<dd><?php echo $Equipamento['Job_Number_Equipamento']; ?></dd>

        
	<dt>Marca do equipamento:</dt>
	<dd><?php echo $Equipamento['Job_Username_Equipmaneto']; ?></dd>

        
	<dt>Marca do equipamento:</dt>
	<dd><?php echo $Equipamento['Marca_Equipamento']; ?></dd>

        
	<dt>Marca do equipamento:</dt>
	<dd><?php echo $Equipamento['Marca_Equipamento']; ?></dd>

</dl>

<div id="actions" class="row">
	<div class="col-md-12">
	  <a href="edit.php?id=<?php echo $Equipamento['ID_Equipamento']; ?>" class="btn btn-primary">Editar</a>
	  <a href="index.php" class="btn btn-default">Voltar</a>
	</div>
</div>

<?php include(FOOTER_TEMPLATE); ?>