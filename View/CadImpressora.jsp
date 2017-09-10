<%-- 
    Document   : CadImpressora
    Created on : Mar 13, 2016, 1:36:31 PM
    Author     : Wellington
--%>

<%@page import="Dao.Perfil_Dao"%>
<%@page import="Bean.PerfilDePreco"%>
<%@page import="Dao.Oid_Dao"%>
<%@page import="Bean.CentroDeCusto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bean.Oid"%>
<%@include file="Cabecalho.jsp" %>
<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-6"> <!--MEDIÇÃO DA COLUNA-->
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Cadastrar Impressora</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form  name="form" action="../Cntrl_Cad_Impressora" method="Post" >
                    <div class="box-body">
                        <div class="form-group has-feedback">
                            <label for="Nome Impressora">Nome</label>
                            <input type="text" name="Nome"   class="form-control has-feedback"  placeholder="Digite o nome">
                        </div>
                        <div class="form-group has-feedback">
                            <label for="Ip">Ip</label>
                            <input type="text" name="Ip"   class="form-control has-feedback"  placeholder="Digite o endereco Ip">
                        </div>
                        <div class="form-group has-feedback">
                            <label for="Local">Local</label>
                            <input type="text" name="Local"   class="form-control has-feedback"  placeholder="Digite o local">
                        </div>
                        
                        <div class="form-group has-feedback">
                            <label for="desc">Descrição</label>
                            <input type="text" name="Descricao" class="form-control has-feedback"  placeholder="Digite a descricao">
                        </div>

                        <div class="form-group">
                            <label>Modelo</label>
                            <select name="SelectOid" class="form-control select2" style="width: 100%;">
                                <%
                                    List<Oid> lista1 = new ArrayList<Oid>();
                                    Oid_Dao d = new Oid_Dao();
                                    lista1 = d.Listar();
                                    for (Oid o : lista1) {
                                %>
                                <option value="<%=o.getIdOid()%>">
                                    <%=o.getIdOid()%>
                                </option><%
                                    }
                                %>                            
                            </select>
                        </div><!-- /.form-group -->
                        
                        <div class="form-group">
                            <label>Perfil de Preco</label>
                            <select name="SelectPerfil" class="form-control select2" style="width: 100%;">
                                <%
                                    List<PerfilDePreco> lista2 = new ArrayList<PerfilDePreco>();
                                    Perfil_Dao p = new Perfil_Dao();
                                    lista2 = p.Listar();
                                    for (PerfilDePreco per : lista2) {
                                %>
                                <option value="<%=per.getIdPerfil() %>">
                                    <%=per.getNomePerfil()%>
                                </option><%
                                    }
                                %>                            
                            </select>
                        </div><!-- /.form-group -->

                        
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