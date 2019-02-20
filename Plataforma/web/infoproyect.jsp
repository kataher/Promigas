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
                        <div id="formulas">
                        </div>

                        <div id="indicadores">
                        </div>
                    </div>

                </div>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <script>
            $(function () {

                var ipdro = <%out.print(request.getParameter("idpro"));%>;
                getInfoProyect(ipdro);

                irA_ip("1");
            });

            function getInfoProyect(idpro) {

                var parametros = {
                    "opcion": 212,
                    "idpro": idpro,
                    "from": "newp"

                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function () {


                    },
                    success: function (data, status, request) {
                        getDivFormulas(data);
                        //getDivIndicadores(data);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        // show_OkDialog($("#error_Dialog_usu"), "Error");
                    },
                    complete: function (data, status, request) {

                    }
                });

            }

            function getDivFormulas(espe) {

                var html = '<div class="col-lg-12"> ' +
                        '    <h1 class="page-header">Proyecto: ' + espe.nombrep + '</h1> ' +
                         '    <h3>Area: ' + espe.darea + '</h3> ' +
                        '</div> ';
                //'<button type="button" class="btn btn-primary btn-lg" onclick="irA_ip(2)">Ver Indicadores</button>';



                html += ' <div id="informacion"> ';
                html += '    <div class="col-lg-12"> <h3>Lider de Proyecto: ' + espe.lider + '</h3></div>';
                for (var i = 0; i < espe.info.length; i++) {

                    html += '        <div class="col-lg-12">';
                    html += '          <div class="panel panel-info">';
                    html += '               <div class="panel-heading">';
                    html += espe.info[i].nombre;
                    html += '               </div>';
                    html += '               <div class="panel-body">';
                    html += ' <label>Lider: ' + espe.info[i].lider + '</label>';
                    for (var j = 0; j < espe.info[i].fases.length; j++)
                    {

                        html += '                   <div class="panel-group" id="accordion"' + espe.info[i].id + '>';
                        html += '                       <div class="panel panel-default">';
                        html += '                           <div class="panel-heading">';
                        html += '                           <h4 class="panel-title">';
                        html += '                               <a data-toggle="collapse" data-parent="#accordion' + espe.info[i].id + '" href="#collapseEspe' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" aria-expanded="true" class="collapsed"> ' + espe.info[i].fases[j].nombre + ': ' + espe.info[i].fases[j].peso + '% </a>';
                        html += '                           </h4>';
                        html += '                           </div>';
                        html += '                           <div id="collapseEspe' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">';



                        html += '                               <div class="panel-body">';
                        html += ' <label>Lider: ' + espe.info[i].fases[j].lider + '</label>';
                        //-------------------------------------------------------------------------
                        for (var k = 0; k < espe.info[i].fases[j].acti.length; k++)
                        {
                            html += '  <div class="panel panel-default">';
                            html += '     <div class="panel-heading">';
                            html += '          <h4 class="panel-title">';
                            html += '              <a data-toggle="collapse" data-parent="#accordion ' + 'collapseEspe' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '" href="#collapseAct' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '-' + espe.info[i].fases[j].acti[k].id + '" aria-expanded="false" class="collapsed">' + espe.info[i].fases[j].acti[k].nombre + '</a>';
                            html += '          </h4>';
                            html += '       </div>';
                            html += '    <div id="collapseAct' + espe.info[i].id + '-' + espe.info[i].fases[j].id + '-' + espe.info[i].fases[j].acti[k].id + '" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">';
                            html += '    <div class="panel-body">';
                            html += ' <label>Peso (%): ' + espe.info[i].fases[j].acti[k].peso + '</label><br>';
                            html += ' <label>Tiempo (Horas): ' + espe.info[i].fases[j].acti[k].tiempo + '</label>';
                            html += '<ul>';

                            for (var l = 0; l < espe.info[i].fases[j].acti[k].modulos.length; l++) {

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

            function irA_ip(op) {

                if (op == 2) {
                    document.getElementById("indicadores").style.display = "block";
                    document.getElementById("formulas").style.display = "none";
                } else {
                    document.getElementById("indicadores").style.display = "none";
                    document.getElementById("formulas").style.display = "block";
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