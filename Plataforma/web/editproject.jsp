<!DOCTYPE html>

<html lang="en">
    <jsp:include page="head.jsp" />
<head>
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>::PROMIGAS::</title>
    
    <script type="text/JavaScript" src="js/jquery.js"></script>
    <script src="js/jquery-ui/jquery-ui.js"></script>
    <script src="js/jquery-ui/external/blockui/jquery-blockui.js"></script>
    <script src="js/functions/formulasK.js"></script>
    <script src="js/functions/formulasM.js"></script>
    <script src="js/functions/functions.js"></script>

    
    <link rel="stylesheet" href="js/jquery-ui/jquery-ui.css">
    
    <!-- Bootstrap Core CSS -->
    <link href="bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="dist/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="bower_components/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
        <style>
#informacion ul{
  width:260px;
  float:left;
  min-height: 50px;
  border: 1px #000 dashed;
  padding: 5px;
 list-style-type: none;
}
 
#informacion li{

  cursor:move;
  padding:5px;
  list-style-type: none;
} 
 </style>
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
                <a class="navbar-brand" href="index.html"><%=session.getAttribute("name")%></a>
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
                        <li><a href="#"><i class="fa fa-user fa-fw"></i><%=session.getAttribute("name")%></a>
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
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Crear Proyecto</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
             <div class="col-lg-8">
                 <div id="paso1F">
  <div class="form-group">
    <label>Nombre del Proyecto:</label>
    <input type="text" class="form-control" id="nombre_proyecto" name="nombre_proyecto" placeholder="Proyecto" onchange="validatename_newp();">
  </div>
<div id="informacion">
    <div class="col-lg-12"> <h3>Seleccione las Especialidades que tendrá este proyecto</h3></div>
        <div class="col-lg-6">
        <div class="panel panel-success">
            <div class="panel-heading">
              Escogidas
            </div>
            <div class="panel-body">
             <div class="col-lg-6"> <ul  class="list-group" id="especialidadesseleccionadas"></ul></div>
            </div>
        </div>
        </div>
        
        <div class="col-lg-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
              Disponibles
            </div>
            <div class="panel-body">
             <div class="col-lg-6">
                  <div id="contentallespe">
                                
                      </div>
        </div>
            </div>
        </div>
        </div>
        
</div>
                    
   <div class="col-lg-12">
       <button onclick="nextStep('2')" id="paso1" name="paso1" type="button" class="btn btn-primary btn-lg btn-block">
           Paso 2: Asignar Fases a la especialidad</button></div>
  
 </div>
                <div id="paso2F" style="display: none;">
                    <div id ="infoP2" class="col-lg-12">
                        
                    </div>
                    <div class="col-lg-12">
                     <div class="col-lg-8"><button  onclick="nextStep('3')" id="paso1" name="paso1" type="button" class="btn btn-primary btn-lg btn-block">Paso 3: Asignar actividades a las fases</button></div>
                     </div>
                </div>
                <div id="paso3F" style="display: none;">
                    <div id="infoP3">
                 
                    </div>

                    <div class="col-lg-12">
                     <div class="col-lg-8"><button  onclick="nextStep('4')" id="paso1" name="paso1" type="button" class="btn btn-primary btn-lg btn-block">Paso 4: Asignar modulos a las actividades</button></div>
                    </div>
                </div>
                <div id="paso4F" style="display: none;">
                    <div id="infoP4">
                
                    </div>
                    <div class="col-lg-12">
                     <div class="col-lg-8"><button  onclick="nextStep('5')" id="paso1" name="paso1" type="button" class="btn btn-primary btn-lg btn-block">Paso 5: Asignar responsables</button></div>
                    </div>

                </div>
              <div id="paso5F" style="display: none;">
                  <div id="infoP5">
                      
                  </div>
    <div class="col-lg-12">
     <div class="col-lg-8"><button  onclick="nextStep('6')" id="paso6" name="paso6" type="button" class="btn btn-primary btn-lg btn-block">Finalizar</button></div>
     <!-- <div class="col-lg-8"><button  onclick="RecolectarInfo();" id="paso1" name="paso1" type="button" class="btn btn-primary btn-lg btn-block">Terminar</button></div>-->
    </div>
</div>
                <div id="paso6F" style="display: none;">
                    <div id="infoP6"></div>

                    <div class="col-lg-12">
                     <div class="col-lg-8"><button  onclick="terminar();" id="paso6" name="paso6" type="button" class="btn btn-primary btn-lg btn-block">Finalizar Configuración</button></div>
                     <!-- <div class="col-lg-8"><button  onclick="RecolectarInfo();" id="paso1" name="paso1" type="button" class="btn btn-primary btn-lg btn-block">Terminar</button></div>-->
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
                            <a href="#" class="btn btn-default btn-block">Ver todas las alertas</a>
                        </div>
                        <!-- /.panel-body -->
                    </div>

                </div>
                <!-- /.col-lg-4 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="bower_components/raphael/raphael-min.js"></script>
   <!-- <script src="bower_components/morrisjs/morris.min.js"></script>
    <script src="js/morris-data.js"></script> -->

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
     <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
    <script>
        
        var idproyect = <%out.print(request.getParameter("idpro"));%>;
        var actiall = {"info": [  ] };
        var fasesall = {"info": [  ] };
        var modusall = {"info": [  ] };
        var espe = {"info": [  ] };
        var espeLast = {"info": [  ] };
        
        var nombrep = "";
        var swChange = false;
        
        $(document).ready(function(){
            
            //Informacion General
            //getActividades();
            getModulos();
            getEspecialidades();
            getFases();
            
            //Del proyecto
            getInfoProyect();
            setSpet1();
            
                
        $( "#allespecialidades li, #especialidadesseleccionadas li" ).draggable({
            appendTo: "body", 
            helper: 'clone'           
            });
            $( "#especialidadesseleccionadas, #allespecialidades" ).droppable({
                    accept:'li',
                    activeClass: "ui-state-default",
                    hoverClass: "ui-state-hover",

                    drop: function( event, ui ) {
                        ui.draggable.appendTo(this).fadeIn();
                    }
                });
                
        });
        
        function activarBoton(val,name){
        var tam = val.length;
        if(tam===0){
          document.getElementById(name).disabled=true;   
         }else{
          document.getElementById(name).disabled=false; 
         }
        }
        
        function nextStep(val){           
          switch(val){
                case '2':
                    editStep1();
                    break;
                case '3':
                    editStep2();
                    break;
                case '4':
                    editStep3();
                    break;
                case '5':
                    editStep4();
                    break;
                case '6':
                    editStep5();
                default:
                   break;
           }
           
        }
        
        function prevStep(val){
           
           document.getElementById("paso1F").style.display="none";
           document.getElementById("paso2F").style.display="none";
           document.getElementById("paso3F").style.display="none";
           document.getElementById("paso4F").style.display="none";
           document.getElementById("paso5F").style.display="none";
           document.getElementById("paso6F").style.display="none";
           document.getElementById("paso"+val+"F").style.display="block";
           
           switch(val){
                case '2':
                    var html = getHtmlStep2();
                    $("#infoP2").html(html);
                    
                    for(var i = 0; i < espe.info.length; i++)
                    {
                        for(var j = 0; j< espe.info[i].fases.length; j++){
                            $('#fase-'+espe.info[i].id+'-'+espe.info[i].fases[j].id).attr('selected','selected');
                        }

                    }
                    
                    break;
                case '3':
                    var html = getHtmlStep4();
                    $("#infoP3").html(html);                        
                    break;
                case '4':
                    var html = getHtmlStep3();
                    $("#infoP4").html(html);
                    break;
                case '5':
                    var html = getHtmlStep5();
                    $("#infoP5").html(html);    
                    break;
                case '6':
                    var html = getHtmlStep6();
                    $("#infoP6").html(html);   
                    break;
                default:
                   break;
           }
        }
        
        function setSpet1(){
            
            $("#nombre_proyecto").val(espe.nombrep);
            
            for(var i = 0; i < espe.info.length; i++){
                document.getElementById("espe-"+espe.info[i].id).remove();
                $("#especialidadesseleccionadas").append('<li  class="list-group-item" id="espe-' + espe.info[i].id + '">' + espe.info[i].nombre + '</li>');                
            }
        }
        
        
        function setEspecialidades(){
            espe = {"info": [  ] };
            
            var el = document.getElementById("especialidadesseleccionadas").getElementsByTagName("li");
            
            for (var i=0; i<el.length; i++)
            {
                var id = el[i].id.split("-")[1];
                espe.info[i] = {"id":  id, "nombre":  el[i].innerHTML, "fases": [  ], "lider": "", "actis": []};
            }
        }
        
        function setFases(){
            
            var swOk = true;
            
            for(var j = 0; j < espe.info.length; j++)
            {
                var namefase = "fases"+espe.info[j].id;
                var opciones = $("#"+namefase).val();
                    
                var infofase = [];
                
                if(opciones === null){
                    swOk = false;
                }else{
                    for (var i=0; i<opciones.length; i++)
                    {
                        infofase[infofase.length] = {"id":  opciones[i].split("-")[1], "nombre":  $("#fase-" +opciones[i]).text(), "lider": "", "acti": [  ]};
                    }
                }
                 
                espe.info[j].fases = infofase;
                
                if(infofase.length === 0){ 
                    swOk = false;
                }
            }
            return swOk;
            
            
        }
        
        function noneAll(){
            document.getElementById("paso1F").style.display="none";
            document.getElementById("paso2F").style.display="none";
            document.getElementById("paso3F").style.display="none";
            document.getElementById("paso4F").style.display="none";
            document.getElementById("paso5F").style.display="none";
            document.getElementById("paso6F").style.display="none";
        }
        
        function getHtmlStep2(){
            
            var html = "";           
            
            html += ' <div id="informacion"> '; 
            html += '        <div class="col-lg-12"> <h3>Asigne las fases a sus especialidades</h3></div>'; 
            
            for(var i = 0; i < espe.info.length; i++)
            {
                html += '              <div class="panel panel-info">';  
                html += '                <div class="panel-heading">'; 
                html +=                     espe.info[i].nombre;
                html += '                </div>';
                html += '                <div class="panel-body">';
                html += '                   <div class="form-group">';
                html += '                       <label>Puedes Escoger varias Fases (Presionando Ctrl + Click)</label>';
                html += '                       <select id="fases'+espe.info[i].id+'" multiple="" class="form-control">';
                for(var j = 0; j< fasesall.row.length; j++){
                        html += '<option value="'+espe.info[i].id + '-' + fasesall.row[j].id +'"id ="fase-'+espe.info[i].id + '-' + fasesall.row[j].id + '">'+ fasesall.row[j].nombre + '</option>';
                        
                        //for(var k = 0; k < espeLast.info[k])
                        
                    }
                html += '                       </select>';
                html += '                    </div>             ';
                html += '                </div>';
                html += '              </div>'; 
            }
            
            html += '         </div>';
            html += ' </div> '; 
            return html;
        }
        
        function getHtmlStep3(){
            
            alert("HERE");
            
           var html = "";
            
            html += ' <div id="informacion"> ';
            html += '    <div class="col-lg-12"> <h3>Asigne los Modulos a las actividades</h3></div>';
            for(var i = 0; i<espe.info.length; i++){
               
                html += '        <div class="col-lg-12">';
                html += '          <div class="panel panel-info">';
                html += '               <div class="panel-heading">';
                html += espe.info[i].nombre;
                html += '               </div>';
                html += '               <div class="panel-body">';
                
                for (var j=0; j<espe.info[i].fases.length; j++)
                {

                    html += '                   <div class="panel-group" id="accordion">';
                    html += '                       <div class="panel panel-default">';
                    html += '                           <div class="panel-heading">';
                    html += '                           <h4 class="panel-title">';
                    html += '                               <a data-toggle="collapse" data-parent="#accordion" href="#collapseEspe' + espe.info[i].id + '-'+ espe.info[i].fases[j].id + '" aria-expanded="true" class="collapsed"> ' + espe.info[i].fases[j].nombre+ ' </a>';
                    html += '                           </h4>';
                    html += '                           </div>';
                    html += '                           <div id="collapseEspe' + espe.info[i].id + '-'+ espe.info[i].fases[j].id + '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">';
                    html += '                               <div class="panel-body">';
                   //-------------------------------------------------------------------------
               for (var k=0; k<espe.info[i].fases[j].acti.length; k++)
                {
                    
                    
                        html += '  <div class="panel panel-default">';
                      html += '     <div class="panel-heading">';
                      html += '          <h4 class="panel-title">';
                      html += '              <a data-toggle="collapse" data-parent="#accordion" href="#collapseAct' + espe.info[i].id + '-'+ espe.info[i].fases[j].id +'-'+espe.info[i].fases[j].acti[k].id  +'" aria-expanded="false" class="collapsed">'+getNombreAct(espe.info[i].fases[j].acti[k].id, espe.info[i].id)+'</a>';
                      html += '          </h4>';
                      html += '       </div>';
                      html += '    <div id="collapseAct' + espe.info[i].id + '-'+ espe.info[i].fases[j].id +'-'+espe.info[i].fases[j].acti[k].id + '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">';
                      html += '    <div class="panel-body">';
                            
                      html += '<div class="col-lg-4">'; 
                       
                       for(var l = 0; l < modusall.info.length; l++){
                           var chek = "";
                           for(var m = 0; m < espe.info[i].fases[j].acti[k].modulos.length; m++){
                               alert(espe.info[i].fases[j].acti[k].modulos.length);
                               if(espe.info[i].fases[j].acti[k].modulos[m].id === modusall.info[l].id){
                                   chek = "checked";
                                   m = espe.info[i].fases[j].acti[k].modulos.length;
                               }
                           }
                           
                           //Validar si ese modulo se encuentra en esa actividad
                             html += '<div class="checkbox" > <label><input '+chek+' type="checkbox" value=" ' + modusall.info[l].id + '">'+modusall.info[l].nombre+'</label> </div>';

                       }
                      html    +='</div>';   
                      html += '      </div>';
                      html += '    </div>';
                      html += '   </div>';
                  
                }


              //---------------------------------------------------------------------------
                html += '                               </div>';
                html += '                           </div>';
                html += '                       </div>';
                html += '                   </div>  ';       
                
                
                
            }
            html += '               </div>';
                html += '           </div>';
                html += '       </div> ';
                
            }
            html += '        </div> ';
            html += '     </div>';
            return html;
        }
        
        function getHtmlStep4(){
            
            var html = "";
            html += ' <div id="informacion">';
            html += '        <div class="col-lg-12"> <h3>Asigne las actividades con sus respectivos pesos y tiempo a las fases de cada especialidad</h3></div>';
            html += '            <div class="col-lg-12">';
            for(var i = 0; i<espe.info.length; i++)
            {
                
            html += '              <div class="panel panel-info">';
            html += '                <div class="panel-heading">';
            html += espe.info[i].nombre;
            html += '                </div>';
            html += '                <div class="panel-body">';
            html += '  <label>Peso acumulado de las fases: </label>';
            html += '  <input type="text" id="ptotalfases'+ espe.info[i].id +'" name="ptotalfases'+ espe.info[i].id +'" value = "0" disabled> </td>';
            html += '                <div class="panel-group" id="accordion">';
            html += '                    <div class="panel panel-default">';
            
                    for(var j = 0; j<espe.info[i].fases.length; j++){
            html += '                        <div class="panel-heading">';
            html += '                            <h4 class="panel-title">';
            html += '                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne' + espe.info[i].id + '-' + espe.info[i].fases[j].id+ '" aria-expanded="false" class="collapsed">' + espe.info[i].fases[j].nombre + ': <span id="apfase' + espe.info[i].id + '-' + espe.info[i].fases[j].id+ '"> </span> </a>';
            html += '                            </h4>';
            html += '                        </div>';
            html += '                        <div id="collapseOne' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">';
            html += '                            <div class="panel-body">';
            html += '  <label>Peso de la fase: </label>';
            html += '  <input type="text" id="pfase'+ espe.info[i].id + '-' + espe.info[i].fases[j].id + '" name="pfase'+ espe.info[i].id + '-' + espe.info[i].fases[j].id + '" value = "0" onchange="onchange_Input_newp(this)"> </br>';
            html += '  <label>Peso acumulado de las actividades: </label>';
            html += '  <input  disabled type="text" id="ptotalacti'+ espe.info[i].id + '-' + espe.info[i].fases[j].id + '" name="ptotalfases'+ espe.info[i].id + '-' + espe.info[i].fases[j].id + '" value = "0" > </br>';
            html += '                               <div class="checkbox">';
            html += ' <table class="table table-hover">';
            html +='<thead>';
            html +='        <tr>';
            html +='          <th>Actividad</th>';
            html +='          <th>Peso % [0-100]</th>';
            html +='          <th>Tiempo (Dias)</th>';
            html +='        </tr>';
            html +='      </thead> <tbody>';
                for(var k = 0; k<espe.info[i].actis.length; k++){
                    
                    //Validar si esta actividad se encuentra en las actividades seleccionadas
                    
                    var swIs = false;
                    var peso = 0;
                    var tiempo =0;
                    for(var l = 0; l < espe.info[i].fases[j].acti.length; l++){
                         
                        if(espe.info[i].actis[k].id === espe.info[i].fases[j].acti[l].id){
                            peso = espe.info[i].fases[j].acti[l].peso;
                            tiempo = espe.info[i].fases[j].acti[l].tiempo;
                            swIs = true;
                            l = espe.info[i].fases[j].acti.length;
                        }
                    }
                    
                    var idcom = espe.info[i].id+ '-' +espe.info[i].fases[j].id+ '-' +espe.info[i].actis[k].id;
                    
                    if(swIs === false){
                        html += '<tr>\n\
                                    <td><label><input id="check'+ idcom+ '" type="checkbox" value="'+ idcom+ '" onchange="onchangeCheck(this)">'+espe.info[i].actis[k].nombre+'</label> </td> \n\
                                    <td><input  disabled step="any" type="number" id="peso'+idcom+'" name="peso'+idcom+'" onchange="onchange_Input_newp(this)"> </td> \n\
                                    <td><input  disabled step="any" type="number" id="tiempo'+idcom+'" name="tiempo'+idcom+'" onchange="onchange_Input_newp(this)"> </td> \n\
                                </tr>';
                    }else{
                        html += '<tr>\n\
                                    <td><label><input id="check'+ idcom+ '" checked type="checkbox" value="'+ idcom+ '" onchange="onchangeCheck(this)">'+espe.info[i].actis[k].nombre+'</label> </td> \n\
                                    <td><input step="any" type="number"  value="'+peso+'" id="peso'+idcom+'" name="peso'+idcom+'" onchange="onchange_Input_newp(this)"> </td> \n\
                                    <td><input step="any" type="number" value="'+tiempo+'" id="tiempo'+idcom+'" name="tiempo'+idcom+'" onchange="onchange_Input_newp(this)"> </td> \n\
                                </tr>';
                    }
                        
                }
            html += '  </tbody> </table>';
            
            
            html += '                               </div>';
            html += '                            </div>';
            html += '                        </div>';
            
            
      
        }
            
            html += '                    </div>         ';
            html += '                </div>';
            html += '              </div>';
            html += '              </div>';
        }
            
            html += '            </div> ';
            html += '            </div>';
            html += '     </div>';
            
            return html;
        }
        
        function getHtmlStep5(){
            
            var html = "";
            
            html += '<div id="informacion">';
            
            html += '             <div class="panel-body">';
            html += '               <div class="form-group input-group">';
            html += '<label>Lider de Proyecto</label>';
            html += '                   <span class="input-group-addon">@</span>';
            if(espe.lider !== undefined){
            html += '                   <input id="lidp" type="text" class="form-control" placeholder="Username" value="'+espe.lider+'">';
        }else{
            html += '                   <input id="lidp" type="text" class="form-control" placeholder="Username" value="">';
        }
            html += '               </div>';
            html += '             </div>';
           
            html += '<div class="col-lg-12"> <h3>Asigne responsable por Especialidad</h3></div>';
            
            for(var i = 0; i<espe.info.length; i++){
                
                html += '<div class="col-lg-6">';
                  html += '<div class="panel panel-info">';
                    html += '<div class="panel-heading">';
                           html += espe.info[i].nombre;
                    html += '</div>';
                    html += '<div class="panel-body">';
                        html += '<div class="form-group input-group">';
                            html += '<label>Lider de Especialidad</label>';
                                     html += ' <span class="input-group-addon">@</span>';
                                     if(espe.info[i].lider !== undefined){
                                    html += '  <input id="lide-'+espe.info[i].id +'" type="text" class="form-control" placeholder="Username" value="'+espe.info[i].lider+'">';
                                }else{
                                    html += '  <input id="lide-'+espe.info[i].id +'" type="text" class="form-control" placeholder="Username" value="">';
                                }
                                  html += '</div>';

                    for(var j = 0; j<espe.info[i].fases.length; j++){

                        html += '<div class="panel-group" id="accordion"> ';
                        html += '<div class="panel panel-default">';
                        html += '         <div class="panel-heading">';
                        html += '             <h4 class="panel-title">';
                        html += '                 <a data-toggle="collapse" data-parent="#accordion" href="#collapseResPo' + espe.info[i].id  + '-' + espe.info[i].fases[j].id + '" aria-expanded="false" class="collapsed">'+ espe.info[i].fases[j].nombre + '</a>';
                        html += '             </h4>';
                        html += '         </div>';
                        html += '         <div id="collapseResPo' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">';
                        html += '             <div class="panel-body">';
                        html += '               <div class="form-group input-group">';
                        html += '                   <span class="input-group-addon">@</span>';
                        if(espe.info[i].fases[j].lider !== undefined){
                        html += '                   <input id="lidf-' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" type="text" class="form-control" placeholder="Username" value="'+espe.info[i].fases[j].lider+'">';
                    }else{
                    html += '                   <input id="lidf-' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" type="text" class="form-control" placeholder="Username" value="">';
                    }
                        html += '               </div>';
                        html += '             </div>';
                        html += '         </div>';
                        html += '</div>';
                        html += '</div>';
                    }



                html += '   </div>';
                html += ' </div>';
                html += '</div> ';

            }



          html += '</div>';

          return html;
            
           
        }
        
        function getHtmlStep6(){
            
            var html = "";
            
            
            
            html += '<div class="col-lg-12">';
            html += '            <div class="col-xs-12 col-sm-12">';
                     html += '     <p class="pull-right visible-xs">';
                     html += '       <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>';
                     html += '     </p>';
                     html += '     <div class="jumbotron" style="padding-top: 10px; padding-bottom: 10px;">';
                     html += '       <h2>Proyecto: '+nombrep+'</h2>';
                     html += '       <h4>Lider: '+espe.lider+'</h4>';
                     html += '     </div>';
                     html += '     <div class="row">';
                     
                    for(var i = 0; i < espe.info.length; i++){
                     
                     html += '        <div class="col-xs-6 col-lg-6">';
                     html += '        <div class="panel panel-success">';
                     html += '                   <div class="panel-heading">';
                     html += '                      <h2>'+espe.info[i].nombre+'</h2>';
                     html += '                   </div>';
                     html += '                   <div class="panel-body">';
                     html += '                      <h4> Lider: '+espe.info[i].lider+'</h4>';
                     html += '                       <div class="panel-group">';
                     
                     for(var j = 0; j < espe.info[i].fases.length; j++){
                                             
                     html += '                           <div class="panel panel-default">';
                     html += '                             <div class="panel-heading">';
                     html += '                               <h4 class="panel-title">';
                     html += '                                 <a data-toggle="collapse" href="#fase-'+espe.info[i].fases[j].id+'">'+espe.info[i].fases[j].nombre+'</a>';
                     html += '                               </h4>';
                     html += '                             </div>';
                     html += '                             <div id="fase-'+espe.info[i].fases[j].id+'" class="panel-collapse collapse">';
                     html += '                               <ul class="list-group">';
                     html += ' <li class="list-group-item"> Lider: '+espe.info[i].lider+' </li>';
                     for(var k = 0; k < espe.info[i].fases[j].acti.length; k++){
                         var tt = Number(espe.info[i].fases[j].acti[k].peso) * 100;
                         var ti = espe.info[i].fases[j].acti[k].tiempo;
                     html += '                                 <li class="list-group-item">'+ espe.info[i].fases[j].acti[k].nombre+'<span class="badge">'+tt+'%</span>  <span class="badge">'+ti+'hrs</span></li>';
                 }
                              html += '                      </ul>';

                              html += '                    </div>';
                              html += '                  </div>';
                          }
                              
                              html += '              </div>';
                              html += '          </div>';
                              html += '      </div>';
                            html += '</div>';
                            
        }

                          html += '</div>';
                        html += '</div>';
                        html += '</div> ';
                        
                        return html;
            
        }
        
        function getNombreAct(idact, idespe){
             for(var i = 0; i<espe.info.length; i++){
                if(espe.info[i].id === idespe){
                    for(var j = 0; j<espe.info[i].actis.length; j++){
                        if(espe.info[i].actis[j].id == idact){
                            return espe.info[i].actis[j].nombre;
                        }
                    }
                }
            }
        }
        
        function onchangeCheck(check){
            
            var id = check.value;
            
            if(check.checked === true){
                $("#peso"+id).removeAttr('disabled');
                $("#tiempo"+id).removeAttr('disabled');
            }else{
                $("#peso"+id).attr('disabled','disabled');
                $("#peso"+id).val("");
                
                $("#tiempo"+id).attr('disabled','disabled');
                $("#tiempo"+id).val("");
            }
            
        }
        
        function onchange_Input_newp(inp){

            var sw = validateDecimal(inp.value);

            if(sw !== true){
                inp.value = "";
            }else{
                if(inp.id.includes("pfase") === true){ //Recalcular los pesos de la fase
                    $("#a" + inp.id).html(inp.value);
                    var ids = inp.id.substr(5,inp.id.length-1).split("-");
                    var newpt = recalcularPesoFases(ids[0]);

                    if(newpt > 100){
                        alert("Los pesos deben sumar 100");
                    }
                    
                    $("#ptotalfases"+ids[0]).val(newpt);
                }else if(inp.id.includes("peso") === true){ //Recalcular los pesos de las actividadews de la  fase
                    var ids = inp.id.substr(4,inp.id.length-1).split("-");
                    var newpt = recalcularPesoActividades(ids[0],ids[1]);

                    if(newpt > 100){
                        alert("Los pesos deben sumar 100");
                    }
                    
                    $("#ptotalacti"+ids[0]+"-"+ids[1]).val(newpt);
                }
            }

        }
        
        function recalcularPesoFases(idEspe){
            
            var total = 0;
             $("input[name^='pfase"+idEspe+"']").each(function(){
                total += Number($(this).val());
            });
            
            return total;
        }
        
        function recalcularPesoActividades(idEspe, idFase){
            
            var total = 0;
            $("input[name^='peso"+idEspe+"-" +idFase +"']").each(function(){
                total += Number($(this).val());
            });
            
            return total;
        }
        
        function setActividades(){
            
            var swOk = true;
            var pesoTotal = 0;
            var pesoTotalFases = 0;
            
            for (var i=0; i<espe.info.length; i++)
            {
                pesoTotalFases = 0;
                for (var j=0; j<espe.info[i].fases.length; j++)
                {
                    
                    var opciones = document.getElementById("collapseOne" + espe.info[i].id + "-" + espe.info[i].fases[j].id).getElementsByTagName("input");
                    var pesofase = $("#pfase"+ espe.info[i].id + "-" + espe.info[i].fases[j].id).val();    
                    pesoTotalFases += parseFloat(pesofase);
                    espe.info[i].fases[j].peso = pesofase;
                    
                    var infoactis = [];
                    pesoTotal = 0;
                    
                    for(var k = 0; k<opciones.length; k++){

                        if(opciones[k].getAttribute('type') === "checkbox")
                        {
                            if(opciones[k].checked  === true){
                                var inppeso = document.getElementById("peso"+opciones[k].value);
                                var inptiempo = document.getElementById("tiempo"+opciones[k].value);
                                var idact = opciones[k].value.split("-")[2];
                                infoactis[infoactis.length] = {"id":  idact, "nombre":  getNombreAct(idact, espe.info[i].id), "peso":inppeso.value, "tiempo": inptiempo.value, "modulos": [  ]};
                                
                                if(inppeso.value.trim() === "" || inptiempo.value.trim() === ""){
                                    swOk = false;
                                }
                                
                                pesoTotal += parseFloat(inppeso.value);
                                    
                            }
                        }

                    }
                    espe.info[i].fases[j].acti = infoactis;
                    
                    if(infoactis.length === 0){
                        swOk = false;
                    }
                    
                    if(pesoTotal !== 100){
                        swOk = false;
                        show_OkDialog($("#error_Dialog_newp"), "Los pesos de las actividades deben sumar 100");
                    }
                    
                }
                
                if(pesoTotalFases !== 100){
                    swOk = false;
                    show_OkDialog($("#error_Dialog_newp"), "Los pesos de las fases deben sumar 100");
                }
            }
                       
            
            return swOk;
        }
        
        function setModulos(){
            for (var i=0; i<espe.info.length; i++)
            {
                for (var j=0; j<espe.info[i].fases.length; j++)
                {
                    for(var k = 0; k < espe.info[i].fases[j].acti.length; k++){
                        var modulos = [];
                    
                        var opciones = document.getElementById("collapseAct" + espe.info[i].id + "-" + espe.info[i].fases[j].id + "-" + espe.info[i].fases[j].acti[k].id).getElementsByTagName("input");
                        for(var l = 0; l<opciones.length; l++){
                            if(opciones[l].checked  === true){
                                modulos[modulos.length] = {"id": opciones[l].value};                            
                            }
                        }  
                        espe.info[i].fases[j].acti[k].modulos = modulos;                        
                    }
                    
                }

            }
        }
        
        function setLideres(){
            
            var swOk = true;
            
            for (var i=0; i<espe.info.length; i++)
            {
                espe.info[i].lider = $("#lide-"+espe.info[i].id).val();
                
                for (var j=0; j<espe.info[i].fases.length; j++)
                {
                    espe.info[i].fases[j].lider = $("#lidf-"+espe.info[i].id+"-"+espe.info[i].fases[j].id).val();
                    
                    if($("#lidf-"+espe.info[i].id+"-"+espe.info[i].fases[j].id).val().trim() === ""){
                        swOk = false;
                    }
                }
                
            }
            
            return swOk;
        }
        
        //Ajax
        
        
        function getInfoProyect(){
        
        var parametros = {
                "opcion" : 212,
                "idpro": idproyect,
                "from":"newp"

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
                  espeLast = data;
                  espe = data;
                },
                error: function (xhr, ajaxOptions, err) {
                    alert(err);
                   // show_OkDialog($("#error_Dialog_usu"), "Error");
                },
                complete: function(data, status, request){
              
                }
            });                          

    }
        
        function getEspecialidades(){
            
            var parametros = {
                "opcion": "201",
                "from": "newp"
            };
            
            $.ajax({
                type: "POST",
                url: "Modules/manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    //block("Cargando...");
                },
                success: function(data, status, request){
                    
                    var html = "";
                    html += '<ul  class="list-group" id="allespecialidades">';
                    for(var i = 0; i<data.row.length; i++){
                        html += '<li  class="list-group-item" id="espe-' + data.row[i].id + '">' + data.row[i].nombre + '</li>';
                    }
                    html += '</ul>';
                    
                    $("#contentallespe").html(html);
                    
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_newp"), "Error");
                },
                complete: function(){
                    //unBlock();
                }
            });
        } 
        
        function getFases(){
            var parametros = {
                "opcion": "202",
                "from": "newp"
            };
            
            $.ajax({
                type: "POST",
                url: "Modules/manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    //block("Cargando...");
                },
                success: function(data, status, request){
                    fasesall = data;                    
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_newp"), "Error");
                },
                complete: function(){
                    //unBlock();
                }
            });
        }
        
        function getModulos(){
            var parametros = {
                "opcion": "203",
                "from": "newp"
            };
            
            $.ajax({
                type: "POST",
                url: "Modules/manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    //block("Cargando...");
                },
                success: function(data, status, request){
                    modusall = {"info": [  ] }; 
                    for(var i = 0; i<data.row.length; i++){
                        modusall.info[modusall.info.length] = {"id":  data.row[i].id, "nombre":  data.row[i].nombre};
                    }
                    
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_newp"), "Error");
                },
                complete: function(){
                    //unBlock();
                }
            });
        }
        
        function validatename_newp(){
            
            if($("#nombre_proyecto").val().trim() === ""){
                return;
            }
            
            var parametros = {
                "nombre": $("#nombre_proyecto").val(),
                "idpro": idproyect,
                "opcion": "205",
                "from": "newp"
            };
            
            $.ajax({
                type: "POST",
                url: "Modules/manager.jsp",
                data: parametros,
                async: false,
                beforeSend: function (xhr) {
                    //block("Cargando...");
                },
                success: function(data, status, request){                    
                    activarBoton($("#nombre_proyecto").val(),'paso1');
                },
                error: function (xhr, ajaxOptions, err) {
                    document.getElementById("paso1").disabled=true;
                    show_OkDialog($("#error_Dialog_newp"), err);
                },
                complete: function(){
                    //unBlock();
                }
            });
            
        }
        
        function editStep1(){
            
            //espe = JSON con la informacion actual
            //espeLast = JSON con la informacion en la BD
            
            setEspecialidades(); //actualiza las especialidades actuales
            
            var parametros = {
                "nombre": $("#nombre_proyecto").val(),
                "id_proyect": idproyect,
                "id_user": <%=session.getAttribute("idusu") %>,
                "step": "1",
                "especialidades": JSON.stringify(espe),
                "update": "1",
                "opcion": "215",
                "from": "newp"
            };
            
            var isOk = validate(parametros);
            
            if(isOk === false || espe.info.length === 0){
                alert("Debe diligenciar todos los datos requeridos");
            }else{
                $.ajax({
                     type: "POST",
                     url: "Modules/manager.jsp",
                     data: parametros,
                     dataType: 'json',
                     beforeSend: function (xhr) {
                         //block("Cargando...");
                     },
                     success: function(data, status, request){
                         
                        nombrep = $("#nombre_proyecto").val();
                        
                        getInfoProyect();
                        
                        var html = getHtmlStep2();
                        
                        $("#infoP2").html(html);
                        
                        for(var i = 0; i < espe.info.length; i++)
                        {
                            for(var j = 0; j< espe.info[i].fases.length; j++){
                                $('#fase-'+espe.info[i].id+'-'+espe.info[i].fases[j].id).attr('selected','selected');
                            }

                        }
                        
                        show_OkDialog($("#save_Dialog_newp"), "Paso 1");
                        noneAll();
                        document.getElementById("paso2F").style.display="block";
                     },
                     error: function (xhr, ajaxOptions, err) {
                         show_OkDialog($("#error_Dialog_newp"), err);
                     },
                     complete: function(){
                         //unBlock();
                     }
                 });
            } 
        }
        
        function editStep2(){
        
            var swFaseOk = setFases();
            
            var parametros = {
                "nombre": $("#nombre_proyecto").val(),
                "id_proyect": idproyect,
                "step": "2",
                "especialidades": JSON.stringify(espe),
                "update": "1",
                "opcion": "215",
                "from": "newp"
            };
            
            var isOk = validate(parametros);
                        
            if(isOk === false || swFaseOk === false){
                alert("Debe diligenciar todos los datos requeridos");
            }else{

                $.ajax({
                     type: "POST",
                     url: "Modules/manager.jsp",
                     data: parametros,
                     dataType: 'json',
                     beforeSend: function (xhr) {
                         //block("Cargando...");
                     },
                     success: function(data, status, request){
                         
                        getInfoProyect();
                        var html = getHtmlStep4();
                        $("#infoP3").html(html);
                        
                        show_OkDialog($("#save_Dialog_newp"), "Satisfactory process");
                        noneAll();
                        document.getElementById("paso3F").style.display="block";
                     },
                     error: function (xhr, ajaxOptions, err) {
                         show_OkDialog($("#error_Dialog_newp"), "Error");
                     },
                     complete: function(){
                         //unBlock();
                     }
                 });
            }
        }
        
        function editStep3(){
           
            var swActi = setActividades();
           
            if(swActi === false){
                alert("Debe diligenciar todos los datos requeridos");
                return;
            }
            
            var parametros = {
                "id_proyect": idproyect,
                "step": "3",
                "especialidades": JSON.stringify(espe),
                "update": "1",
                "opcion": "215",
                "from": "newp"
            };
            
            var isOk = validate(parametros);
            
            if(isOk === false){
                alert("Debe diligenciar todos los datos requeridos");
            }else{

                $.ajax({
                     type: "POST",
                     url: "Modules/manager.jsp",
                     data: parametros,
                     dataType: 'json',
                     beforeSend: function (xhr) {
                         //block("Cargando...");
                     },
                     success: function(data, status, request){
                        var html = getHtmlStep3();
                        $("#infoP4").html(html);
                        show_OkDialog($("#save_Dialog_newp"), "Satisfactory process");
                        noneAll();
                        document.getElementById("paso4F").style.display="block";
                     },
                     error: function (xhr, ajaxOptions, err) {
                         show_OkDialog($("#error_Dialog_newp"), "Error");
                     },
                     complete: function(){
                         //unBlock();
                     }
                 });
            }  
        
        }
        
        function editStep4(){
            setModulos();
            
            //Validar cambio de modulos
            
            if(swChange === false){
            
                for(var i = 0; i < espe.info.length && swChange === false; i++){
                
                for(var j = 0; j < espe.info[i].fases.length && swChange === false; j++){
                    
                     for(var k = 0; k < espe.info[i].fases[j].acti.length && swChange === false; k++){
                        
                        var modL = espeLast.info[i].fases[j].acti[k].modulos;
                        var modA = espe.info[i].fases[j].acti[k].modulos;
                        
                        if(modA.length !== modL.length){
                            swChange = true;
                        }
                        
                        for(var l = 0; l < modA.length && swChange === false; l++){
                            
                            var sw = false;
                                
                            for(var m = 0; m < modL.length && sw === false; m++){
                                
                               if(modL[m].id.trim() === modA[l].id.trim()){
                                    sw = true;
                                }
                            }

                            if(sw === false){
                                swChange = true;
                            }
                        }
                    }
                }
            }
            
            }
            
            if(swChange === false){
                espe = $.extend(true, {}, espeLast);
                
                var html = getHtmlStep5();
                $("#infoP5").html(html);
                noneAll();
                document.getElementById("paso5F").style.display="block";
                
                return;
            }else{
                var r = confirm("Usted ha relizado cambios en la configuración previa, si continua los siguientes pasos se perderan");
                if (r !== true) {
                   return;
                } 
            }
            
            var parametros = {
                "id_proyect": idproyect,
                "step": "4",
                "especialidades": JSON.stringify(espe),
                "opcion": "215",
                "update": "1",
                "from": "newp"
            };
            
            var isOk = validate(parametros);
                        
            if(isOk === false){
                alert("Debe diligenciar todos los datos requeridos");
            }else{

                $.ajax({
                     type: "POST",
                     url: "Modules/manager.jsp",
                     data: parametros,
                     dataType: 'json',
                     beforeSend: function (xhr) {
                         //block("Cargando...");
                     },
                     success: function(data, status, request){
                        var html = getHtmlStep5();
                        $("#infoP5").html(html);
                        show_OkDialog($("#save_Dialog_newp"), "Satisfactory process");
                        noneAll();
                        document.getElementById("paso5F").style.display="block";
                     },
                     error: function (xhr, ajaxOptions, err) {
                         show_OkDialog($("#error_Dialog_newp"), "Error");
                     },
                     complete: function(){
                         //unBlock();
                     }
                 });
            }  
        
        }
        
        function editStep5(){
            
            setLideres();
            
            var parametros = {
                "nombre": $("#nombre_proyecto").val(),
                "id_user": <%=session.getAttribute("idusu")%>,
                "step": "5",
                "especialidades": JSON.stringify(espe),
                "lidp": $("#lidp").val(),
                "id_proyect": idproyect,
                "update": "1",
                "opcion": "215",
                "from": "newp"
            };
            
            var isOk = validate(parametros);
                        
            if(isOk === false){
                alert("Debe diligenciar todos los datos requeridos");
            }else{

                $.ajax({
                     type: "POST",
                     url: "Modules/manager.jsp",
                     data: parametros,
                     dataType: 'json',
                     beforeSend: function (xhr) {
                         //block("Cargando...");
                     },
                     success: function(data, status, request){
                        var html = getHtmlStep6();
                        $("#infoP6").html(html);
                        show_OkDialog($("#save_Dialog_newp"), "Satisfactory process");
                        noneAll();
                        document.getElementById("paso6F").style.display="block";
                     },
                     error: function (xhr, ajaxOptions, err) {
                         show_OkDialog($("#error_Dialog_newp"), "Error");
                     },
                     complete: function(){
                         //unBlock();
                     }
                 });
            }  
        }
        
        function terminar(){
            
            var parametros = {
                "id_proyect": idproyect,
                "opcion": "206",
                "from": "newp"
            };
            
            var isOk = validate(parametros);
                        
            if(isOk === false){
                alert("Debe diligenciar todos los datos requeridos");
            }else{

                $.ajax({
                     type: "POST",
                     url: "Modules/manager.jsp",
                     data: parametros,
                     beforeSend: function (xhr) {
                         //block("Cargando...");
                     },
                     success: function(data, status, request){
                        window.location.href = "myproject.jsp"
                        show_OkDialog($("#save_Dialog_newp"), "Satisfactory process");
                     },
                     error: function (xhr, ajaxOptions, err) {
                         show_OkDialog($("#error_Dialog_newp"), "Error");
                     },
                     complete: function(){
                         //unBlock();
                     }
                 });
            }  
            
        }
        
      
                
    </script>
    
    <div id="load_Dialog_newp" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_newp" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_newp" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="calculate_Dialog_newp" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>
            
            <div id="delete_Dialog_newp" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>
</body>

</html>
