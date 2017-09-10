<%-- 
    Document   : CadPerfilDePreco
    Created on : Mar 9, 2016, 9:34:29 PM
    Author     : Wellington
--%>


<%@include file="Cabecalho.jsp" %>
<section class="content">
    <div class="row">
    <!-- left column -->
        <div class="col-md-6">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Cadastrar Perfil de Preço</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form  name="form" action="../Cntrl_Cad_Perfil" method="Post" >
                    <div class="box-body">
                        <div class="form-group has-feedback">
                            <label for="NomeCentro de Custo">Nome</label>
                            <input type="text" name="Nome"   class="form-control has-feedback"  placeholder="Digite o nome">
                        </div>
                        <div class="form-group has-feedback">
                            <label for="A4_PB">A4 Preto e Branco</label>
                            <input type="text" name="A4_PB" class="form-control has-feedback"  placeholder="Digite o valor">
                            <span class="glyphicon  form-control-feedback">$</span>
                        </div>
                       
                        
                        
                        
                    </div><!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Salvar</button>
                    </div>
                </form>
            </div><!-- /.box -->
        </div><!--/.col (left) -->
        <!-- right column -->

    </div>   <!-- /.row -->
</section>
<%@include file="Rodape.jsp"%>