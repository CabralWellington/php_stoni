<%-- 
    Document   : CadUsuario
    Created on : Mar 12, 2016, 1:41:52 PM
    Author     : Wellington
--%>

<%@page import="Dao.CentroDeCusto_Dao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bean.CentroDeCusto"%>
<%@include file="Cabecalho.jsp" %>
<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-6">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Cadastro de usuário</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form  name="form" action="../Cntrl_Cad_Usuario" method="Post" >
                    <div class="box-body">
                        <div class="form-group has-feedback">
                            <label for="NomeCentro de Custo">Nome</label>
                            <input type="text" name="Nome"   class="form-control has-feedback"  placeholder="Digite o nome">
                        </div>
                        <div class="form-group">
                            <label>Centro de custo</label>
                            <select name="SelectCentro" class="form-control select2" style="width: 100%;">
                                <%
                                    List<CentroDeCusto> lista1 = new ArrayList<CentroDeCusto>();
                                    CentroDeCusto_Dao d = new CentroDeCusto_Dao();
                                    lista1 = d.Listar();
                                    for (CentroDeCusto cent : lista1) {
                                %>
                                <option value="<%=cent.getIdCentroDeCusto()%>">
                                    <%=cent.getNomeCentroDeCusto()%>
                                </option><%
                                    }

                                %>                            
                            </select>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <label>Nível de acesso</label>
                            <select name="SelectNivel" class="form-control select2" style="width: 100%;">
                                <option selected="selected" value="3">-None</option>
                                <option value="2">Usuário</option>
                                <option value="1">Administrador</option>
                            </select>
                        </div><!-- /.form-group -->

                        <div class="form-group has-feedback">
                            <label for="Senha">Senha</label>
                            <input type="password" name="Senha" class="form-control has-feedback"  placeholder="Digite a senha">
                            <span class="glyphicon glyphicon-lock  form-control-feedback"></span>
                        </div>
                    </div><!-- /.box-body -->

                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form>
            </div><!-- /.box -->
        </div><!--/.col (left) -->
        <!-- right column -->

    </div>   <!-- /.row -->
</section>
<%@include file="Rodape.jsp"%>