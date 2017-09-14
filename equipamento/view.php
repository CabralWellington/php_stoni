<?php
require_once('../equipamento/functions.php');
editEquipamento2();
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

        
	<dt>OID Job Name:</dt>
	<dd><?php echo $Equipamento['Job_Name_Equipamento']; ?></dd>

        
	<dt>OID Job Number:</dt>
	<dd><?php echo $Equipamento['Job_Number_Equipamento']; ?></dd>

        
	<dt>OID Job Username:</dt>
	<dd><?php echo $Equipamento['Job_Username_Equipmaneto']; ?></dd>

        
	<dt>OID Job Type:</dt>
	<dd><?php echo $Equipamento['Job_Type_Equipamento']; ?></dd>

        
	<dt>OID Job Pagecount:</dt>
	<dd><?php echo $Equipamento['Job_Pagecount_Equipamento']; ?></dd>

        
	<dt>OID Job List Count:</dt>
	<dd><?php echo $Equipamento['Job_List_Count_Equipamento']; ?></dd>

        
	<dt>OID Job date:</dt>
	<dd><?php echo $Equipamento['Job_date_equipamento']; ?></dd>

</dl>

<div id="actions" class="row">
	<div class="col-md-12">
	  <a href="edit.php?ID_Equipamento=<?php echo $Equipamento['ID_Equipamento']; ?>" class="btn btn-primary">Editar</a>
	  <a href="index.php" class="btn btn-default">Voltar</a>
	</div>
</div>

<?php include(FOOTER_TEMPLATE); ?>