<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="../includehead2.html" %>
        <link rel="stylesheet" href="css/user-profiles-list-basic.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    </head>



    <body>
        <!-- CREACION DE USUARIO -->
        <div class="modal fade" id="modalNuevoUsuario" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Nuevo Usuario</h4>
                    </div>
                    <div class="modal-body">
                        <label>Nombre</label>
                        <input type="text" class="form-control" id="nombrenew_usu">
                        <div>
                            <label>Roles</label>
                            <div id="rolesNuevo">

                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" id="cerrarAddBtn_usu">Close</button>
                        <button type="button" class="btn btn-primary" onClick="adduser_usu()">Crear</button>
                    </div>
                </div>

            </div> 
        </div>
        <!-- FIN DE CREACION DE USUARIO-->

        <!-- EDICION DE USUARIO -->
        <div class="modal fade" id="modalEditarUsuario" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Editar Usuario</h4>
                    </div>
                    <div class="modal-body">
                        <label>Nombre</label>
                        <input type="text" class="form-control" id="nombreedit_usu">
                        <input type="hidden" class="form-control" id="idedit_usu">
                        <div>
                            <label>Roles</label>
                            <div id="rolesEditar">

                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" id="cerrarEditBtn_usu">Close</button>
                        <button type="button" class="btn btn-primary" onClick="edit_usu()">Editar</button>
                    </div>
                </div>

            </div> 
        </div>
        <!-- FIN DE EDICION DE USUARIO-->

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
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <!-- Fin lista de usuarios-->
        </div>

        <div class ="row">
            <div class="col-lg-12">
                <h1>Roles</h1>
            </div>
        </div>
        <div class="row">
            <!-- Lista de roles -->
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

            var table_usu, table_roles, sw = false;

            $(document).ready(function () {
                loadRoles();
                loadTable_usu();

                $("#nuevoUsuarioBtn_usu").click(function () {
                    $("#modalNuevoUsuario").modal();
                });

            });

            function loadRoles() {

                var parametros = {
                    "from": "rol",
                    "opcion": "306"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
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
                var st = "Modules/manager.jsp?opcion=307&name=" + name;

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

                table_roles.one('xhr', function (e, settings, json) {
                    if (json.data.length == 0) {
                        alert("No existen roles asignados al usuario");
                    }
                });

                sw = true;
            }

            function loadTable_usu() {

                table_usu = $('#dataTableUsuarios').DataTable({
                    "ajax": "Modules/manager.jsp?opcion=300",
                    "columns": [
                        {"data": "id"},
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
                        
                        $("#nombreedit_usu").val(nombre);
                        $("#idedit_usu").val(id);
                        $("#rolesEditar :checkbox").prop('checked', false);
                        $("#modalEditarUsuario").modal();
                        
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
                    url: "Modules/manager.jsp",
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
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async: false,
                        beforeSend: function () {
                            block("Guardando...");
                        },
                        success: function (data, status, request) {
                            table_usu.row.add({
                                "id": data.row[0].id,
                                "name": data.row[0].name}).draw(false);
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
                        url: "Modules/manager.jsp",
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
                            
                            if(sw == true){
                                table_roles.clear().draw();
                            }
                            
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
                                url: "Modules/manager.jsp",
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


    </body>
</html>