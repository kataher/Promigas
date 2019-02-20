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
                        </li>
                        <li>
                            <a href="myproject.jsp"><i class="fa fa-dashboard fa-fw"></i> Mis Proyectos</a>
                        </li>
                        
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <!-- /.row -->
            <div class="row">
             <div class="col-lg-12">
             <div id="formulas"></div>
              
             <div class="col-xs-12 col-lg-12">
              
            
                 <div><a href="myproject.jsp" class="btn btn-primary">Regresar</a></div>
            </div><!--/.col-xs-6.col-lg-4-->
           
             </div>             
             <!-- /.col-lg-8 -->
                
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
 <!-- Flot Charts JavaScript -->
   <!-- <script src="bower_components/flot/excanvas.min.js"></script>
    <script src="bower_components/flot/jquery.flot.js"></script>
    <script src="bower_components/flot/jquery.flot.pie.js"></script>
    <script src="bower_components/flot/jquery.flot.resize.js"></script>
    <script src="bower_components/flot/jquery.flot.time.js"></script>
    <script src="bower_components/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="js/flot-data.js"></script>-->
    <script type="text/javascript" src="js/highchart/highcharts.js"></script>
    <script type="text/javascript" src="js/highchart/exporting.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="dist/js/sb-admin-2.js"></script>
    
    <script>
    $(function(){
        
        var type = <%= request.getParameter("type")%>;
        var idusu = <%=request.getParameter("idusu")%>
        getAllAlertas(type,idusu);
    });
    
    function getAllAlertas(type,idusu){
        
        
        var parametros = {
                "opcion" : 216,
                "idpro": 1,
                "idusu": idusu,
                "from":"newp"

        };

        $.ajax({
                type: "POST",
                url: "Modules/manager.jsp",
                data: parametros,
                dataType: 'json',
                async : false,
                success:  function(data, status, request){                   
                   getDivFormulas(data);
                },
                error: function (xhr, ajaxOptions, err) {
                    alert(err);
                   // show_OkDialog($("#error_Dialog_usu"), "Error");
                },
                complete: function(data, status, request){
              
                }
            });                          

    }
    
    function getDivFormulas(data){
        //alert(JSON.stringify(data));    
         var html = '<div class="row"> ' +
                '<div class="col-lg-12"> ' +
                '    <h1 class="page-header">' + data.name + '</h1> ' +
                '</div> ' +
           ' </div> ';
   
            html += ' <div id="informacion"> ';
            
            for(var i = 0; i<data.info.length; i++){
               
                html += '        <div class="col-lg-12">';
                html += '          <div class="panel panel-info">';
                html += '               <div class="panel-heading">';
                html +=  data.info[i].nombre;
                html += '               </div>';
                html += '               <div class="panel-body">';
                html += ' <label>Lider de Proyecto: ' +  data.info[i].lider + '</label>';
                html +=   "<div class='panel-body'>";
                
                html +=  "</div>";
                
                for (var j=0; j<data.info[i].especialidades.length; j++)
                {
                    
                    var especialidad = data.info[i].especialidades[j];
                    var idAc1 = especialidad.id + '-' + data.info[i].id;
                
                    html += '                   <div class="panel-group" id="accordion">';
                    html += '                       <div class="panel panel-default">';
                    html += '                           <div class="panel-heading">';
                    html += '                           <h4 class="panel-title">';
                    html += '                               <a data-toggle="collapse" data-parent="#accordion" href="#collapseEspe' + idAc1 + '" > ' + especialidad.nombre+ ' </a>';
                    html += '                           </h4>';
                    html += '                           </div>';
                    html += '                           <div id="collapseEspe' + idAc1 + '" class="panel-collapse collapse" aria-expanded="true" style="height: 0px;">';
                    
                    
                       
                    html += '                               <div class="panel-body">';
                    html += ' <label>Lider de Especialidad: ' + especialidad.lider + '</label>';
                    
                                        
                    
                   //-------------------------------------------------------------------------
                for (var k=0; k<especialidad.fases.length; k++)
                {
                    var fase = especialidad.fases[k];
                    var idAc2 = idAc1 + "-" + fase.id;
                      html += '  <div class="panel panel-default">';
                      html += '     <div class="panel-heading">';
                      html += '          <h4 class="panel-title">';
                      html += '              <a data-toggle="collapse" data-parent="#accordion" href="#collapseAct' + idAc2 +'" aria-expanded="true" >'+ fase.nombre+'</a>';
                      html += '          </h4>';
                      html += '       </div>';
                      html += '    <div id="collapseAct' + idAc2 + '" class="panel-collapse collapse" aria-expanded="true" style="height: 0px;">';
                      html += '    <div class="panel-body">';
                      html += ' <label>Lider de Fase: ' + fase.lider + '</label>';
                    
                           
                      html += ' <div class="table-responsive">'+
                                "<table class='table table-bordered table-striped'>"+
                                "    <thead>"+
                                "        <tr>"+
                                "            <th>"+
                                "                Actividad"+
                                "            </th>"+
                                "            <th>"+
                                "                Fecha Inicio"+
                                "            </th>"+
                                "            <th>"+
                                "                Fecha Fin"+
                                "            </th>"+
                                "            <th>"+
                                "               Tiempo Configurado (Hr) "+
                                "            </th>"+
                                "            <th>Tiempo Transcurrido (Hr) </th>"+
                                "            <th>Porcentaje Tiempo Transcurrido</th>"+
                                "        </tr>"+
                                "    </thead>"+
                                "    <tbody>";
                                
                                for(var l = 0; l < fase.actividades.length; l++){
                        
                        var acti = fase.actividades[l];
                                var htmlC1 = "";
                                var htmlC2 = "";
                                
                                if(parseFloat(acti.porcentaje) > 70 ){
                                    htmlC1 = " <font color='red'> "; 
                                    htmlC2 = " </font> "; 
                                }
                                
                                if(acti.fecha_final !== "--"){
                                    htmlC1 = ""; 
                                    htmlC2 = ""; 
                                }
                                
                                html += "       <tr>"+
                                "            <th> " + htmlC1 + acti.nombre + htmlC2 + " </th>"+ 
                                "            <td> " + htmlC1 + acti.fecha_inicio + htmlC2 + " </td>"+
                                "            <td> " + htmlC1 + acti.fecha_final + htmlC2 + " </td>"+
                                "            <td> " + htmlC1 + acti.tiempo + htmlC2 + " </td>"+                                
                                "            <td> " + htmlC1 + acti.tiempoTranscurrido + htmlC2 + " </td>";
                                if(parseFloat(acti.porcentaje) > 100 && acti.fecha_final === "--"){
                                    html +=  "            <td> " + htmlC1 + " ALERTA!! Tiempo Terminado  " + htmlC2 + " </td>";    
                                }else if(parseFloat(acti.porcentaje) > 70 && acti.fecha_final === "--"){
                                    html += "            <td> " + htmlC1 +  " ALERTA!! Tiempo por cumplir:  " + acti.porcentaje + htmlC2 + "</td>";  
                                }else{
                                    html +=  "            <td> " + htmlC1 + acti.porcentaje + htmlC2 + "</td>";  
                                }
                        
                                                             
                       html += "        </tr>";
                               }
                      html += "              </tbody>"+
                                "</table>";
                      html += '      </div>';
                    
                      
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
            
                        
                       $("#formulas").html(html);
    }
    function estado(est){
     if(est == 0){ return "No Realizado";}
     if(est == 1){ return "No Aprobado";}
     if(est == 2){ return "Aprobado";}
     if(est == 3){ return "En Espera";}
     return est;
    }
    function fecha(fecha){
     if(fecha == undefined){
        return "No terminada";
      }
      return fecha;
    }
    function CambiarEstado(id,estado){
       
        var parametros = {
                "opcion" : '213',
                "id" : id,
                "state"  : estado,
                "from" :  "newp"
	};
        $.ajax({
                type: "POST",
                url: "Modules/manager.jsp",
                data:  parametros,
                beforeSend: function () {
                       // getActividades();
                },
                success:  function (data, status, request){
                  var idpro = <%= request.getParameter("idpro")%>;
                  var idusu = <%=request.getParameter("idusu")%>
                  getInfoProyect(idpro,idusu);
                  
                },error:function (xhr, ajaxOptions, thrownError){
                  // alert(xhr.status);
                  // alert(thrownError);
                },complete: function(){
                 var idpro = <%= request.getParameter("idpro")%>;
                 var idusu = <%=request.getParameter("idusu")%>
                 getInfoProyect(idpro,idusu);
                }
   });
   }
   function CargarArchivo(id){
       
        var parametros = {
                "opcion" : '214',
                "idpro" : id,
                "file"  : $("#file"+id).val(),
                "from" :  "newp"
	};
        $.ajax({
                type: "POST",
                url: "Modules/manager.jsp",
                data:  parametros,
                beforeSend: function () {
                      //  
                },
                success:  function (data, status, request){
                  var idpro = <%= request.getParameter("idpro")%>;
                  var idusu = <%=request.getParameter("idusu")%>
                      getInfoProyect(idpro,idusu);
                },error:function (xhr, ajaxOptions, thrownError){
                 // alert(xhr.status);
                 // alert(thrownError);
        }
   });
   }
    </script>

</body>

</html>
