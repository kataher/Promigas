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
        if (roles.contains("-1")) {
%>
<!DOCTYPE html>

<html lang="en">
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::PROMIGAS::</title>  
        <script src="../js/jquery.js" type="text/JavaScript" ></script>
        <script src="../js/jquery-ui/jquery-ui.js"></script>
        <script src="../js/jquery-ui/external/blockui/jquery-blockui.js"></script>
        <script src="../js/functions/formulasK.js"></script>
        <script src="../js/functions/formulasM.js"></script>
        <script src="../js/functions/functions.js"></script>
        <script src="../js/jspdf/jspdf.min.js" type="text/JavaScript" > </script>
        <script src="../js/jspdf/autotable.min.js" type="text/JavaScript" > </script>
        <script src="../bower_components/morrisjs/morris.js"></script>
        <script src="../dist/js/sb-admin-2.js"></script>
        <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../bower_components/raphael/raphael-min.js"></script>
        <script src="../js/dataTables/jquery.dataTables.js" type="text/javascript"></script>
        <link rel="stylesheet" href="../js/jquery-ui/jquery-ui.css">
        <link rel="stylesheet" href="../bower_components/morrisjs/morris.css">
        <link rel="stylesheet" href="../bower_components/bootstrap/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../bower_components/metisMenu/dist/metisMenu.min.css" />
        <link rel="stylesheet" href="../dist/css/timeline.css" >
        <link rel="stylesheet" href="../dist/css/sb-admin-2.css" >
        <link rel="stylesheet" href="../bower_components/font-awesome/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="../css/dataTables/jquery.dataTables.min.css" type="text/css">
        <link rel="stylesheet" href="../css/user-profiles-list-basic.css">
        <link rel="stylesheet" href="../css/menu.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.1/css/select.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
    </head>
    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <jsp:include page="../allmenu.jsp"/>

            <div id="page-wrapper">
                <div class="row">
                    <div id="content">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="col-lg-12">
                                    <label>Nombre</label>
                                    <input type="text" class="form-control" id="nombrenew_usu">
                                    <label>Alias</label>
                                    <input type="text" class="form-control" id="alias_usu">
                                </div>
                                <div class="col-lg-12">
                                    <div class="col-lg-6">
                                        <label>Roles</label>
                                        <div id="rolesNuevo">

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <label>Areas</label>
                                        <div id="areasNuevo">

                                        </div>
                                    </div>
                                </div>

                                <!--fin botones-->
                            </div>
                            <div class="col-lg-12">
                                <div class="col-md-2">
                                    <button type="button" id="crearUsuario_nusu" class="btn btn-primary btn-block" onclick="adduser_nusu()" >Crear Usuario</button>                                
                                </div>
                            </div>
                        </div>




                        <script>
                            var table_usu, table_roles, sw = false;
                            $(document).ready(function () {
                                loadRoles();
                                loadAreas();
                            });

                            function loadAreas() {
                                var parametros = {
                                    "from": "rol",
                                    "opcion": "340"
                                };
                                $.ajax({
                                    type: "POST",
                                    url: "../Modules/manager.jsp",
                                    data: parametros,
                                    async: false,
                                    dataType: 'json',
                                    beforeSend: function (xhr) {
                                        block("Cargando...");
                                    },
                                    success: function (data, status, request) {
                                        var html = "";
                                        if (data !== null) {
                                            for (var i = 0; i < data.data.length; i++) {
                                                html += "<div class='checkbox'> <label><input \n\
                                        type='checkbox' id='area" + data.data[i].id + "' name='area" + data.data[i].id + "' value='" + data.data[i].id + "' disabled >" + data.data[i].descripcion + "</label>\n\
                                        </div>";
                                            }
                                            $("#areasNuevo").html(html);

                                        }
                                    },
                                    error: function (xhr, ajaxOptions, err) {
                                        show_OkDialog($("#error_Dialog_ahp"), "Error");
                                    },
                                    complete: function () {
                                        unBlock();
                                    }
                                });
                            }

                            function loadRoles() {
                                var parametros = {
                                    "from": "rol",
                                    "opcion": "306"
                                };
                                $.ajax({
                                    type: "POST",
                                    url: "../Modules/manager.jsp",
                                    data: parametros,
                                    async: false,
                                    dataType: 'json',
                                    beforeSend: function (xhr) {
                                        block("Cargando...");
                                    },
                                    success: function (data, status, request) {
                                        var html = "";
                                        if (data !== null) {
                                            for (var i = 0; i < data.data.length; i++) {
                                                html += "<div class='checkbox'> <label><input \n\
                                        type='checkbox' id='rol" + data.data[i].id + "' name='rol" + data.data[i].id + "' value='" + data.data[i].id + "'>" + data.data[i].nombre + "</label>\n\
                                        </div>";
                                            }

                                            $("#rolesNuevo").html(html);

                                            $('#rol2').click(function () {
                                                if ($(this).is(':checked')) {

                                                    $("input:checkbox[name^='area']").removeAttr("disabled");

                                                } else {
                                                    $("input:checkbox[name^='area']").attr("disabled", true);
                                                    $("input:checkbox[name^='area']").prop("checked", false);
                                                }
                                            });


                                        }
                                    },
                                    error: function (xhr, ajaxOptions, err) {
                                        show_OkDialog($("#error_Dialog_ahp"), "Error");
                                    },
                                    complete: function () {
                                        unBlock();
                                    }
                                });
                            }


                            function adduser_nusu() {
                                //roles
                                var stRoles = "";
                                $("#rolesNuevo :checkbox").each(function ()
                                {
                                    if ($(this).is(":checked")) {
                                        stRoles += this.value + ",";
                                    }
                                });
                                
                                var stAreas = "";
                                $("#areasNuevo :checkbox").each(function ()
                                {
                                    if ($(this).is(":checked")) {
                                        stAreas += this.value + ",";
                                    }
                                });
                                var parametros = {
                                    "nombre": $("#nombrenew_usu").val(),
                                    "alias": $("#alias_usu").val(),
                                    "roles": stRoles,
                                    "areas": "stAreas",
                                    "opcion": 303,
                                    "from": "usu"
                                };
                                
                                var isOk = validate(parametros);
                                if (isOk === false) {
                                    alert("Debe diligenciar todos los datos del nuevo usuario");
                                } else {
                                    parametros.areas = stAreas;
                                    $.ajax({
                                        type: "POST",
                                        url: "../Modules/manager.jsp",
                                        data: parametros,
                                        dataType: 'json',
                                        async: false,
                                        beforeSend: function () {
                                            block("Guardando...");
                                        },
                                        success: function (data, status, request) {
                                            window.location = "/Plataforma/Administration/user.jsp";
                                        },
                                        error: function (xhr, ajaxOptions, err) {
                                            show_OkDialog($("#error_Dialog_usu"), err);
                                        },
                                        complete: function () {
                                            $(":checkbox").removeAttr('checked');
                                            unBlock();
                                        }
                                    });
                                }
                            }
                            function edit_usu() {

                                //roles
                                var stRoles = "";
                                $("#rolesEditar :checkbox").each(function ()
                                {
                                    if ($(this).is(":checked")) {
                                        stRoles += this.value + ",";
                                    }
                                });

                                var parametros = {
                                    "nombre": $("#nombreedit_usu").val(),
                                    "opcion": 301,
                                    "roles": "1",
                                    "id_user": $("#idedit_usu").val(),
                                    "from": "usu"
                                };
                                var isOk = validate(parametros);
                                if (isOk === false) {
                                    alert("Debe diligenciar todos los datos del usuario");
                                } else {

                                    parametros.roles = stRoles;
                                    $.ajax({
                                        type: "POST",
                                        url: "../Modules/manager.jsp",
                                        data: parametros,
                                        beforeSend: function () {
                                            block("Guardando...");
                                        },
                                        success: function (response) {
                                            $('.modal-backdrop').remove();
                                            $('#cerrarEditBtn_usu').click();

                                            show_OkDialog($("#save_Dialog_usu"), "Satisfactory process");
                                            $("#nombreedit_usu").val("");
                                            $("#idedit_usu").val("");

                                            table_usu.ajax.reload();
                                        },
                                        error: function (xhr, ajaxOptions, err) {
                                            show_OkDialog($("#error_Dialog_usu"), err);
                                        },
                                        complete: function () {

                                            if (sw == true) {
                                                table_roles.clear().draw();
                                            }

                                            unBlock();
                                        }
                                    });
                                }
                            }

                        </script>



                        <div id="save_Dialog_usu" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_usu" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>
                    </div>
                </div>


            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->
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