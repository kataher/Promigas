<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp" />
<head>
    <%@include file="includehead.html" %>
</head>
<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Modulo Administrativo</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 1</strong>
                                        <span class="pull-right text-muted">40% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 2</strong>
                                        <span class="pull-right text-muted">20% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            <span class="sr-only">20% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 3</strong>
                                        <span class="pull-right text-muted">60% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Task 4</strong>
                                        <span class="pull-right text-muted">80% Complete</span>
                                    </p>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete (danger)</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>See All Tasks</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>               
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i>Perfil de Usuario</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Opciones</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="index.jsp"><i class="fa fa-sign-out fa-fw"></i> Salir</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Buscar...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                         <jsp:include page="menu.jsp" />
                       <!-- <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="flot.html">Flot Charts</a>
                                </li>
                                <li>
                                    <a href="morris.html">Morris.js Charts</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                       
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div id="formulas">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Mis Proyectos</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
             <div class="col-lg-8">
                 <!-- OBTENER LISTA CON TODOS LOS PROYECTO DE LAS PERSONAS -->
                 
                  <!-- FIN OBTENER -->
                  <div id="filtro">
                      
                  </div>
                  <div id="listarol">
                      
                      
                  </div>
                  
                  <div id="tableadmin">
                      
                       <table id="dataTableProyectosA" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Còdigo</th>
                <th>Nombre</th>
                <th>¿Iniciado?</th>
                <th>Lider</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Còdigo</th>
                <th>Nombre</th>
                <th>¿Iniciado?</th>
                <th>Lider</th>
            </tr>
        </tfoot>
    </table>
                      
                      <div class="col-lg-12">
           
                <div class="col-md-2">
                    <button type="button" id="verBtn_mp" class="btn btn-info btn-block">Ver Configuración</button>
                </div>
                          <div class="col-md-2">
                    <button type="button" id="editarBtn_mp" class="btn btn-success btn-block">Editar</button>
                </div>
                <div class="col-md-2">
                    <button type="button" id="deleteBtn_mp" class="btn btn-danger btn-block">Eliminar</button>
                </div>
            </div>
                      
                      
                  </div>
                  
                  <div id="tableLider">
                      
                       <table id="dataTableProyectosL" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Còdigo</th>
                <th>Nombre</th>
                <th>Rol</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Còdigo</th>
                <th>Nombre</th>
                <th>Rol</th>
            </tr>
        </tfoot>
    </table>
                      
                      <div class="col-lg-12">
           
                <div class="col-md-2">
                    <button type="button" id="verLBtn_mp" class="btn btn-info btn-block">Ver</button>
                </div>
                         
            </div>
                      
                      
                  </div>
               
                
             </div>             
             <!-- /.col-lg-8 -->
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> Panel de Notificaciones
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-comment fa-fw"></i>Comentarios nuevos.
                                    <span class="pull-right text-muted small"><em>Hace 4 Minutos</em>
                                    </span>
                                </a>
                               <a href="#" class="list-group-item">
                                    <i class="fa fa-tasks fa-fw"></i> Nueva Tarea
                                    <span class="pull-right text-muted small"><em>Hace 43 Minutos</em>
                                    </span>
                                </a>
                               </div>
                            <!-- /.list-group -->
                            <a href="alerta.jsp?type=<%=session.getAttribute("tipo") %>&idusu=<%=session.getAttribute("idusu") %>" class="btn btn-default btn-block">Ver todas las alertas</a>
                        </div>
                        <!-- /.panel-body -->
                    </div>

                </div>
                <!-- /.col-lg-4 -->
            </div>
            <!-- /.row -->
        </div>
            </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

<script>
    
     var table_mp, idusu, tipo;
     
    $(function(){
        
        idusu = <%=session.getAttribute("idusu") %>;
        tipo = <%=session.getAttribute("tipo") %>;
        document.getElementById("tableadmin").style.display="none";
        document.getElementById("tableLider").style.display="none";
        
        //setFiltro(tipo);
        //getproyectos( idusu, tipo);
        //getInfoProyect(200);
        
        if(tipo === 4){
            document.getElementById("tableadmin").style.display="block";
            loadTableAdmin_mp();
        }else{
            document.getElementById("tableLider").style.display="block";
            loadTableLider_mp();
        }
        
    });
    
    function loadTableLider_mp(){
        table_mp = $('#dataTableProyectosL').DataTable( {
                        "ajax": "Modules/manager.jsp?opcion=207&from=newp&id_user="+idusu+"&type="+tipo,
                        "columns": [
                            { "data": "id" },
                            { "data": "name" },
                            { "data": "rol" }
                        ],
                        "scrollY": "300px",
                        "scrollCollapse": true,
                        "language": {
                            "lengthMenu": "Mostrando _MENU_ filas por página",
                            "zeroRecords": "No se han encontrado resultados",
                            "info": "Mostrando página _PAGE_ de _PAGES_",
                            "infoEmpty": "No existen filas disponibles",
                            "infoFiltered": "(filtrando de _MAX_ filas en total)"
                        }
                    } );
                    
                    $('#dataTableProyectosL tbody').on( 'click', 'tr', function () {
                        if ( $(this).hasClass('selected') ) {
                            $(this).removeClass('selected');
                        }
                        else {
                            table_mp.$('tr.selected').removeClass('selected');
                            $(this).addClass('selected');
                        }
                    } );
                    
                     $('#verLBtn_mp').click( function () {   
                       if(table_mp.rows('.selected').data()[0] !== undefined){
                            var id = table_mp.rows('.selected').data()[0].id;
                            var rol = table_mp.rows('.selected').data()[0].rol;
                            
                            if(rol == "Lider de Proyecto"){
                                window.location="projects1.jsp?idpro="+id+"&idusu="+idusu;
                            }
                            
                            if(rol == "Lider de Especialidad"){
                                window.location="projects3.jsp?idpro="+id+"&idusu="+idusu;
                            }
                            
                            if(rol == "Lider de Fase"){
                                window.location="projects2.jsp?idpro="+id+"&idusu="+idusu;
                            }
                        }
                    } );
                    
                   
                }
    
    function loadTableAdmin_mp(){
         table_mp = $('#dataTableProyectosA').DataTable( {
                        "ajax": "Modules/manager.jsp?opcion=207&from=newp&id_user="+idusu+"&type="+tipo,
                        "columns": [
                            { "data": "id" },
                            { "data": "nombre" },
                            { "data": "flag" },
                            { "data": "name" }
                        ],
                        "scrollY": "300px",
                        "scrollCollapse": true,
                        "language": {
                            "lengthMenu": "Mostrando _MENU_ filas por página",
                            "zeroRecords": "No se han encontrado resultados",
                            "info": "Mostrando página _PAGE_ de _PAGES_",
                            "infoEmpty": "No existen filas disponibles",
                            "infoFiltered": "(filtrando de _MAX_ filas en total)"
                        }
                    } );
                    
                    $('#dataTableProyectosA tbody').on( 'click', 'tr', function () {
                        if ( $(this).hasClass('selected') ) {
                            $(this).removeClass('selected');
                        }
                        else {
                            table_mp.$('tr.selected').removeClass('selected');
                            $(this).addClass('selected');
                        }
                    } );
                    
                    $('#verBtn_mp').click( function () {   
                       if(table_mp.rows('.selected').data()[0] !== undefined){
                            var id = table_mp.rows('.selected').data()[0].id;
                            window.location="infoproyect.jsp?idpro="+id;
                        }
                    } );
                    
                    $('#editarBtn_mp').click( function () {   
                       if(table_mp.rows('.selected').data()[0] !== undefined){
                            var id = table_mp.rows('.selected').data()[0].id;
                            var ini = table_mp.rows('.selected').data()[0].flag;
                            
                            if(ini == "S"){
                                alert("No se puede editar el proyecto, ya ha sido iniciado")
                            }else{
                                window.location="createproject.jsp?idpro="+id;
                            }
                        }
                    } );
                    
                    $('#deleteBtn_mp').click( function () {
                        if(table_mp.rows('.selected').data()[0] !== undefined){
                            var id = table_mp.rows('.selected').data()[0].id;
                            var ini = table_mp.rows('.selected').data()[0].flag;
                            if(ini == "S"){
                                alert("No se puede eliminar el proyecto, ya ha sido iniciado")
                            }else{
                               delete_mp(id);
                            }
                            
                        }
                    } );
                }
    
    function cargarFormula(url, el){
        
        //$("#side-menu a").removeClass("active_menu_element");
        //$(el).addClass("active_menu_element");
        
        var parametros = {
                "urlM" : "urlM"
				
        };
        $.ajax({
                data:  parametros,
                    url:   url,
                    type:  'post',
                    beforeSend: function () {
                            $("#formulas").html("Procesando, espere por favor...");
                    },
                    success:  function (response) {
                            $("#formulas").html(response);
                    },error:function (xhr, ajaxOptions, thrownError){
                alert(xhr.status);
                alert(thrownError);
            }
        });
    }
    
    function setFiltro(tipo){
        
        if(tipo ===4){
            var html = '<div class="form-group col-lg-4">'+
                        '<label>Filtro:</label> '+
                         '<select class="form-control" id="filtro_myp" name="filtro_myp" onchange="getproyectos(<%=session.getAttribute("idusu") %>, <%=session.getAttribute("tipo") %>)">'+
                        '<option value="1">Proyectos Iniciados</option>'+
                        '<option value="2">Proyectos no Iniciados</option>'+
                        '<option value="3">Todos</option>'+
                      '</select> '+
                  '</div>';
          
          $("#filtro").html(html);
         
        }
        
    }
    
    function getproyectos(iduser, type){
    
        var filtro = 1;
        if($("#filtro_myp").val()!== undefined){
            filtro = $("#filtro_myp").val();
        };
        
        var parametros = {
                "opcion" : 207,
                "from": "newp",
                "id_user":iduser,
                "filtro":filtro,
                "type": type

        };

        $.ajax({
                type: "POST",
                url: "Modules/manager.jsp",
                data: parametros,
                dataType: 'json',
                async : false,
                beforeSend: function () {
                    
                   
                },
                success:  function(data, status, request){
                   if(type === 4){
                        setProyectsAdmin(data);
                    }else{
                        setProyectslider(data);
                    }
                },
                error: function (xhr, ajaxOptions, err) {
                    alert(err);
                   // show_OkDialog($("#error_Dialog_usu"), "Error");
                },
                complete: function(data, status, request){
              
                }
            });                          

    }
    
    function delete_mp(idpro){
    
        var parametros = {
                "opcion" : 217,
                "from": "newp",
                "idpro": idpro

        };

        $.ajax({
                type: "POST",
                url: "Modules/manager.jsp",
                data: parametros,
                dataType: 'json',
                async : false,
                beforeSend: function () {
                   
                },
                success:  function(data, status, request){
                    alert("Proyecto Eliminado Exitosamente");
                    table_mp.row('.selected').remove().draw( false );
                },
                error: function (xhr, ajaxOptions, err) {
                    alert(err);
                   // show_OkDialog($("#error_Dialog_usu"), "Error");
                },
                complete: function(data, status, request){
              
                }
            });                          

    }
    
    function setProyectslider(data){
        var html = "";
        if ( data.liderproyecto !== undefined){
            for(var i = 0; i < data.liderproyecto.length ; i++){
                html += "<div class='col-lg-6 col-md-6'>"+
                          "<div class='panel panel-primary'>"+
                              "<div class='panel-heading'>"+
                                  "<div class='row'>"+
                                      "<div class='col-xs-3'>"+
                                          "<i class='fa fa-files-o fa-5x'>"+"</i>"+
                                      "</div>"+
                                      "<div class='col-xs-9 text-right'>"+
                                          "<div class='huge'  style='font-size: 25px;'>Lider de Proyecto</div>"+
                                          "<div>"+data.liderproyecto[i].name+"</div>"+
                                      "</div>"+
                                  "</div>"+
                              "</div>"+
                              "<a href='projects1.jsp?idpro="+data.liderproyecto[i].id_proyecto+"&idusu="+data.liderproyecto[i].id_user+"'>"+
                                  "<div class='panel-footer'>"+
                                      "<span class='pull-left'>Escoger</span>"+
                                      "<span class='pull-right'>"+"<i class='fa fa-arrow-circle-right'>"+"</i>"+"</span>"+
                                      "<div class='clearfix'>"+"</div>"+
                                  "</div>"+
                              "</a>"+
                          "</div>"+
                      "</div>";
            }
        }
        
        if ( data.liderfase !== undefined){
            for(var i = 0; i < data.liderfase.length ; i++){
                    html += "<div class='col-lg-6 col-md-6'>"+
                             "<div class='panel panel-info'>"+
                                 "<div class='panel-heading'>"+
                                     "<div class='row'>"+
                                         "<div class='col-xs-3'>"+
                                             "<i class='fa fa-files-o fa-5x'>"+"</i>"+
                                         "</div>"+
                                         "<div class='col-xs-9 text-right'>"+
                                             "<div class='huge'  style='font-size: 25px;'>Lider de Fase</div>"+
                                             "<div>"+data.liderfase[i].name+"</div>"+
                                         "</div>"+
                                     "</div>"+
                                 "</div>"+
                                 "<a href='projects2.jsp?idpro="+data.liderfase[i].id_proyecto+"&idusu="+data.liderfase[i].id_user+"'>"+
                                     "<div class='panel-footer'>"+
                                         "<span class='pull-left'>Escoger</span>"+
                                         "<span class='pull-right'>"+"<i class='fa fa-arrow-circle-right'>"+"</i>"+"</span>"+
                                         "<div class='clearfix'>"+"</div>"+
                                     "</div>"+
                                 "</a>"+
                             "</div>"+
                         "</div>"; 
             }
        }
        
        if ( data.liderespecialidades !== undefined){
          for(var i = 0; i < data.liderespecialidades.length ; i++){
                     html+=  "<div class='col-lg-6 col-md-6'>"+
                    "<div class='panel panel-green'>"+
                        "<div class='panel-heading'>"+
                            "<div class='row'>"+
                                "<div class='col-xs-3'>"+
                                    "<i class='fa fa-files-o fa-5x'>"+"</i>"+
                                "</div>"+
                                "<div class='col-xs-9 text-right'>"+
                                    "<div class='huge' style='font-size: 25px;'>Lider de Especialidad</div>"+
                                    "<div>"+data.liderespecialidades[i].name+"</div>"+
                                "</div>"+
                            "</div>"+
                        "</div>"+
                        "<a href='projects3.jsp?idpro="+data.liderespecialidades[i].id_proyecto+"&idusu="+data.liderespecialidades[i].id_user+"'>"+
                            "<div class='panel-footer'>"+
                                "<span class='pull-left'>Escoger</span>"+
                                "<span class='pull-right'>"+"<i class='fa fa-arrow-circle-right'>"+"</i>"+"</span>"+
                                "<div class='clearfix'>"+"</div>"+
                            "</div>"+
                        "</a>"+
                    "</div>"+
                "</div>";
             }
        }         
                    
        $("#listarol").html(html);
    }
    
    function setProyectsAdmin(data){
        
        
        var html = ' <div class="row"> '+
                        
                    ' </div> ' +
           ' </div> ';
        for(var i = 0; i < data.row.length; i++){
          html +=  "<div class='col-lg-6 col-md-6'>";
          
          if(data.row[i].flag === "1"){
              
                    html +="<div class='panel panel-green'>";
                }else{
                     html +="<div class='panel panel-info'>";
                }
                    //idprotemp, pro.name, roles.id_user, users.name, proo.id
                    
                    html +=    "<div class='panel-heading'>"+
                            "<div class='row'>"+
                                "<div class='col-xs-3'>"+
                                    "<i class='fa fa-files-o fa-5x'>"+"</i>"+
                                "</div>"+
                                "<div class='col-xs-9 text-right'>"+
                                    "<div class='huge' style='font-size: 25px;'>" + data.row[i].proname + "</div>"+
                                   
                                "</div>"+
                            "</div>"+
                        "</div>";
                        
                        if (data.row[i].flag === "1"){
                        html += "<a href='infoproyect.jsp?idpro="+data.row[i].idprotemp+"'>"+
                            "<div class='panel-footer'>"+
                                "<span class='pull-left'>Ver configuración</span>"+
                                "<span class='pull-right'>"+"<i class='fa fa-arrow-circle-right'>"+"</i>"+"</span>"+
                                "<div class='clearfix'>"+"</div>"+
                            "</div>"+ 
                        "</a>";
                    }else{
                        html += "<a href='editproject.jsp?idpro="+data.row[i].idprotemp+"'>"+
                            "<div class='panel-footer'>"+
                                "<span class='pull-left'>Editar</span>"+
                                "<span class='pull-right'>"+"<i class='fa fa-arrow-circle-right'>"+"</i>"+"</span>"+
                                "<div class='clearfix'>"+"</div>"+
                            "</div>"+ 
                        "</a>";
                    }
                    html += "</div>"+
                "</div>";
            }
        
        $("#listarol").html(html);
    }
    
    
    
</script>
</body>

</html>
