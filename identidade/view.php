<?php
require_once('../identidade/functions.php');
editIdentidade2();
?>

<?php include(HEADER_TEMPLATE); ?>


<h2>Nome do identidade: <?php echo $Identidade['Nome_Identidade']; ?></h2>
<hr>

<?php if (!empty($_SESSION['message'])) : ?>
	<div class="alert alert-<?php echo $_SESSION['type']; ?>"><?php echo $_SESSION['message']; ?></div>
<?php endif; ?>

<dl class="dl-horizontal">
        <dt>Nome:</dt>
        <dd><?php echo $Identidade['Nome_Identidade']; ?></dd>

	<dt>Marca:</dt>
	<dd><?php echo $Identidade['Marca_Identidade']; ?></dd>

        
	<dt>OID Job Name:</dt>
	<dd><?php echo $Identidade['Job_Name_Identidade']; ?></dd>

        
	<dt>OID Job Number:</dt>
	<dd><?php echo $Identidade['Job_Number_Identidade']; ?></dd>

        
	<dt>OID Job Username:</dt>
	<dd><?php echo $Identidade['Job_Username_Equipmaneto']; ?></dd>

        
	<dt>OID Job Type:</dt>
	<dd><?php echo $Identidade['Job_Type_Identidade']; ?></dd>

        
	<dt>OID Job Pagecount:</dt>
	<dd><?php echo $Identidade['Job_Pagecount_Identidade']; ?></dd>

        
	<dt>OID Job List Count:</dt>
	<dd><?php echo $Identidade['Job_List_Count_Identidade']; ?></dd>

        
	<dt>OID Job date:</dt>
	<dd><?php echo $Identidade['Job_date_identidade']; ?></dd>

</dl>

<div id="actions" class="row">
	<div class="col-md-12">
	  <a href="edit.php?ID_Identidade=<?php echo $Identidade['ID_Identidade']; ?>" class="btn btn-primary">Editar</a>
	  <a href="index.php" class="btn btn-default">Voltar</a>
	</div>
</div>

<?php include(FOOTER_TEMPLATE); ?>