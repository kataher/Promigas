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
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">Proyectos</h1>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-md-2">
                                    <button type="button" id="config_pro" class="btn btn-primary btn-block" onclick="goConfiguracion_pro()" >Configuración</button>                                
                                </div>
                                <div class="col-md-2">
                                    <button type="button" id="seguimiento_pro" class="btn btn-danger btn-block">Seguimiento</button>
                                </div>
                            </div>
                        </div>
                        <br>

                        <div class="row">
                            <!-- Lista de proyectos -->
                            <div class="col-lg-12">
                                <table id="dataTableProyectos" class="display" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Código</th>
                                            <th>Nombre</th>
                                            <th>Flag</th>
                                            <th>Creador Por</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Código</th>
                                            <th>Nombre</th>
                                            <th>Lider</th>
                                            <th>Lider1</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- Fin lista de proyectos-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <script>
            var table_pro;
            $(document).ready(function () {
                loadProyectos_pro();
            });

            function goConfiguracion_pro() {


            }

            function loadProyectos_pro() {
                table_pro = $('#dataTableProyectos').DataTable({
                    "ajax": "/Plataforma/Modules/manager.jsp?opcion=219&from=newp",
                    "columns": [
                        {"data": "id"},
                        {"data": "proname"},
                        {"data": "flag"},
                        {"data": "name"}
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
                });
                $('#dataTableProyectos tbody').on('click', 'tr', function () {
                    if ($(this).hasClass('selected')) {
                        $(this).removeClass('selected');
                    } else {
                        table_pro.$('tr.selected').removeClass('selected');
                        $(this).addClass('selected');
                    }
                });

                $('#config_pro').click(function () {
                    if (table_pro.rows('.selected').data()[0] !== undefined) {
                        var idpro = table_pro.rows('.selected').data()[0].id;
                        var flag = table_pro.rows('.selected').data()[0].flag;
                        if(flag == "1"){
                            window.location = "/Plataforma/infoproyect.jsp?idpro=" + idpro;
                        }else{
                            window.location = "/Plataforma/createproject.jsp"+"?idpro="+idpro;
                        }
                        
                        
                    } else {
                        alert("Debe seleccionar un proyecto");
                    }
                });
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