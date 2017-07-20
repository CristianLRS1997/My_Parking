<%-- 
    Document   : AdminTrabajador
    Created on : 27/06/2017, 11:39:32 AM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="CoreUI - Open Source Bootstrap Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,Angular 2,Angular4,Angular 4,jQuery,CSS,HTML,RWD,Dashboard,React,React.js,Vue,Vue.js">
    <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
    <link rel="shortcut icon" href="img/favicon.png">

 

 

    <title>CoreUI - Open Source Bootstrap Admin Template</title>

    <!-- Icons -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/simple-line-icons.css" rel="stylesheet">

    <!-- Main styles for this application -->
    <link href="css/style.css" rel="stylesheet">
        
    </head>
    <body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
           <script type="text/javascript">
               function cargarTrabajador(){
                
                $.ajax({
                    
                    method:"POST",
                    url:"Trabajador/getJson",
                    data:{name:"jjed", location:"fg"},
                    dataType: 'json'
                    
                }).done(function (listaTrabajador){
               $("#tableTrabajdor").find("tbody").html("")
                    
                $.each(listaTrabajador, function(key, value){
                    
                   $("#tableTrabajador").find("tbody")
                           .append(
                           "<tr>"+
                           "<td>"+value.nombres+"</td>"+
                           "<td>"+value.apellidos+"</td>"+
                           "<td>"+value.tdocumento+"</td>"+
                           "<td>"+value.documento+"</td>"+
                           "<td>"+value.contrasena+"</td>"+
                           "<td>"+value.correo+"</td>"+
                          "<td>"+value.estado+"</td>"+
                           "<td>"+value.parqueadero+"</td>"+
                          "</tr>"                           
                
                )
                        
                            });
                            
                            $("tableTrabajador").find("tbody").show("slow")
                });
                
                
            }
        </script>
        <header class="app-header navbar">
        <button class="navbar-toggler mobile-sidebar-toggler d-lg-none" type="button">☰</button>
        <a class="navbar-brand" href="#"></a>
        <ul class="nav navbar-nav d-md-down-none">
            <li class="nav-item">
                <a class="nav-link navbar-toggler sidebar-toggler" href="#">☰</a>
            </li>

            <li class="nav-item px-3">
                <a class="nav-link" href="#">Dashboard</a>
            </li>
            <li class="nav-item px-3">
                <a class="nav-link" href="#">Users</a>
            </li>
            <li class="nav-item px-3">
                <a class="nav-link" href="#">Settings</a>
            </li>
        </ul>
        <ul class="nav navbar-nav ml-auto">
            <li class="nav-item d-md-down-none">
                <a class="nav-link" href="#"><i class="icon-bell"></i><span class="badge badge-pill badge-danger">5</span></a>
            </li>
            <li class="nav-item d-md-down-none">
                <a class="nav-link" href="#"><i class="icon-list"></i></a>
            </li>
            <li class="nav-item d-md-down-none">
                <a class="nav-link" href="#"><i class="icon-location-pin"></i></a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <img src="img/avatars/6.jpg" class="img-avatar" alt="admin@bootstrapmaster.com">
                    <span class="d-md-down-none">admin</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">

                    <div class="dropdown-header text-center">
                        <strong>Account</strong>
                    </div>

                    <a class="dropdown-item" href="#"><i class="fa fa-bell-o"></i> Updates<span class="badge badge-info">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-envelope-o"></i> Messages<span class="badge badge-success">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-tasks"></i> Tasks<span class="badge badge-danger">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-comments"></i> Comments<span class="badge badge-warning">42</span></a>

                    <div class="dropdown-header text-center">
                        <strong>Settings</strong>
                    </div>

                    <a class="dropdown-item" href="#"><i class="fa fa-user"></i> Profile</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-wrench"></i> Settings</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-usd"></i> Payments<span class="badge badge-default">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-file"></i> Projects<span class="badge badge-primary">42</span></a>
                    <div class="divider"></div>
                    <a class="dropdown-item" href="#"><i class="fa fa-shield"></i> Lock Account</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-lock"></i> Logout</a>
                </div>
            </li>
            <li class="nav-item d-md-down-none">
                <a class="nav-link navbar-toggler aside-menu-toggler" href="#">☰</a>
            </li>

        </ul>
    </header>

    <div class="app-body">
        <div class="sidebar">
            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html"><i class="icon-speedometer"></i> Dashboard <span class="badge badge-info">NEW</span></a>
                    </li>

                    <li class="nav-title">
                        UI Elements
                    
                               <li class="nav-item">
                                <a class="nav-link" href="RegCliente.html"><i class="icon-user-follow"></i> Registrar Cliente</a>
                            </li>
                             <li class="nav-item">
                                 <a class="nav-link" href="RegTrabajador.jsp"><i class="icon-user-follow"></i> Registrar Trabajador</a>
                            </li>
                            <li class="nav-item">
                               <a class="nav-link" href="AdminTrabajador.jsp"><i class="icon-list"></i>AdministrarTrabajador</a>
                            </li>
                             <li class="nav-item">
                                 <a class="nav-link" href="RegMensualidad.jsp"><i class="icon-calculator"></i>Registrar Mensualidad</a>
                            </li> <li class="nav-item">
                                <a class="nav-link" href="AdminMensualidad.jsp"><i class="icon-list"></i>Administrar      Mensualidad</a>
                            </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="icons-font-awesome.html"><i class="icon-star"></i> Icons</a>
                  
                    </li>
                    <li class="nav-item">
                                <a class="nav-link" href="icons-simple-line-icons.html"><i class="icon-star"></i> Simple Line Icons</a>
                            </li>
                    <li class="nav-item">
                                <a class="nav-link" href="icons-font-awesome.html"><i class="icon-star"></i> Font Awesome</a>
                            </li>
                    
                    
                   
                    <li class="divider"></li>
                    <li class="nav-title">
                        Extras
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-star"></i> Pages</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="pages-login.html" target="_top"><i class="icon-star"></i> Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages-register.html" target="_top"><i class="icon-star"></i> Register</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages-404.html" target="_top"><i class="icon-star"></i> Error 404</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="pages-500.html" target="_top"><i class="icon-star"></i> Error 500</a>
                            </li>
                        </ul>
                    </li>

                </ul>
            </nav>
        </div>

        <!-- Main content -->
        <main class="main">

            <!-- Breadcrumb -->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">Home</li>
                <li class="breadcrumb-item"><a href="#">Admin</a>
                </li>
                <li class="breadcrumb-item active">Dashboard</li>

                <!-- Breadcrumb Menu-->
                <li class="breadcrumb-menu d-md-down-none">
                    <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                        <a class="btn btn-secondary" href="#"><i class="icon-speech"></i></a>
                        <a class="btn btn-secondary" href="./"><i class="icon-graph"></i> &nbsp;Dashboard</a>
                        <a class="btn btn-secondary" href="#"><i class="icon-settings"></i> &nbsp;Settings</a>
                    </div>
                </li>
            </ol>



                                     
         
            
        </script>
        
              <div class="col-sm-12">

                            <div class="card">
                                <div class="card-header">
                                    <form class="form__reg" >
                                        
                                   <strong>Lista de Trabajadores  </strong>
                                   
                                          
                                    <div class="card-block">
                                        
                                       <table id="tableTrabajador">
                                                <thead>
                                                <tr>Nombres</tr>
                                                <tr>Apellidos </tr>
                                                <tr>Tipo Documento </tr>
                                                <tr>Documento </tr>
                                                <tr>Contrasena </tr>
                                                <tr>Correo </tr>
                                                <tr>Estado </tr>
                                                <tr>Parqueadero </tr>

                                                </thead> 
                                <tbody><td colspan="3">sin Trabajadores por mostrar </td></tbody>
                                        
                            </table>
                                <button onclick="cargarTrabajador()">Actualizar</button> 
      
                                        
                                       
                                    
                         </form>
                                    
                                    
                                </div>
                                
                        <!--/.col-->

                    </div>



    

    <!-- Bootstrap and necessary plugins -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <script src="bower_components/tether/dist/js/tether.min.js"></script>
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="bower_components/pace/pace.min.js"></script>


    <!-- Plugins and scripts required by all views -->
    <script src="bower_components/chart.js/dist/Chart.min.js"></script>


    <!-- GenesisUI main scripts -->

    <script src="js/app.js"></script>





    <!-- Plugins and scripts required by this views -->

    <!-- Custom scripts required by this view -->
    <script src="js/views/main.js"></script>


        
    </body>
</html>
