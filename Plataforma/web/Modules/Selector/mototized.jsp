<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::PROMIGAS::</title>  
        <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
        <script src="../../js/jquery.js" type="text/JavaScript" ></script>
        <script src="../../js/jquery-ui/jquery-ui.js"></script>
        <script src="../../js/jquery-ui/external/blockui/jquery-blockui.js"></script>
        <script src="../../js/functions/formulasK.js"></script>
        <script src="../../js/functions/formulasM.js"></script>
        <script src="../../js/functions/functions.js"></script>
        <script src="../../js/jspdf/jspdf.min.js" type="text/JavaScript" > </script>
        <script src="../../js/jspdf/autotable.min.js" type="text/JavaScript" > </script>
        <script src="../../bower_components/morrisjs/morris.js"></script>
        <script src="../../dist/js/sb-admin-2.js"></script>
        <script src="../../bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../../bower_components/raphael/raphael-min.js"></script>
        <script src="../../js/dataTables/jquery.dataTables.js" type="text/javascript"></script>
        <link rel="stylesheet" href="../../js/jquery-ui/jquery-ui.css">
        <link rel="stylesheet" href="../../bower_components/morrisjs/morris.css">
        <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../bower_components/metisMenu/dist/metisMenu.min.css" />
        <link rel="stylesheet" href="../../dist/css/timeline.css" >
        <link rel="stylesheet" href="../../dist/css/sb-admin-2.css" >
        <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="../../css/dataTables/jquery.dataTables.min.css" type="text/css">
        <link rel="stylesheet" href="../../css/user-profiles-list-basic.css">
        <link rel="stylesheet" href="../../css/menu.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.1/css/select.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
    </head>

    <body>
        <div id="wrapper">
            <jsp:include page="../../allmenu.jsp"/>
            <div id="page-wrapper">
                <div id="content">
                    <div class="row">
                        <div class="col-lg-9">
                            <h2>Motorized Valves</h2>
                        </div>

                    </div>
                    <hr>

                    <div class="row">
                        <div class="col-lg-2">                
                            <input type="button" id="datasheetgen_mov" name="datasheetgen_mov" value="Generate Datasheet" onclick="load_datasheet_mov()" class="btn btn-success btn-block">   
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Input Data
                                </div>
                                <div class="panel-body">
                                    <form enctype='multipart/form-data' id='formuploadajax_mov' name='formuploadajax_mov' method='post' action='/Plataforma/subirM.jsp'>
                                        <div class="row">
                                            <div class="col-lg-12">

                                                <div class="form-group col-lg-12">
                                                    <div class="col-lg-12">
                                                        <label>Description: </label>            
                                                        <input  class="form-control" required type="text" id="description_mov" name="description_mov">
                                                    </div>
                                                </div>

                                                <div class="form-group col-lg-12">
                                                    <div class="col-lg-12">
                                                        <label>Projects: </label>            
                                                        <select required class="form-control" id="proyects_sel_mov" name="proyects_sel_mov" > </select>
                                                    </div>
                                                </div>

                                                <div class="form-group col-lg-12">
                                                    <div class="col-lg-10">
                                                        <label>Attach Document:</label>            
                                                        <input required type='file' id='idfile' name='idfile'>
                                                    </div>

                                                    <div class="col-lg-2">
                                                        <input class="btn btn-success" type="submit" value="Save" />
                                                    </div>
                                                    <input type="hidden" id="id_mov" name="id_mov">
                                                    <input type="hidden" id="id_user" name="id_user"> 
                                                    <input type="hidden" id="opt_mov" name="opt_mov">
                                                </div>

                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <h2>Record</h2>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div id="tablehistorial">

                                <table id="dataTableHistorial_mov" class="display" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Código</th>
                                            <th>Description</th>
                                            <th>Project</th>
                                            <th>File</th>
                                            <th>Created by</th>
                                            <th>Ruta</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Código</th>
                                            <th>Description</th>
                                            <th>Project</th>
                                            <th>File</th>
                                            <th>Created by</th>
                                            <th>Ruta</th>
                                        </tr>
                                    </tfoot>
                                </table>

                                <div class="col-lg-12">

                                    <div class="col-md-2">         
                                        <input type="button" id="downloadBtn_mov" name="downloadBtn_mov" value="Download Document"  class="btn btn-success btn-block">   
                                    </div>         
                                    <div class="col-md-2">
                                        <button type="button" id="deleteBtn_mov" class="btn btn-danger btn-block">Delete</button>
                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>

                    <div id="load_Dialog_mov" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_mov" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_mov" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="calculate_Dialog_mov" title="Basic dialog" style='display:none;'>
                        <p>Calculation done successfully</p>
                    </div>

                    <div id="delete_Dialog_mov" title="Basic dialog" style='display:none;'>
                        <p>Successfully deleted record</p>
                    </div>
                    <div id="dialog-confirm_mov" title="Delete record" style='display:none;'>
                        <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                            Are you sure you want to permanently delete this record?
                        </p>
                    </div>

                </div>


            </div>


        </div>
        <script>
            var table_mov, idusu, tipo;

            $(document).ready(function () {
                $("#opt_mov").val("1");

                idusu = <%=session.getAttribute("idusu")%>;
                tipo = <%=session.getAttribute("tipo")%>;


                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_mov"),
                        $("#error_Dialog_mov"));

                $("#idpro_mov").val($("#proyects_sel_mov").val());
                $("#id_user").val(idusu);
                loadTable_mov();

            });

            function loadTable_mov() {

                table_mov = $('#dataTableHistorial_mov').DataTable({
                    "ajax": "../manager.jsp?opcion=6&from=mov&iduser=" + idusu + "&type=" + tipo + "&nombre=data",
                    "columns": [
                        {"data": "id"},
                        {"data": "description_mov"},
                        {"data": "name"},
                        {"data": "nombre_mov"},
                        {"data": "nuser"},
                        {"data": "ruta_mov"}
                    ],
                    "columnDefs": [
                        {
                            "targets": [5],
                            "visible": false,
                            "searchable": false
                        }
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

                $('#dataTableHistorial_mov tbody').on('click', 'tr', function () {
                    if ($(this).hasClass('selected')) {
                        $(this).removeClass('selected');
                    } else {
                        table_mov.$('tr.selected').removeClass('selected');
                        $(this).addClass('selected');
                    }
                });

                $('#deleteBtn_mov').click(function () {
                    if (table_mov.rows('.selected').data()[0] !== undefined) {
                        var id = table_mov.rows('.selected').data()[0].id;
                        delete_mov(id);
                    }
                });

                $('#downloadBtn_mov').click(function () {
                    if (table_mov.rows('.selected').data()[0] !== undefined) {
                        var file = table_mov.rows('.selected').data()[0].nombre_mov;
                        var path = table_mov.rows('.selected').data()[0].ruta_mov;

                        window.location = "/Plataforma/bajar.jsp?filename=" + file + "&path=" + path;

                    }
                });


            }

            function load_datasheet_mov() {

                var parametros = {
                    "opcion": "102",
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "proyecto": $("#proyects_sel_mov option:selected").text(),
                    "from": "mov"

                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    dataType: "json",
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        alert("Successfully generated file");
                        var file = data.row.file;
                        var path = data.row.path;
                        window.location = "/Plataforma/bajar.jsp?filename=" + file + "&path=" + path;

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mov"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            }

            function delete_mov(id) {
                //Confirmacion
                $("#dialog-confirm_mov").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteconfirm_mov(id);
                            $(this).dialog("close");
                        },
                        Cancelar: function () {
                            $(this).dialog("close");
                        }
                    }
                });
            }

            function deleteconfirm_mov(id) {
                var parametros = {
                    "id_mov": id,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "opcion": 3,
                    "from": "mov"
                };


                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_mov").val("");
                        $("#opt_mov").val("1");
                        show_OkDialog($("#delete_Dialog_mov"), "Satisfactory process");
                        table_mov.row('.selected').remove().draw(false);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_mov"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


        </script>
    </body>
</html>