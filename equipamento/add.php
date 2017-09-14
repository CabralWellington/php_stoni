<?php 
  require_once('functions.php'); 
  addEquipamento();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Novo Equipamento</h2>

<form action="add.php" method="post">
  <!-- area de campos do form -->
  
  <div class="row">
      <input type="hidden" name="table" value="equipamento"/>
    <div class="form-group col-md-3">
      <label for="name">Nome do equipamento</label>
      <input type="text" class="form-control" name="Equipamento['Nome_Equipamento']">
    </div>

    <div class="form-group col-md-3">
      <label for="campo2">Marca do equipamento</label>
      <input type="text" class="form-control" name="Equipamento['Marca_Equipamento']">
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