<?php 
  require_once('functions.php'); 
  edit();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Atualizar Cliente</h2>

<form action="edit.php?id=<?php echo $customer['ID_Equipamento']; ?>" method="post">
  <hr />
    <div class="form-group col-md-3">
      <label for="campo2">Nome do equipamento</label>
      <input type="text" class="form-control" name="customer['Nome_Equipamento']" value="<?php echo $customer['Nome_Equipamento']; ?>">
    </div>
      
      
    <div class="form-group col-md-3">
      <label for="campo3">Marca do equipamento</label>
      <input type="text" class="form-control" name="customer['Marca_Equipamento']" value="<?php echo $customer['Marca_Equipamento']; ?>">
    </div>

  <div id="actions" class="row">
    <div class="col-md-12">
      <button type="submit" class="btn btn-primary">Salvar</button>
      <a href="index.php" class="btn btn-default">Cancelar</a>
    </div>
  </div>
</form>

<?php include(FOOTER_TEMPLATE); ?>