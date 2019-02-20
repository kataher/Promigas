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
                            <jsp:include page="menu.jsp" />


                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Descripciòn de Fases</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div id="formulas"></div>

                    </div>      


                    <table id="jqGrid"></table>
                    <div id="jqGridPager"></div>
                    <!-- /.col-lg-8 -->

                    <!-- /.col-lg-4 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /#page-wrapper -->

        </div>


        <script>

            $(function () {
                getActividades();
            });
            function getActividades() {

                var parametros = {
                    "opcion": 209,
                    "from": "newp",
                    "id_user":<%=session.getAttribute("idusu")%>,
                    "id_pro":<%=request.getParameter("idpro")%>
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

                        var Aprobado = "";

                        var html = "";
                        for (var i = 0; i < data.registro.length; i++) {
                            //html +="<h2>"+data.registro[i].nombre+"</h2>";
                            for (var j = 0; j < data.registro[i].fases.length; j++) {

                                for (var k = 0; k < data.registro[i].fases[j].acti.length; k++) {

                                    var acti = data.registro[i].fases[j].acti[k];

                                    if (acti.aprobado === "0") {
                                        Aprobado = " - ";
                                    }
                                    if (acti.aprobado === "1") {
                                        Aprobado = "No Aprobado";
                                    }
                                    if (acti.aprobado === "2") {
                                        Aprobado = "Aprobado";
                                    }
                                    if (acti.aprobado === "3") {
                                        Aprobado = "En Espera";
                                    }
                                    var botonGuardar = " ";
                                    if (acti.aprobado === "0" || acti.aprobado === "1") {
                                        //botonGuardar = "<input value='Guardar' class='btn btn-success' onclick='CargarArchivo("+acti.id+")'  />  - " ;
                                        botonGuardar = '<input class="btn btn-success" type="submit" value="Upload" />';
                                    }
                                    if (acti.file !== undefined) {
                                        var str = acti.file;
                                        var res = str.split("\\");
                                        var filename = res[res.length - 1];
                                        var path = str.substring(0, (str.length - (filename.length)));
                                    } else {
                                        var filename = "";
                                        var path = "";
                                    }
                                    html += "<div class='col-lg-4'>" +
                                            "<div class='panel panel-info'>" +
                                            "<div class='panel-heading'>" +
                                            "<strong>" + data.registro[i].fases[j].nombre + "</strong>: " + acti.nombre
                                            + "</div>" +
                                            "<div class='panel-body'>" +
                                            "<form enctype='multipart/form-data' id='formuploadajax" + acti.id + "' name='formuploadajax" + acti.id + "' method='post' action='subir.jsp'>" +
                                            "<div class='form-group'>" +
                                            "<label>Tiempo Asignado (Días): </label> " + acti.tiempo + "<br>" +
                                            "<label>Fecha Inicial: </label> " + acti.fecha_inicio + "<br>" +
                                            "<label>Subir Archivo: </label>" +
                                            //"<input type='file' id='file"+data.registro[i].id+"' name='file"+data.registro[i].id+"' onchange='cargarArchivoF(this,"+data.registro[i].id+")'>"+
                                            "<input type='file' id='file" + acti.id + "' name='file" + acti.id + "'>" +
                                            "<input type='hidden' id='idacti' name='idacti' value='" + acti.id + "' />" +
                                            "<input type='hidden' id='idpro' name='idpro' value='" + parametros.id_pro + "' />" +
                                            "<input type='hidden' id='nome' name='nome' value='" + data.registro[i].nombre + "' />" +
                                            "<input type='hidden' id='nomf' name='nomf' value='" + data.registro[i].fases[j].nombre + "' />" +
                                            "<input type='hidden' id='filename" + acti.id + "' name='filename'" + acti.id + "' value='" + filename + "' />" +
                                            "<input type='hidden' id='path" + acti.id + "' name='path'" + acti.id + "' value='" + path + "' />" +
                                            "</div>" +
                                            "<div class='form-group'>" + botonGuardar + " <a href='#' onclick='BajarArchivo(" + acti.id + "," + acti.id + ")' class='alert-link btn btn-info'>Ver Entrega</a>" +
                                            "</div>" +
                                            "</form>" +
                                            "</div>" +
                                            "<div class='panel-footer'> Estado:  <span class='text-primary'>" + Aprobado + "</span>" +
                                            "</div>" +
                                            "</div>" +
                                            "</div>";
                                }
                            }
                        }
                        $("#formulas").html(html);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        // show_OkDialog($("#error_Dialog_usu"), "Error");
                    },
                    complete: function (data, status, request) {

                    }
                });

            }
            function cargarFormula(url, urlM) {

                var parametros = {
                    "urlM": urlM

                };
                $.ajax({
                    data: parametros,
                    url: url,
                    type: 'post',
                    beforeSend: function () {
                        $("#formulas").html("Procesando, espere por favor...");
                    },
                    success: function (response) {
                        $("#formulas").html(response);
                    }, error: function (xhr, ajaxOptions, thrownError) {
                        alert(xhr.status);
                        alert(thrownError);
                    }
                });
            }


            function CargarArchivo(id) {

                var parametros = {
                    "opcion": '210',
                    "idpro": id,
                    "file": $("#file" + id).val(),
                    "nombre": $("#nombre" + id).val(),
                    "from": "newp"
                };


                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function () {

                    },
                    success: function (data, status, request) {

                    }, error: function (xhr, ajaxOptions, thrownError) {
                        alert(xhr.status);
                        alert(thrownError);
                    }, complete: function () {
                        getActividades();
                    }
                });

            }
            function BajarArchivo(file, path) {
                file = document.getElementById("filename" + file).value;
                path = document.getElementById("path" + path).value;

                //alert(file);
                //alert(path);
                //alert(file+" "+path);
                if (file !== "") {
                    var a = document.createElement("a");
                    a.target = "_blank";
                    a.href = "bajar.jsp?filename=" + file + "&path=" + path;
                    a.click();
                } else {
                    alert("Aun no se ha guardado este informe");
                }
            }
        </script>

    </body>

</html>
