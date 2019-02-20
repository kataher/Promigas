<%-- 
    Document   : home
    Created on : 26/09/2018, 02:21:47 PM
    Author     : alberb
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
                <div id="content">
                <div class="row">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Modulo de Areas</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="col-lg-2">
                                <button type="button" class="btn btn-primary btn-block" id="nuevaBtn_are">Crear Area</button>                
                            </div>
                            <div class="col-md-2">
                                <button type="button" id="editarBtn_are" class="btn btn-success btn-block" id="editarBtn_are">Editar</button>
                            </div>
                            <div class="col-md-2">
                                <button type="button" id="deleteBtn_are" class="btn btn-danger btn-block">Eliminar</button>
                            </div>
                        </div>
                    </div>
                    <br>
                    <!-- MODAL PARA CREAR fases-->
                    <div class="modal fade" id="modalNuevaArea" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">Crear Area</h4>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Nombre</label>
                                            <input type="text" class="form-control" id="nombrenew_are">
                                        </div>

                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal" id="cerrarAddtBtn_are">Cerrar</button>
                                    <button type="button" class="btn btn-primary" id="addfase_are" onclick="addfase_are()">Crear Area</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- FIN DE CREACION DE Areas-->

                    <!-- Edicion DE Areas-->
                    <div class="modal fade" id="modalEditarArea"  tabindex="-1" role="dialog" aria-labelledby="myModalLabelEdit">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabelEdit">Editar Area</h4>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <input type="hidden" id="idedit_are" name="idedit_are"> 
                                            <label>Nombre</label>
                                            <input type="text" class="form-control" id="nombreedit_are">
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal" id="cerrarEditBtn_are">Cerrar</button> 
                                    <button type="button" class="btn btn-primary" onclick="edit_are()">Editar Area</button>
                                </div> 
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12">
                        <table id="dataTableAreas" class="display" cellspacing="0" width="100%">
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

                        var table_are = null;

                        $(document).ready(function () {

                            $("#nuevaBtn_are").click(function () {
                                $("#modalNuevaArea").modal();
                            });

                            $("#editarBtn_are").click(function () {
                                $("#modalEditarArea").modal();
                            });

                            loadTable_are();
                        });

                        function addfase_are() {

                            var parametros = {
                                "nombre": $("#nombrenew_are").val(),
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
                                        table_are.row.add({
                                            "id": data.row[0].id,
                                            "nombre": data.row[0].nombre}).draw(false);
                                        $('.modal-backdrop').remove();
                                        $('#cerrarAddtBtn_are').click();
                                        $("#nombrenew_are").val("");
                                        show_OkDialog($("#save_Dialog_are"), "Satisfactory process");
                                    },
                                    error: function (xhr, ajaxOptions, err) {
                                        alert(err);
                                        show_OkDialog($("#error_Dialog_are"), "Error");
                                    },
                                    complete: function () {
                                        unBlock();
                                    }
                                });
                            }
                        }

                        function edit_are() {

                            var parametros = {
                                "nombre": $("#nombreedit_are").val(),
                                "opcion": 321,
                                "id": $("#idedit_are").val(),
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
                                        $('#cerrarEditBtn_are').click();
                                        table_are.ajax.reload();
                                        show_OkDialog($("#save_Dialog_are"), "Satisfactory process");
                                        $("#nombreedit_are").val("");
                                        $("#idedit_are").val("");
                                    },
                                    error: function (xhr, ajaxOptions, err) {
                                        show_OkDialog($("#error_Dialog_are"), "Error");
                                    }
                                });
                            }


                        }

                        function delete_are(idfase) {

                            var parametros = {
                                "opcion": 322,
                                "id": idfase,
                                "from": "fas"
                            };


                            $("#dialog-confirm_are").dialog({
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
                                                table_are.row('.selected').remove().draw(false);
                                                show_OkDialog($("#save_Dialog_are"), "Satisfactory process");
                                            },
                                            error: function (xhr, ajaxOptions, err) {
                                                alert(err);
                                                show_OkDialog($("#error_Dialog_are"), "Error");
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

                        function loadTable_are() {

                            table_are = $('#dataTableAreas').DataTable({
                                "ajax": "../Modules/manager.jsp?opcion=340&from=are",
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

                            $('#dataTableAreas tbody').on('click', 'tr', function () {
                                if ($(this).hasClass('selected')) {
                                    $(this).removeClass('selected');
                                } else {
                                    table_are.$('tr.selected').removeClass('selected');
                                    $(this).addClass('selected');
                                }
                            });

                            $('#editarBtn_are').click(function () {

                                if (table_are.rows('.selected').data()[0] !== undefined) {
                                    var id = table_are.rows('.selected').data()[0].id;
                                    var nombre = table_are.rows('.selected').data()[0].nombre;

                                    $("#nombreedit_are").val(nombre);
                                    $("#idedit_are").val(id);
                                } else {
                                    alert("Debe seleccionar una fase");
                                }
                            });

                            $('#deleteBtn_are').click(function () {
                                if (table_are.rows('.selected').data()[0] !== undefined) {
                                    var id = table_are.rows('.selected').data()[0].id;
                                    delete_are(id);
                                }
                            });
                        }
                    </script>

                    <div id="load_Dialog_are" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_are" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_are" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="dialog-confirm_are" title="Eliminar Area" style='display:none;'>
                        <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                            Esta seguro que desea eliminar esta fase de manera permanente?
                        </p>
                    </div>

                </div>


            </div>
            <!-- /#page-wrapper -->
            </div>

        </div>
        <!-- /#wrapper -->
    </body>

</html>


