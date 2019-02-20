<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
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
                                <h1 class="page-header">Modulo de Fases</h1>
                            </div>
                            <div class="col-lg-12">
                                <div class="col-lg-2">
                                    <button type="button" class="btn btn-primary btn-block" id="nuevaBtn_fas">Crear Fase</button>                
                                </div>
                                <div class="col-md-2">
                                    <button type="button" id="editarBtn_fas" class="btn btn-success btn-block" id="editarBtn_fas">Editar</button>
                                </div>
                                <div class="col-md-2">
                                    <button type="button" id="deleteBtn_fas" class="btn btn-danger btn-block">Eliminar</button>
                                </div>
                            </div>
                        </div>
                        <br>
                        <!-- MODAL PARA CREAR fases-->
                        <div class="modal fade" id="modalNuevaFase" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">Crear Fase</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Nombre</label>
                                                <input type="text" class="form-control" id="nombrenew_fas">
                                            </div>

                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal" id="cerrarAddtBtn_fas">Cerrar</button>
                                        <button type="button" class="btn btn-primary" id="addfase_fas" onclick="addfase_fas()">Crear Fase</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- FIN DE CREACION DE Fases-->

                        <!-- Edicion DE Fases-->
                        <div class="modal fade" id="modalEditarFase"  tabindex="-1" role="dialog" aria-labelledby="myModalLabelEdit">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabelEdit">Editar Fase</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="form-group">
                                                <input type="hidden" id="idedit_fas" name="idedit_fas"> 
                                                <label>Nombre</label>
                                                <input type="text" class="form-control" id="nombreedit_fas">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal" id="cerrarEditBtn_fas">Cerrar</button> 
                                        <button type="button" class="btn btn-primary" onclick="edit_fas()">Editar Fase</button>
                                    </div> 
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <table id="dataTableFases" class="display" cellspacing="0" width="100%">
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

                            var table_fas = null;

                            $(document).ready(function () {

                                $("#nuevaBtn_fas").click(function () {
                                    $("#modalNuevaFase").modal();
                                });

                                $("#editarBtn_fas").click(function () {
                                    $("#modalEditarFase").modal();
                                });

                                loadTable_fas();
                            });

                            function addfase_fas() {

                                var parametros = {
                                    "nombre": $("#nombrenew_fas").val(),
                                    "opcion": 323,
                                    "from": "fas"

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
                                            table_fas.row.add({
                                                "id": data.row[0].id,
                                                "nombre": data.row[0].nombre}).draw(false);
                                            $('.modal-backdrop').remove();
                                            $('#cerrarAddtBtn_fas').click();
                                            $("#nombrenew_fas").val("");
                                            show_OkDialog($("#save_Dialog_fas"), "Satisfactory process");
                                        },
                                        error: function (xhr, ajaxOptions, err) {
                                            alert(err);
                                            show_OkDialog($("#error_Dialog_fas"), "Error");
                                        },
                                        complete: function () {
                                            unBlock();
                                        }
                                    });
                                }
                            }

                            function edit_fas() {

                                var parametros = {
                                    "nombre": $("#nombreedit_fas").val(),
                                    "opcion": 321,
                                    "id": $("#idedit_fas").val(),
                                    "from": "fas"

                                };

                                var isOk = validate(parametros);

                                if (isOk === false) {
                                    alert("Debe diligenciar todos los datos del usuario");
                                } else {
                                    $.ajax({
                                        type: "POST",
                                        url: "../Modules/manager.jsp",
                                        data: parametros,
                                        dataType: 'json',
                                        async: false,
                                        success: function (response) {
                                            $('.modal-backdrop').remove();
                                            $('#cerrarEditBtn_fas').click();
                                            table_fas.ajax.reload();
                                            show_OkDialog($("#save_Dialog_fas"), "Satisfactory process");
                                            $("#nombreedit_fas").val("");
                                            $("#idedit_fas").val("");
                                        },
                                        error: function (xhr, ajaxOptions, err) {
                                            show_OkDialog($("#error_Dialog_fas"), "Error");
                                        }
                                    });
                                }


                            }

                            function delete_fas(idfase) {

                                var parametros = {
                                    "opcion": 322,
                                    "id": idfase,
                                    "from": "fas"
                                };


                                $("#dialog-confirm_fas").dialog({
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
                                                    table_fas.row('.selected').remove().draw(false);
                                                    show_OkDialog($("#save_Dialog_fas"), "Satisfactory process");
                                                },
                                                error: function (xhr, ajaxOptions, err) {
                                                    alert(err);
                                                    show_OkDialog($("#error_Dialog_fas"), "Error");
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

                            function loadTable_fas() {

                                table_fas = $('#dataTableFases').DataTable({
                                    "ajax": "../Modules/manager.jsp?opcion=320",
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

                                $('#dataTableFases tbody').on('click', 'tr', function () {
                                    if ($(this).hasClass('selected')) {
                                        $(this).removeClass('selected');
                                    } else {
                                        table_fas.$('tr.selected').removeClass('selected');
                                        $(this).addClass('selected');
                                    }
                                });

                                $('#editarBtn_fas').click(function () {

                                    if (table_fas.rows('.selected').data()[0] !== undefined) {
                                        var id = table_fas.rows('.selected').data()[0].id;
                                        var nombre = table_fas.rows('.selected').data()[0].nombre;

                                        $("#nombreedit_fas").val(nombre);
                                        $("#idedit_fas").val(id);
                                    } else {
                                        alert("Debe seleccionar una fase");
                                    }
                                });

                                $('#deleteBtn_fas').click(function () {
                                    if (table_fas.rows('.selected').data()[0] !== undefined) {
                                        var id = table_fas.rows('.selected').data()[0].id;
                                        delete_fas(id);
                                    }
                                });
                            }
                        </script>

                        <div id="load_Dialog_fas" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_fas" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_fas" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="dialog-confirm_fas" title="Eliminar Fase" style='display:none;'>
                            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                                Esta seguro que desea eliminar esta fase de manera permanente?
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
