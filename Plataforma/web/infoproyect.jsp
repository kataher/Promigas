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
                                        <em>Yesterday</em>Lider de Proyecto
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
            </div>
            
             <div id="indicadores">
            </div>
            </div>
        <!-- /#page-wrapper -->

    </div>
    


<script>
    $(function(){
        
        var ipdro = <%out.print(request.getParameter("idpro"));%>;
        getInfoProyect(ipdro);
        
        irA_ip("1");
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
                  //getDivIndicadores(data);
                },
                error: function (xhr, ajaxOptions, err) {
                    alert(err);
                   // show_OkDialog($("#error_Dialog_usu"), "Error");
                },
                complete: function(data, status, request){
              
                }
            });                          

    }
    
    function getDivFormulas(espe){
        
         var html = '<div class="col-lg-12"> ' +
                '    <h1 class="page-header">' + espe.nombrep + '</h1> ' +
                '</div> ';
                //'<button type="button" class="btn btn-primary btn-lg" onclick="irA_ip(2)">Ver Indicadores</button>';
                
           
   
            html += ' <div id="informacion"> ';
            html += '    <div class="col-lg-12"> <h3>Lider de Proyecto: '+espe.lider+'</h3></div>';
            for(var i = 0; i<espe.info.length; i++){
               
                html += '        <div class="col-lg-12">';
                html += '          <div class="panel panel-info">';
                html += '               <div class="panel-heading">';
                html += espe.info[i].nombre;
                html += '               </div>';
                html += '               <div class="panel-body">';
                  html += ' <label>Lider: ' + espe.info[i].lider + '</label>';
                for (var j=0; j<espe.info[i].fases.length; j++)
                {

                    html += '                   <div class="panel-group" id="accordion"' + espe.info[i].id +'>';
                    html += '                       <div class="panel panel-default">';
                    html += '                           <div class="panel-heading">';
                    html += '                           <h4 class="panel-title">';
                    html += '                               <a data-toggle="collapse" data-parent="#accordion'+ espe.info[i].id+'" href="#collapseEspe' + espe.info[i].id + '-'+ espe.info[i].fases[j].id + '" aria-expanded="true" class="collapsed"> ' + espe.info[i].fases[j].nombre+ ': '+ espe.info[i].fases[j].peso + '% </a>';
                    html += '                           </h4>';
                    html += '                           </div>';
                    html += '                           <div id="collapseEspe' + espe.info[i].id + '-'+ espe.info[i].fases[j].id + '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">';
                    
                    
                       
                    html += '                               <div class="panel-body">';
                    html += ' <label>Lider: ' + espe.info[i].fases[j].lider + '</label>';
                   //-------------------------------------------------------------------------
               for (var k=0; k<espe.info[i].fases[j].acti.length; k++)
                {
                        html += '  <div class="panel panel-default">';
                      html += '     <div class="panel-heading">';
                      html += '          <h4 class="panel-title">';
                      html += '              <a data-toggle="collapse" data-parent="#accordion '+ 'collapseEspe' + espe.info[i].id + '-'+ espe.info[i].fases[j].id+'" href="#collapseAct' + espe.info[i].id + '-'+ espe.info[i].fases[j].id +'-'+espe.info[i].fases[j].acti[k].id  +'" aria-expanded="false" class="collapsed">'+espe.info[i].fases[j].acti[k].nombre+'</a>';
                      html += '          </h4>';
                      html += '       </div>';
                      html += '    <div id="collapseAct' + espe.info[i].id + '-'+ espe.info[i].fases[j].id +'-'+espe.info[i].fases[j].acti[k].id + '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">';
                      html += '    <div class="panel-body">';
                       html += ' <label>Peso (%): ' + espe.info[i].fases[j].acti[k].peso + '</label><br>';
                       html += ' <label>Tiempo (Días): ' + espe.info[i].fases[j].acti[k].tiempo + '</label>';
                      html += '<ul>';
                      
                      for(var l = 0; l < espe.info[i].fases[j].acti[k].modulos.length; l++ ){
                     
                      html += '<li type="disc">' + espe.info[i].fases[j].acti[k].modulos[l].nombre + '</li>';
                  }
                      html += '</ul>';
                            
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
            
            //alert(html);
            $("#formulas").html(html);
    }
    
    /*function getDivIndicadores(espe){
        
         var html = '<div class="row"> ' +
                 '<div class="col-lg-12"> ' +
                '    <h1 class="page-header">' + espe.nombrep + '</h1> ' +
                '</div> ' +
                '<button type="button" class="btn btn-primary btn-lg" onclick="irA_ip(1)">Ver Informacion General</button>'+
                
           ' </div> ';
   
            html += ' <div id="informacion"> ';
            html += '    <div class="col-lg-12"> <h3>Lider de Proyecto: '+espe.lider+'</h3></div>';
           
            html += '     </div> ';
            html += ' </div>';
            
                        
                       $("#indicadores").html(html);
    }*/
    
    function irA_ip(op){
        
        if(op == 2){
            document.getElementById("indicadores").style.display="block";
            document.getElementById("formulas").style.display="none";
        }else{
            document.getElementById("indicadores").style.display="none";
            document.getElementById("formulas").style.display="block";
        }
    }
</script>

</body>
</html>
