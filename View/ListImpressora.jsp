<%-- 
    Document   : ListImpressora
    Created on : Mar 15, 2016, 9:51:28 AM
    Author     : Wellington
--%>
<%-- 
    Document   : ListaModelo
    Created on : Mar 24, 2016, 9:08:52 PM
    Author     : Wellington
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.Impressora_Dao"%>
<%@page import="Bean.Impressora"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>Stoni | Sistema de Outsourcing de Impressão</title>
        <!-- Tell the browser to be responsive to screen width -->

        <link rel="shortcut icon" href="print.svg"   type="image/x-icon">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.5 -->
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../folder/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../folder/ionicons.min.css">
        <!-- DataTables -->
        <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></scrip    </head>
    <body class="hold-transition skin-blue-light sidebar-mini">
t>
        <![endif]-->
    </head>
    <%@include file="BarraLateral.jsp" %>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">

                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Lista de impressoras</h3>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Nome</th>
                                                <th>Ip</th>
                                                <th>Local</th>
                                                <th>Modelo</th>
                                                <th>Excluir / Alterar</th>
                                            </tr>
                                        </thead>
                                        <% Impressora_Dao idao = new Impressora_Dao();
                                            List<Impressora> lista = new ArrayList<Impressora>();
                                            lista = idao.Listar();

                                        %>
                                        <tbody>
                                            <%for (Impressora imp : lista) {%>
                                            <tr>
                                                <td><%=imp.getNomeImp()%></td>
                                                <td><%=imp.getIpImp()%></td>
                                                <td><%=imp.getLocalImp()%></td>
                                                <td><%=imp.getOid().getIdOid()%></td>
                                                <td>
                                                    <div class="btn-group">
                                                        <button Onclick="return ConfirmDelete('../Cntrl_Del_Impressora?txtip=<%=imp.getIpImp()%>');" class="btn btn-danger" type="submit" name="actiondelete" value="1"><i class="fa fa-remove"></i></button>
                                                        <button type="button" class="btn btn-info" Onclick="location = 'AlteraImpressora.jsp'"><i class="fa fa-edit"></i></button>
                                                    </div>

                                                </td>
                                            </tr> 
                                            <%}%>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Nome</th>
                                                <th>Ip</th>
                                                <th>Local</th>
                                                <th>Alterar</th>
                                                <th>Excluir</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 1.0
                </div>
            </footer>

            <!-- Control Sidebar -->
            -->
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div><!-- ./wrapper -->

        <!-- jQuery 2.1.4 -->
        <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <!-- Bootstrap 3.3.5 -->
        <script src="../bootstrap/js/bootstrap.min.js"></script>
        <!-- DataTables -->
        <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
        <!-- SlimScroll -->
        <script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="../plugins/fastclick/fastclick.min.js"></script>
        <!-- AdminLTE App -->
        <script src="../dist/js/app.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../dist/js/demo.js"></script>
        <!-- page script -->
        <script>
                                                            $(function() {
                                                                $("#example1").DataTable();
                                                                $('#example2').DataTable({
                                                                    "paging": true,
                                                                    "lengthChange": false,
                                                                    "searching": false,
                                                                    "ordering": true,
                                                                    "info": true,
                                                                    "autoWidth": false
                                                                });
                                                            });
        </script>
        <script>
            function ConfirmDelete(aux)
            {
                var x = confirm("Deseja realmente excluir?");
                if (x)
                    window.location.replace(aux);
                else
                    return false;
            }
        </script>    
        <script type="text/javascript">
            function redirecionar3(id) {
                window.location = "AlteraImpressora.jsp?txtid=" + id;
            }
        </script>
    </body>
</html>
