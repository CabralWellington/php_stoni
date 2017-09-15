<?php 
  require_once('functions.php'); 
  addIdentidade();
?>

<?php include(HEADER_TEMPLATE); ?>

<h2>Novo Identidade</h2>

<form action="add.php" method="post">
  <!-- area de campos do form -->
  
  <div class="row">
      <input type="hidden" name="table" value="equipamento"/>
    <div class="form-group col-md-3">
      <label for="name">Nome do equipamento</label>
      <input type="text" class="form-control" name="Identidade['Nome_Identidade']">
    </div>

    <div class="form-group col-md-3">
      <label for="campo2">Marca do equipamento</label>
      <input type="text" class="form-control" name="Identidade['Marca_Identidade']">
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