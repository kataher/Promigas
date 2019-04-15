<%-- 
    Document   : home
    Created on : 26/09/2018, 02:21:47 PM
    Author     : alberb
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<%

    session = request.getSession();
    if (session.getAttribute("roles") != null) {
        String roles = session.getAttribute("roles").toString();
        if (roles.contains("-1-") || roles.contains("-2-") || roles.contains("-3-")) {
%>
<!DOCTYPE html>

<html lang="en">
    <head>  
        <%@include file="includehead.html" %>
    </head>
    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <jsp:include page="allmenu.jsp"/>

            <div id="page-wrapper">
                <div class="row">
                    <div id="content">
                        <div id="formulas"></div>
                    </div>
                </div>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

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

        var html = '<div id="page-wrapper"><div class="row"><div class="col-lg-12">'+
                   '<h1 class="page-header">'+proy.nombrep+'</h1>'  + 
                   '<h2>'+proy.darea+'</h2>'  + 
                   '</div></div> '+
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


<%} else {
%>
<script type="text/javascript">
    window.location = "/Plataforma/error.jsp";
</script>
<%
    }
} else {
%>
<script type="text/javascript">
    window.location = "/Plataforma/index.jsp";
</script>
<%
    }
%>