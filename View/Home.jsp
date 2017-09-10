<%@page import="java.math.BigDecimal"%>
<%@page import="java.math.RoundingMode"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Dao.Impressora_Dao"%>
<%@page import="Dao.Usuario_Dao"%>
<%@page import="Bean.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bean.Imprime"%>
<%@page import="java.util.List"%>
<%@page import="Dao.Imprime_Dao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Stoni | Sistema de Outsourcing de Impressão</title>
        <!-- Tell the browser to be responsive to screen width -->

        <link rel="shortcut icon" href="print.svg"   type="image/x-icon"><!-- Bootstrap 3.3.5 -->
        <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <!-- Font Awesome -->
        <link rel="stylesheet" href="../folder/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="../folder/ionicons.min.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="../plugins/jvectormap/jquery-jvectormap-1.2.2.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="hold-transition skin-blue-light sidebar-mini">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="Home.jsp" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>S</b>TN</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b><img width="55" height="50" src="logo 100x120.png" class="img-circle" alt="User Image"> Sto</b>ni</span>
                </a>

                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <!-- Navbar Right Menu -->
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Messages: style can be found in dropdown.less-->
                            <!-- Notifications: style can be found in dropdown.less -->
                            <!-- Tasks: style can be found in dropdown.less -->
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="man-25.svg" class="user-image" alt="User Image">
                                    <span class="hidden-xs">Usuário</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="man-25.svg" class="img-circle" alt="User Image">
                                        <p>

                                            Usuário
                                            <small>Member since Nov. 2012</small>
                                        </p>
                                    </li>
                                    <!-- Menu Body -->
                                    <li class="user-body">
                                        <div class="col-xs-4 text-center">
                                            <a href="#">Followers</a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#">Sales</a>
                                        </div>
                                        <div class="col-xs-4 text-center">
                                            <a href="#">Friends</a>
                                        </div>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                        </ul>
                    </div>

                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar bg-gray-light">
                <section class="sidebar bg-gray-light ">
                    <!-- Sidebar user panel -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="active treeview ">
                            <a href="#">
                                <i class="fa fa-print"></i><span>Impressora </span> 
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="CadImpressora.jsp"><i class="fa fa-edit"></i>Cadastrar</a></li>
                                <li><a href="ListImpressora.jsp"><i class="fa fa-search"></i>Pesquisar</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span>Usuário </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="CadUsuario.jsp"><i class="fa fa-edit"></i>Cadastrar</a></li>
                                <li><a href="ListUsuario.jsp"><i class="fa fa-search"></i>Listar</a></li>
                            </ul>
                        </li>              

                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-group"></i>
                                <span>Centro de custo </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="CadCentroDeCusto.jsp"><i class="fa fa-edit"></i>Cadastrar</a></li>
                                <li><a href="ListCentroDeCusto.jsp"><i class="fa fa-search"></i>Listar</a></li>
                            </ul>
                        </li>


                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-money"></i>
                                <span>Perfil de preço </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="CadPerfilDePreco.jsp"><i class="fa fa-edit"></i>Cadastrar</a></li>
                                <li><a href="ListPerfil.jsp"><i class="fa fa-search"></i>Listar</a></li>
                            </ul>
                        </li>

                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-files-o"></i> <span>Relatório</span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="#"><i class="fa fa-print"></i>Por impressora</a>

                                    <ul class="treeview-menu">
                                        <li><a href="#"><i class="fa fa-list">Detalhado</i></a>
                                        </li>
                                        <li><a href="#"><i class="fa fa-calculator"></i>Sumário</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="#"><i class="fa fa-group"></i>Por Centro de custo</a>

                                    <ul class="treeview-menu">
                                        <li><a href="#"><i class="fa fa-list">Detalhado</i></a>
                                        </li>
                                        <li><a href=""><i class="fa fa-calculator"></i>Sumário</a>
                                        </li>
                                    </ul>
                                </li>

                                <li><a href="#"><i class="fa fa-user"></i>Por usuário</a>

                                    <ul class="treeview-menu">
                                        <li><a href="RelatorioDPorUsuario.jsp"><i class="fa fa-list">Detalhado</i></a>
                                        </li>
                                        <li><a href="RelatorioSPorUsuario.jsp"><i class="fa fa-calculator"></i>Sumário</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>

                </section>
                <!-- /.sidebar -->
            </aside>


            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Stoni
                        <small>Versão 1.0</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="Home.jsp"><i class="fa fa-dashboard"></i> Home</a></li>

                    </ol>
                </section>

                <%  Usuario_Dao udao = new Usuario_Dao();
                    int aa10 = udao.Soma();
                    Impressora_Dao idao = new Impressora_Dao();
                    int aa11 = idao.Soma();
                    Imprime_Dao iidao = new Imprime_Dao();
                    int aa12 = iidao.Soma();
                %>

                <!-- Main content -->
                <section class="content">
                    <!-- Info boxes -->
                    <div class="row">
                        <div class="col-md-4 col-sm-7 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-aqua"><i class="ion ion-ios-person-outline"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Usuários</span>
                                    <span class="info-box-number"><%=aa10%></span>
                                </div><!-- /.info-box-content -->
                            </div><!-- /.info-box -->
                        </div><!-- /.col -->
                        <div class="col-md-4 col-sm-7 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-red"><i class="fa fa-print"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Impressoras</span>
                                    <span class="info-box-number"><%=aa11%></span>
                                </div><!-- /.info-box-content -->
                            </div><!-- /.info-box -->
                        </div><!-- /.col -->

                        <!-- fix for small devices only -->
                        <div class="clearfix visible-sm-block"></div>

                        <div class="col-md-4 col-sm-7 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-green"><i class="fa fa-file"></i></span>
                                <div class="info-box-content">
                                    <span class="info-box-text">Impressões Realizadas</span>
                                    <span class="info-box-number"><%=aa12%></span>
                                </div><!-- /.info-box-content -->
                            </div><!-- /.info-box -->
                        </div><!-- /.col -->

                    </div><!-- /.row -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box box-info">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Ultimas Impressões</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <div class="table-responsive">
                                        <table class="table no-margin">
                                            <thead>
                                                <tr>
                                                    <th>Usuário</th>
                                                    <th>Nome do Documento</th>
                                                    <th>Tipo de Trabalho</th>
                                                    <th>Impressora</th>
                                                    <th align="Center" >Quantidade</th>
                                                    <th align="Center" >Valor</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    BigDecimal df = null;
                                                    try {%>
                                                <% Imprime_Dao aa1 = new Imprime_Dao();
                                                    List<Imprime> aa2 = new ArrayList<Imprime>();
                                                    aa2 = aa1.UltimoRegistro();
                                                    for (Imprime aa3 : aa2) {%>
                                                <%df = new BigDecimal(aa3.getValorImprime()).setScale(2, RoundingMode.HALF_EVEN);%>
                                                <tr>
                                                    <td><%=aa3.getUsuario().getNomeUser()%>  </td>
                                                    <td><%=aa3.getNomeDoArquivoImprime()%>  </td>
                                                    <td><%=aa3.getTipo().getNomeTipo()%>  </td>
                                                    <td><%=aa3.getImpressora().getNomeImp()%>  </td>
                                                    <td align="Center" ><%=aa3.getQtdPaginasImprime()%>  </td>
                                                    <td align="Center"><%=("R$ " + df)%></td>
                                                </tr>
                                                <%}%>
                                                <% } catch (Exception e) {
                                                        e.printStackTrace();
                                                    }
                                                %>

                                            </tbody>
                                        </table>
                                    </div><!-- /.table-responsive -->
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

            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>

        </div><!-- ./wrapper -->

        <!-- jQuery 2.1.4 -->
        <script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <!-- Bootstrap 3.3.5 -->
        <script src="../bootstrap/js/bootstrap.min.js"></script>
        <!-- FastClick -->
        <script src="../plugins/fastclick/fastclick.min.js"></script>
        <!-- AdminLTE App -->
        <script src="../dist/js/app.min.js"></script>
        <!-- Sparkline -->
        <script src="../plugins/sparkline/jquery.sparkline.min.js"></script>
        <!-- jvectormap -->
        <script src="../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- SlimScroll 1.3.0 -->
        <script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- ChartJS 1.0.1 -->
        <script src="../plugins/chartjs/Chart.min.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="../dist/js/pages/dashboard2.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../dist/js/demo.js"></script>
    </body>
</html>
