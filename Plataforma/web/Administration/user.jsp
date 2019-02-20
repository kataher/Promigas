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
        String idusu = session.getAttribute("roles").toString();
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
                                <h1 class="page-header">Modulo de Usuarios</h1>
                            </div>
                            <!--botones-->
                            <div class="col-lg-12">
                                <div class="col-md-2">
                                    <button type="button" id="nuevoUsuarioBtn_usu" class="btn btn-primary btn-block" data-toggle="modal">Crear Usuario</button>                                
                                </div>
                                <div class="col-md-2">
                                    <button type="button" id="verRolesBtn_usu" class="btn btn-danger btn-block">Ver Roles</button></div>
                                <div class="col-md-2">
                                    <button type="button" id="editarUsuarioBtn_usu" data-toggle="modal" class="btn btn-success btn-block">Editar</button>
                                </div>
                                <div class="col-md-2">
                                    <button type="button" id="deleteBtn_usu" class="btn btn-danger btn-block">Eliminar</button>
                                </div>
                            </div>
                            <!--fin botones-->
                        </div>

                        <br>

                        <div class="row">
                            <!-- Lista de usuarios -->
                            <div class="col-lg-12">
                                <table id="dataTableUsuarios" class="display" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Código</th>
                                            <th>Nombre</th>
                                            <th>Usuario</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Código</th>
                                            <th>Nombre</th>
                                            <th>Usuario</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- Fin lista de usuarios-->
                        </div>
                        <div class="row">

                            <div class="col-lg-12">
                                <h1>Roles</h1>
                            </div>


                            <!-- Lista de roles -->

                            <div class="col-lg-12">
                                <div class="col-md-2">
                                    <button type="button" id="verAreasBtn_usu" class="btn btn-primary btn-block">Ver Areas</button>                                
                                </div>
                            </div>


                            <div class="col-lg-12">
                                <table id="dataTableRoles" class="display" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Código</th>
                                            <th>Nombre</th>
                                            <th>Descripción</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Código</th>
                                            <th>Nombre</th>
                                            <th>Descripción</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            <!-- Fin lista de roles-->

                        </div>
                        <div class ="row">
                            <div class="col-lg-12">
                                <h1>Areas</h1>
                            </div>
                            <div class="col-lg-12">
                                <table id="dataTableAreas" class="display" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Descripción</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Descripción</th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <div id="load_Dialog_erf" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_erf" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_erf" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_erf" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_erf" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <script>
                            var table_usu, table_roles, sw = false, useredit, swareas = false, table_areas;
                            $(document).ready(function () {
                                loadRoles();
                                loadTable_usu();
                                $("#nuevoUsuarioBtn_usu").click(function () {
                                    //$("#modalNuevoUsuario").modal();
                                    window.location = "/Plataforma/Administration/usernew.jsp";
                                });

                            });
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
                                        type='checkbox' name='" + data.data[i].nombre + "' value='" + data.data[i].id + "'>" + data.data[i].nombre + "</label>\n\
                                        </div>";
                                            }
                                            $("#rolesNuevo").html(html);
                                            $("#rolesEditar").html(html);
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
                            function loadTable_roles(name) {
                                if (sw == true) {
                                    table_roles.destroy();
                                }
                                var st = "../Modules/manager.jsp?opcion=307&name=" + name;
                                table_roles = $('#dataTableRoles').DataTable({
                                    "ajax": st,
                                    "columns": [
                                        {"data": "id"},
                                        {"data": "name"},
                                        {"data": "descripcion"}
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

                                $('#dataTableRoles tbody').on('click', 'tr', function () {
                                    if ($(this).hasClass('selected')) {
                                        $(this).removeClass('selected');
                                    } else {
                                        table_roles.$('tr.selected').removeClass('selected');
                                        $(this).addClass('selected');
                                    }
                                });

                                $('#verAreasBtn_usu').click(function () {
                                    if (table_roles.rows('.selected').data()[0] !== undefined) {
                                        var usersel = table_usu.rows('.selected').data()[0].name;
                                        loadTable_areas(usersel);
                                    } else {
                                        alert("Debe seleccionar un usuario");
                                    }
                                });


                                table_roles.one('xhr', function (e, settings, json) {
                                    if (json.data.length == 0) {
                                        alert("No existen roles asignados al usuario");
                                    }
                                });
                                sw = true;
                            }

                            function loadTable_areas(name) {
                                if (swareas == true) {
                                    table_areas.destroy();
                                }
                                var st = "../Modules/manager.jsp?opcion=309&name=" + name;
                                table_areas = $('#dataTableAreas').DataTable({
                                    "ajax": st,
                                    "columns": [
                                        {"data": "name"},
                                        {"data": "descripcion"}
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

                                table_areas.one('xhr', function (e, settings, json) {
                                    if (json.data.length == 0) {
                                        alert("No existen roles asignados al usuario");
                                    }
                                });
                                swareas = true;
                            }


                            function loadTable_usu() {
                                table_usu = $('#dataTableUsuarios').DataTable({
                                    "ajax": "../Modules/manager.jsp?opcion=300",
                                    "columns": [
                                        {"data": "id"},
                                        {"data": "fullname"},
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
                                $('#dataTableUsuarios tbody').on('click', 'tr', function () {
                                    if ($(this).hasClass('selected')) {
                                        $(this).removeClass('selected');
                                    } else {
                                        table_usu.$('tr.selected').removeClass('selected');
                                        $(this).addClass('selected');
                                    }
                                });
                                $('#editarUsuarioBtn_usu').click(function () {
                                    if (table_usu.rows('.selected').data()[0] !== undefined) {
                                        var id = table_usu.rows('.selected').data()[0].id;
                                        var nombre = table_usu.rows('.selected').data()[0].name;

                                        window.location = "/Plataforma/Administration/useredit.jsp?idusu=" + id + "&user=" + nombre;

                                        getRolesFn_usu(nombre);
                                    } else {
                                        alert("Debe seleccionar un usuario");
                                    }
                                });
                                $('#deleteBtn_usu').click(function () {
                                    if (table_usu.rows('.selected').data()[0] !== undefined) {
                                        var id = table_usu.rows('.selected').data()[0].id;
                                        delete_usu(id);
                                    }
                                });
                                $('#verRolesBtn_usu').click(function () {
                                    if (table_usu.rows('.selected').data()[0] !== undefined) {
                                        var name = table_usu.rows('.selected').data()[0].name;
                                        loadTable_roles(name);
                                    } else {
                                        alert("Debe seleccionar un usuario");
                                    }
                                });
                            }
                            function getRolesFn_usu(user) {
                                var parametros = {
                                    "name": user,
                                    "opcion": 307
                                };
                                $.ajax({
                                    type: "POST",
                                    url: "../Modules/manager.jsp",
                                    data: parametros,
                                    dataType: 'json',
                                    beforeSend: function () {
                                        block("Consultando roles...");
                                    },
                                    success: function (data, status, request) {
                                        //Check 
                                        if (data !== null) {
                                            for (var i = 0; i < data.data.length; i++) {
                                                $("#rolesEditar input[value='" + data.data[i].idrol + "']").prop('checked', true);
                                            }
                                        }
                                    },
                                    error: function (xhr, ajaxOptions, err) {
                                        show_OkDialog($("#error_Dialog_usu"), err);
                                    },
                                    complete: function () {
                                        unBlock();
                                    }
                                });
                            }
                            function adduser_usu() {
                                //roles
                                var stRoles = "";
                                $("#rolesNuevo :checkbox").each(function ()
                                {
                                    if ($(this).is(":checked")) {
                                        stRoles += this.value + ",";
                                    }
                                });
                                var parametros = {
                                    "nombre": $("#nombrenew_usu").val(),
                                    "alias": $("#alias_usu").val(),
                                    "roles": stRoles,
                                    "opcion": 303,
                                    "from": "usu"
                                };
                                var isOk = validate(parametros);
                                if (isOk === false) {
                                    alert("Debe diligenciar todos los datos del nuevo usuario");
                                } else {
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
                                            table_usu.row.add({
                                                "id": data.row[0].id,
                                                "fullname": data.row[0].fullname,
                                                "name": data.row[0].name
                                            }).draw(false);
                                            $('.modal-backdrop').remove();
                                            $('#cerrarAddBtn_usu').click();
                                            $("#nombrenew_usu").val("");
                                            show_OkDialog($("#save_Dialog_usu"), "Satisfactory process");
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

                            function delete_usu(iduser) {
                                var parametros = {
                                    "opcion": 302,
                                    "id_user": iduser,
                                    "from": "usu"
                                };
                                $("#dialog-confirm_usu").dialog({
                                    resizable: false,
                                    height: "auto",
                                    width: 400,
                                    modal: true,
                                    buttons: {
                                        "Eliminar": function () {
                                            $.ajax({
                                                type: "POST",
                                                url: "../Modules/manager.jsp",
                                                data: parametros,
                                                dataType: 'json',
                                                async: false,
                                                success: function (response) {
                                                    table_usu.row('.selected').remove().draw(false);
                                                    show_OkDialog($("#save_Dialog_usu"), "Satisfactory process");
                                                },
                                                error: function (xhr, ajaxOptions, err) {
                                                    show_OkDialog($("#error_Dialog_usu"), err);
                                                }
                                            });
                                            $(this).dialog("close");
                                        },
                                        Cancelar: function () {
                                            $(this).dialog("close");
                                        }
                                    }
                                });
                            }
                        </script>

                        <div id="load_Dialog_usu" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_usu" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_usu" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="dialog-confirm_usu" title="Eliminar Uduario" style='display:none;'>
                            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                                Esta seguro que desea eliminar el usuario de  manera permanente?
                            </p>
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