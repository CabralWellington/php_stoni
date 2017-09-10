<%-- 
    Document   : BarraLateral
    Created on : Jun 8, 2016, 10:56:02 AM
    Author     : Wellington
--%>

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
