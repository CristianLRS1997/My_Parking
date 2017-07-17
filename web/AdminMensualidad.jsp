<%-- 
    Document   : AdminMensualidad
    Created on : 10/07/2017, 05:11:30 PM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
     response.setHeader("Cache-Control", "no-cache");
     response.setHeader("Cache-Control", "no-store");
     response.setDateHeader("Expires", 0);
     response.setHeader("Pragma", "no-cache");
     try {
     
     if (session.getAttribute("usersession")==null) {
         
         response.sendRedirect("login.jsp");
             
         }
     
     }catch (Exception ex){
     response.sendRedirect("login.jsp");
     
     }
     



%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Matrix Admin</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/uniform.css" />
<link rel="stylesheet" href="css/select2.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">Matrix Admin</a></h1>
</div>
<!--close-Header-part--> 

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
    <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
          <li><a href="PerfilTrabajador.jsp"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
        <li><a href="ControllerLogout"><i class="icon-key"></i> Log Out</a></li>
      </ul>
    </li>
    <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
        <li class="divider"></li>
        <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
        <li class="divider"></li>
        <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
        <li class="divider"></li>
        <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
      </ul>
    </li>
    <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
    <li class=""><a title="" href="ControllerLogout"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
</div>

<!--start-top-serch-->
<div id="search">
  <input type="text" placeholder="Search here..."/>
  <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch--> 

<!--sidebar-menu-->

<div id="sidebar"> <a href="#" class="visible-phone"><i class="icon icon-th"></i>Tables</a>
  <ul>
      <li><a href="index.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    
   
    
   <li class="submenu"> <a href="#"><i class="icon icon-user"></i> <span>Trabajador</span> <span class="label label-important"></span></a>
      <ul>
       
        
        <li><a href="RegTrabajador.jsp">Registro Trabajador</a></li>
        <li><a href="AdminTrabajador.jsp">Administrar trabajador</a></li>
        
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-calendar"></i> <span>Mensualidad</span> <span class="label label-important"></span></a>
      <ul>
       
         <li><a href="RegMensualidad.jsp">Registro Mensualidad</a></li>
        <li><a href="AdminMensualidad.jsp">Administrar Mensualidad</a></li>
        
      </ul>
    </li>
    <li class="submenu"> <a href="#"><i class="icon icon-info-sign"></i> <span>Error</span> <span class="label label-important"></span></a>
      <ul>
        <li><a href="error403.html">Error 403</a></li>
        <li><a href="error404.html">Error 404</a></li>
        <li><a href="error405.html">Error 405</a></li>
        <li><a href="error500.html">Error 500</a></li>
      </ul>
    </li>
    <li class="content"> <span>Monthly Bandwidth Transfer</span>
      <div class="progress progress-mini progress-danger active progress-striped">
        <div style="width: 77%;" class="bar"></div>
      </div>
      <span class="percent">77%</span>
      <div class="stat">21419.94 / 14000 MB</div>
    </li>
    <li class="content"> <span>Disk Space Usage</span>
      <div class="progress progress-mini active progress-striped">
        <div style="width: 87%;" class="bar"></div>
      </div>
      <span class="percent">87%</span>
      <div class="stat">604.44 / 4000 MB</div>
    </li>
  </ul>
</div>

<script type="text/javascript">
    
    
    function cargarMensualidad(){
        
        $.ajax({
            
            method:"POST",
            url:"Mensualidad/listar",
            data:{name:"jjed", location:"gg"},
            dataTyoe:'json'
            
            
        }).done(function (listaTrabajador){
            
            $("#tableMensualidad").find("tbody").html("")
            $.each(listaTrabajador, function(key, value){
                
                $("#tableMensualidad").find("tbody").append(
                        "<tr>"+
                           "<td>"+value.fe+"</td>"+
                           "<td>"+value.fs+"</td>"+
                           "<td>"+value.cl+"</td>"+
                           "<td>"+value.pu+"</td>"+
                          "<td>"+value.es+"</td>"+
                          "</tr>"
                
                )
                
            });
         $("tableMensualidad").find("tbody").show("slow")
        });
    }
    

</script>





<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Trabajdor</a> </div>
    <h1>Administrar Trabajadores</h1>
  </div>
  <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
            
          </div>
            <button class="btn btn-primary" onclick="cargarMensualidad()">Refrescar</button> 
          <div class="widget-content nopadding" >
             
            <table class="table table-bordered data-table" id="tableMensualidad" >
              <thead>
                <tr>
                  
                  <th>Fecha Inicio</th>
                  <th>Fecha Fin</th>
                  <th>Cliente</th>
                  <th>Puesto</th>
                  <th>Estado</th>
                </tr>
                
              </thead>
              <tbody>
                
                
              </tbody>
            </table>
              
          </div>
             </div>
        </div>
      </div> 
    </div>
  </div>


<!--Footer-part-->
<div class="row-fluid">
  <div id="footer" class="span12"> 2013 &copy; Matrix Admin. Brought to you by <a href="http://themedesigner.in">Themedesigner.in</a> </div>
</div>
<!--end-Footer-part-->
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.tables.js"></script>
</body>
</html>

