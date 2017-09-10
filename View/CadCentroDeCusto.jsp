<%-- 
    Document   : CadastrarCentroDeCusto
    Created on : Mar 5, 2016, 2:36:39 PM
    Author     : Wellington
--%>

<%@include file="Cabecalho.jsp"%>
<section class="content">
    <div class="row">
    <!-- left column -->
        <div class="col-md-6">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Cadastrar Centro de Custo</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form  name="form" action="../Cntrl_Cad_Centro" method="Post" >
                    <div class="box-body">
                        <div class="form-group">
                            <label>Nome</label>
                            <input type="text" name="Nome" class="form-control"  placeholder="Digite o nome">
                        </div>
                        <div class="form-group">
                            <label>Sigla</label>
                            <input type="text" name="sigla" class="form-control" Placeholder="Digite a sigla">
                        </div>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Alterar</button>
                    </div>
                </form>
            </div><!-- /.box -->
        </div><!--/.col (left) -->
        <!-- right column -->

    </div>   <!-- /.row -->
</section>
<%@include file="Rodape.jsp" %>
