<%-- 
    Document   : AlteraCentroDeCusto
    Created on : Mar 15, 2016, 10:29:23 AM
    Author     : Wellington
--%>

<%@page import="Dao.CentroDeCusto_Dao"%>
<%@page import="Bean.CentroDeCusto"%>
<%@include file="Cabecalho.jsp"%>
<section class="content">
    <div class="row">
    <!-- left column -->
        <div class="col-md-6">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <% CentroDeCusto c = new CentroDeCusto();
                       CentroDeCusto_Dao cdao = new CentroDeCusto_Dao();
                       c = cdao.BuscarPorId(Integer.parseInt(request.getParameter("txtid"))); %>
                    <h3 class="box-title">Alterar Centro de Custo "<%=c.getNomeCentroDeCusto()%>" </h3>
                </div><!-- /.box-header -->
                <form  name="form" action="../Cntrl_Alt_CentroDeCusto" method="Post" >
                    <input type="hidden" name="id" value="<%=c.getIdCentroDeCusto()%>">
                    <div class="box-body">
                        <div class="form-group">
                            <label>Nome</label>
                            <input type="text" name="Nome" class="form-control"   placeholder="Digite o nome">
                        </div>
                        <div class="form-group">
                            <label>Sigla</label>
                            <input type="text" name="sigla" class="form-control" maxlength="3"  placeholder="Digite a Sigla">
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
