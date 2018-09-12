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
    </head>

    <body>
        <div class="col-lg-12">
            <h1 class="page-header">Modulo de Especialidades</h1>
        </div>
        <hr>

        <!-- Modal Agregar -->

        <div class="modal fade" id="modalNuevaEspecialidad" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Nueva Especialidad</h4>
                    </div>
                    <div class="modal-body">
                        <label>Nombre</label>
                        <input type="text" class="form-control" id="nombrenew_esp">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" onClick="addespe_esp()">Crear</button>
                    </div>
                </div>

            </div> 
        </div>

        <!-- Fin Modal Agregar -->
        
        
        <!-- Modal Editar-->        
        <div class="modal fade" id="modalEditarEspecialidad" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Editar Especialidad</h4>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" id="idedit_esp" name="idedit_esp"> 
                        <label>Nombre</label>                        
                        <input type="text" class="form-control" id="nombreedit_esp">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" onClick="edit_esp()">Editar</button>
                    </div>
                </div>

            </div> 
        </div>
        <!-- Fin Modal Editar-->


        <div class="col-lg-12">
            <table id="dataTableEspecialidades" class="display" cellspacing="0" width="100%">
                <thead>
                    <tr>
                        <th>Còdigo</th>
                        <th>Nombre</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th>Còdigo</th>
                        <th>Nombre</th>
                    </tr>
                </tfoot>
            </table>
            <div class="col-lg-12">
                <div class="col-md-2">
                    <button type="button" id="nuevaBtn_esp" data-toggle="modal" class="btn btn-primary btn-block">Crear</button>
                </div>

                <div class="col-md-2">
                    <button type="button" id="editarBtn_esp" data-toggle="modal" class="btn btn-success btn-block">Editar</button>
                </div>
                <div class="col-md-2">
                    <button type="button" id="deleteBtn_esp" class="btn btn-danger btn-block">Eliminar</button>
                </div>
            </div>
        </div>

        <div id="load_Dialog_esp" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_esp" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_esp" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="dialog-confirm_esp" title="Eliminar Especialidad" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                Esta seguro que desea eliminar esta especialidad de manera permanente?
            </p>
        </div>





        <script>

            var table_esp;

            $(document).ready(function () {

                $("#nuevaBtn_esp").click(function () {
                    $("#modalNuevaEspecialidad").modal();
                });
                
                $("#editarBtn_esp").click(function () {
                    $("#modalEditarEspecialidad").modal();
                });

                loadTable_esp();
            });


            function addespe_esp() {

                var parametros = {
                    "nombre": $("#nombrenew_esp").val(),
                    "opcion": 333,
                    "from": "esp"

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
                            table_esp.row.add({
                                "id": data.row[0].id,
                                "nombre": data.row[0].nombre}).draw(false);
                            $('.modal-backdrop').remove();
                            $('#cerrarAddtBtn_esp').click();
                            $("#nombrenew_esp").val("");
                            show_OkDialog($("#save_Dialog_esp"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_esp"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function edit_esp() {

                var parametros = {
                    "nombre": $("#nombreedit_esp").val(),
                    "opcion": 331,
                    "id": $("#idedit_esp").val(),
                    "from": "esp"

                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("Debe diligenciar todos los datos del usuario");
                } else {
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async: false,
                        success: function (response) {
                            $('.modal-backdrop').remove();
                            $('#cerrarEditBtn_esp').click();
                            table_esp.destroy();
                            $("#dataTableEspecialidades").html("");
                            loadTable_esp();
                            show_OkDialog($("#save_Dialog_esp"), "Satisfactory process");
                            $("#nombreedit_esp").val("");
                            $("#idedit_esp").val("");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_esp"), "Error");
                        }
                    });
                }


            }

            function delete_esp(idespe) {

                var parametros = {
                    "opcion": 332,
                    "id": idespe,
                    "from": "esp"
                };

                $("#dialog-confirm_esp").dialog({
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
                                    table_esp.row('.selected').remove().draw(false);
                                    show_OkDialog($("#save_Dialog_esp"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_esp"), "Error");
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

            function loadTable_esp() {

                table_esp = $('#dataTableEspecialidades').DataTable({
                    "ajax": "Modules/manager.jsp?opcion=330",
                    "columns": [
                        {"data": "id"},
                        {"data": "nombre"}
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

                $('#dataTableEspecialidades tbody').on('click', 'tr', function () {
                    if ($(this).hasClass('selected')) {
                        $(this).removeClass('selected');
                    } else {
                        table_esp.$('tr.selected').removeClass('selected');
                        $(this).addClass('selected');
                    }
                });

                $('#editarBtn_esp').click(function () {

                    if (table_esp.rows('.selected').data()[0] !== undefined) {
                        var id = table_esp.rows('.selected').data()[0].id;
                        var nombre = table_esp.rows('.selected').data()[0].nombre;

                        $("#nombreedit_esp").val(nombre);
                        $("#idedit_esp").val(id);
                    }
                });

                $('#deleteBtn_esp').click(function () {
                    if (table_esp.rows('.selected').data()[0] !== undefined) {
                        var id = table_esp.rows('.selected').data()[0].id;
                        delete_esp(id);
                    }
                });
            }


        </script>




    </body>
</html>