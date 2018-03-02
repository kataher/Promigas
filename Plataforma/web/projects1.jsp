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
                <a class="navbar-brand" href="index.html">Modulo Administrativo</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                       
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
                                <strong>Leer todos los mensajes</strong>
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
                        </li>
                        <jsp:include page="menu.jsp" />
                        
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

                        <div id="formulas"></div>
        

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
        var idpro = <%= request.getParameter("idpro")%>;
        getInfoProyect(idpro);
    });
     function getInfoProyect(idpro){
        
        var parametros = {
                "opcion" : 212,
                "idpro": idpro,
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
    function getDivFormulas(proy){
     console.log(JSON.stringify(proy));

        var html = '<div id="page-wrapper"><div class="row"><div class="col-lg-12">'+
                   '<h1 class="page-header">'+proy.nombrep+'</h1></div></div> '+
                   '<div class="row">'+
                   '<div class="col-lg-12">';
           //cuerpo
            for(var i = 0; i<proy.info.length; i++){
               var apro= 0;
               var avan = 0;
               var fal = 0;
                html += '<div class="col-xs-6 col-lg-6">'+             
                        '<div class="panel panel-success">'+
                        '<div class="panel-heading">'+
                        '   <h2>'+proy.info[i].nombre+'</h2>'+
                        '   <sub>Responsable: '+proy.info[i].lider+'</sub>'+
                        '</div>';
                var body = '<div class="panel-body">'+
                            '<strong>Porcentaje de Cumplimiento</strong>'+
                            '<span class="pull-right text-muted">procumpli% Completada</span>'+
                            '<div class="progress progress-striped active">'+
                            '  <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: procumpli%">'+
                            '      <span class="sr-only">procumpli% Completada</span>'+
                            '  </div></div>  ';
                 var body2 = '<strong>Porcentaje de Avance</strong>'+
                            '<span class="pull-right text-muted">proavan% Completada</span>'+
                            '<div class="progress progress-striped active">'+
                            '  <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: proavan%">'+
                            '      <span class="sr-only">proavan% Completada</span>'+
                            '  </div></div>  ';   
                 html += body;
                 html += body2;
                 
                 var porT = 0;
                           
                        for (var j=0; j<proy.info[i].fases.length; j++){
                            html+= '<div class="panel-group">'+
                            '<div class="panel panel-default">'+
                            ' <div class="panel-heading">'+
                            '   <h4 class="panel-title">'+
                            '     <a data-toggle="collapse" href="#fase'+proy.info[i].id+'-'+proy.info[i].fases[j].id+'">'+proy.info[i].fases[j].nombre+': ' + proy.info[i].fases[j].peso + '%</a>'+
                            '   </h4>'+
                            ' </div>'+
                            '  <div id="fase'+proy.info[i].id+'-'+proy.info[i].fases[j].id+'" class="panel-collapse collapse">'+
                             '       <ul class="list-group">';
                     apro = 0;
                          for (var k=0; k<proy.info[i].fases[j].acti.length; k++){
                              
                               if(proy.info[i].fases[j].acti[k].fileup !== undefined ){
                                    var str =proy.info[i].fases[j].acti[k].fileup;
                                    var res = str.split("\\");
                                    var filename = res[res.length-1];
                                    var path =str.substring(0,(str.length - (filename.length)));
                                    }else{
                                     var filename=""; 
                                     var path="";
                                   }
                             html+= "<input type='hidden' id='filename"+proy.info[i].fases[j].acti[k].id+"' name='filename'"+proy.info[i].fases[j].acti[k].id+"' value='"+filename+"' />";
                             html+= "<input type='hidden' id='path"+proy.info[i].fases[j].acti[k].id+"' name='path'"+proy.info[i].fases[j].acti[k].id+"' value='"+path+"' />";
                              
                              
                            html+='<li class="list-group-item">'+proy.info[i].fases[j].acti[k].nombre+ ': ' + proy.info[i].fases[j].acti[k].peso + '% ' + 
                                    '<span class="label label-primary">  <a  href="#" onclick="BajarArchivo('+proy.info[i].fases[j].acti[k].id+','+proy.info[i].fases[j].acti[k].id+
                                    ')" target="_blank" style="color:#fff !important;">Ver Informe</a></span><span class="badge">'+estado(proy.info[i].fases[j].acti[k].aprobado)+'</span> <br>\n\
                                    Tiempo Asignado (Días): '+proy.info[i].fases[j].acti[k].tiempo+' <br> \n\
                                    Tiempo Ejecutado (Días): ' + proy.info[i].fases[j].acti[k].tiempoTotal + '</li>';
                             if(proy.info[i].fases[j].acti[k].aprobado==2){
                                 apro += parseFloat(proy.info[i].fases[j].acti[k].peso) ;
                                 // alert(proy.info[i].fases[j].acti[k].tiempoTotal);
                                 avan += parseFloat(proy.info[i].fases[j].acti[k].tiempoTotal) ;
                                 
                             }
                             fal += parseFloat(proy.info[i].fases[j].acti[k].tiempo) ;
                          }
                          
                          
                          porT += ((apro * proy.info[i].fases[j].peso)/100);
                          html+='</ul></div>';
                          html+='</div></div>';
                       
                        }
                        
                        var porcetaje = (porT);
                        var porAva = (avan*100/fal);
                        porcetaje = Math.round(porcetaje);
                        porAva = Math.round(porAva);
                        html = html.replace("procumpli",porcetaje);
                        html = html.replace("procumpli",porcetaje);
                        html = html.replace("procumpli",porcetaje);
                        
                        html = html.replace("proavan",porAva);
                        html = html.replace("proavan",porAva);
                        html = html.replace("proavan",porAva);
                       
                        html += '</div>';
                         if(proy.info[i].fileupload !== undefined ){
                                    var str =proy.info[i].fileupload;
                                    var res = str.split("\\");
                                    var filename = res[res.length-1];
                                    var path =str.substring(0,(str.length - (filename.length)));
                                    }else{
                                     var filename=""; 
                                     var path="";
                                   }
                             html+= "<input type='hidden' id='filename"+proy.info[i].id+"' name='filename'"+proy.info[i].id+"' value='"+filename+"' />";
                             html+= "<input type='hidden' id='path"+proy.info[i].id+"' name='path'"+proy.info[i].id+"' value='"+path+"' />";
                              
                        html +='<div class="panel-footer"><div class="alert alert-success">'+
                                '<a  href="#" onclick="BajarArchivo('+proy.info[i].id+','+proy.info[i].id+')" target="_black" class="alert-link">Descargar Informe de Especialidad </a>  '+
                                '</div></div></div></div>';
                                
            }    
           //fin 
           html += '</div></div>';
      $("#formulas").html(html);
    }
    function cargarFormula(url,urlM){
        var parametros = {
                "urlM" : urlM
				
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
function estado(est){
     if(est == 0){ return "No Realizado";}
     if(est == 1){ return "No Aprobado";}
     if(est == 2){ return "Aprobado";}
     if(est == 3){ return "En Espera";}
     return est;
    }
      function BajarArchivo(file,path){
       file = document.getElementById("filename"+file).value;
       path = document.getElementById("path"+path).value;
       //alert(file+" "+path);
       if(file!==""){
        var a = document.createElement("a");
		a.target = "_blank";
		a.href = "bajar.jsp?filename="+file+"&path="+path;
		a.click();
       }else{
       alert("Aun no se ha guardado este informe");
        }
    }
    </script>

</body>

</html>
