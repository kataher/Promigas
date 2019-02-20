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
                            <h2>Dimensioning of restrictor plates to be installed in natural gas transport and distribution applications </h2>
                        </div>
                        <div class="col-lg-3"> 

                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_pla()">
                                Record
                            </button>


                            <!-- MODAL -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">Record</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div id="div-table_pla"></div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- FIN MODAL -->
                        </div>

                        <div class="col-lg-9">
                            Description:  
                            <input  class="form-control" type="text" id="description_pla" name="description_pla"><br>
                            Projects:
                            <select class="form-control" id="proyects_sel_pla" name="proyects_sel_pla"> </select>
                        </div>
                    </div>
                    <hr>


                    <div class="row">
                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Specified Equipment Data
                            </div>
                            <div class="panel-body">

                                <div class="row">
                                    <div class="col-lg-12">

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Select:</label>
                                            </div>
                                            <div class="col-md-12" id = "div_type_sel_pla">
                                                <select class="form-control" id="type_sel_pla" name="type_sel_pla" onchange="load_nps_com(this.value)"> 
                                                    <option value="150">150 lb. Welding Neck Flanges</option>
                                                    <option value="300">300 lb. Welding Neck Flanges</option>
                                                    <option value="600">600 lb. Welding Neck Flanges</option>

                                                </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Nominal flange Size [in]:</label>
                                            </div>
                                            <div class="col-md-12" id = "div_nps_sel_pla">
                                                <select class="form-control" id="nps_sel_pla" name="nps_sel_pla"></select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Meter Capacity [ACMH]:</label>
                                            </div>
                                            <div class="col-md-12">
                                                <input class="form-control" value="160" type="text" id="flujo1_pla" name="flujo1_pla" onchange="reCalculateFlujo_pla(this)" required>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Meter Capacity [ACFH]:</label>
                                            </div>
                                            <div class="col-md-12">
                                                <input class="form-control" readonly value="5650.35" type="text" id="flujo2_pla" name="flujo2_pla" required>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Design Flow [ACFH]:</label>
                                            </div>
                                            <div class="col-md-12">
                                                <input class="form-control" readonly value="6780.42" type="text" id="flujo3_pla" name="flujo3_pla" required>
                                            </div>
                                        </div>



                                    </div>


                                </div>

                            </div>

                        </div>   

                    </div>

                    <div class="col-lg-5">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Images
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div id="graficaLineal_pla">
                                            <img src="img/platina.png" class="img-rounded" alt="Cinque Terre" width="304" height="300">
                                            <img src="img/platina2.png" class="img-rounded" alt="Cinque Terre" width="600" height="300">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3">

                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Results
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Handle width – A [in]: </label>
                                            <input type="text" id="a_pla" name="a_pla"  required readonly class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Thickness  - t [in]: </label>
                                            <input type="text" id="espesor_pla" name="espesor_pla"  required readonly class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Orifice diameter – d [in]:</label>
                                            <input type="text" id="orifice_pla" name="orifice_pla"  required readonly class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Outer diameter of the plate - D [in]:</label>
                                            <input type="text" id="d_pla" name="d_pla" readonly required class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label>Handle length – L [in]:</label>
                                            <input type="text" id="l_pla" name="l_pla" readonly required class="form-control">
                                        </div>

                                        <input type="button" id="calculateBtn_pla" name="calculateBtn_pla" value="Calculate" onclick="calculate_pla()" class="btn btn-info btn-block">
                                        <input type="button" id="saveBtn_pla" name="saveBtn_pla" value="Save" onclick="save_pla()" class="btn btn-success btn-block">   
                                        <input type="button" id="delteBtn_pla" name="delteBtn_pla" value="Delete" onclick="delete_pla()" class="btn btn-danger btn-block">
                                        <input type="button" id="datasheetgen_pla" name="datasheetgen_pla" value="Generate Datasheet" onclick="load_datasheet_pla()" class="btn btn-success btn-block">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <div class="col-md-3">
                            <input type="button" id="cleanAllBtn_pla" name="cleanBtn_pla" value="Clean All Data" onclick="cleanAll_pla()" class="btn btn-warning btn-block">
                        </div>
                        <div class="col-md-3">
                            <input type="button" id="cleanInputBtn_pla" name="cleanBtn_pla" value="Clean Input Data" onclick="cleanIn_pla()" class="btn btn-warning btn-block">
                        </div>
                        <div class="col-md-3">
                            <input type="button" id="cleanOutputBtn_pla" name="cleanBtn_pla" value="Clean Output Data" onclick="cleanOut_pla()" class="btn btn-warning btn-block">
                        </div>

                    </div>
                    </div>

                    <div id="load_Dialog_pla" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_pla" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_pla" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="calculate_Dialog_pla" title="Basic dialog" style='display:none;'>
                        <p>Calculation done successfully</p>
                    </div>

                    <div id="delete_Dialog_pla" title="Basic dialog" style='display:none;'>
                        <p>Successfully deleted record</p>
                    </div>

                    <div id="dialog-confirm_pla" title="Delete record" style='display:none;'>
                        <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                            Are you sure you want to permanently delete this record?
                        </p>
                    </div>
                    <input type="hidden" id="id_pla" name="id_pla">  
                    <input type="hidden" id="opt_pla" name="opt_pla">
                </div>
            </div>
        </div>

        <script>

            $(document).ready(function () {
                $("#opt_pla").val("1");
                load_nps_com();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_pla"),
                        $("#error_Dialog_pla"));
            });

            function reCalculateFlujo_pla(inp) {
                onchange_Input_pla(inp);

                var flujo = parseFloat($("#flujo1_pla").val());

                $("#flujo2_pla").val((flujo * 35.3146667).toFixed(2));
                $("#flujo3_pla").val(((flujo * 35.3146667) * 1.2).toFixed(2));


            }

            function load_history_pla() {
                var parametros = {
                    "idproyect": $("#proyects_sel_pla").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "pla"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_pla").val("1");
                        $("#id_pla").val("");
                        cleanAll_pla();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {

                        if (data !== null) {
                            var tags = Object.keys(data.historial[0]);

                            var tamano = data.size;

                            var html = "<table class='table table-bordered table-striped'>";
                            html += "<thead>";
                            html += "<tr>";
                            html += "<th>Creation date</th>";
                            html += "<th>Description</th>";
                            html += "<th>Load</th>";
                            html += "</tr>";
                            html += "</thead>";
                            if (tamano > 0) {

                                html += '<tbody>';
                                for (var i = 0; i < tamano; i++) {
                                    html += "<tr>";
                                    html += "<td>" + data.historial[i].date + "</td>";
                                    html += "<td>" + data.historial[i].description_pla + "</td>";
                                    html += "<td><a href='#' onClick='load_form_pla(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
                                    html += "<tr>";

                                }
                                html += '</tbody>';
                            } else {
                                html += '<p>No records available.</p>';
                            }
                            html += "</table><br><br>";

                        } else {
                            html = '<p>No records available.</p>';
                        }
                        $("#div-table_pla").empty();
                        $("#div-table_pla").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pla"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_pla(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "pla"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_pla();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }

                            load_nps_com();
                            $("#nps_sel_pla").val(data.row["nps_sel_pla"]);
                            $("#proyects_sel_pla").val(data.row["id_proyect"]);

                            $("#opt_pla").val("2");
                            $("#id_pla").val(data.row.id);
                        } else {
                            $("#opt_pla").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_pla").val("1");
                        show_OkDialog($("#error_Dialog_pla"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_nps_com() {

                var parametros = {
                    "combo": 'nps',
                    "type": $("#type_sel_pla").val(),
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class='form-control' name='nps_sel_pla' id= 'nps_sel_pla' onchange='cleanOut_pla()'>" + data;
                        $("#div_nps_sel_pla").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pla"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function cleanOut_pla() {
                $("#espesor_pla").val("");
                $("#orifice_pla").val("");
                $("#d_pla").val("");
                $("#l_pla").val("");
                $("#a_pla").val("");
            }

            function cleanIn_pla() {
                $("#flujo1_pla").val("");
                $("#flujo2_pla").val("");
                $("#flujo3_pla").val("");
            }

            function cleanAll_pla() {
                cleanIn_pla();
                cleanOut_pla();
                $("#description_pla").val("");
            }

            function onchange_Input_pla(inp) {

                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_pla();

            }

            function calculate_pla() {

                var variables = {
                    "flujo3_pla": $("#flujo3_pla").val(),
                    "type_sel_pla": $("#type_sel_pla").val(),
                    "nps_sel_pla": $("#nps_sel_pla").val()

                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var res = platina_Form(variables);

                    $("#espesor_pla").val(res[0]);
                    $("#orifice_pla").val(res[1]);
                    $("#d_pla").val(res[6]);
                    $("#l_pla").val(res[7]);
                    $("#a_pla").val("0.75");

                    show_OkDialog($("#calculate_Dialog_pla"), "Satisfactory process");

                }
            }

            function save_pla() {

                var parametros = {
                    "type_sel_pla": $("#type_sel_pla").val(),
                    "nps_sel_pla": $("#nps_sel_pla").val(),
                    "flujo1_pla": $("#flujo1_pla").val(),
                    "flujo2_pla": $("#flujo2_pla").val(),
                    "flujo3_pla": $("#flujo3_pla").val(),
                    "espesor_pla": $("#espesor_pla").val(),
                    "orifice_pla": $("#orifice_pla").val(),
                    "d_pla": $("#d_pla").val(),
                    "l_pla": $("#l_pla").val(),
                    "idproyect": $("#proyects_sel_pla").val(),
                    "opcion": $("#opt_pla").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "id_pla": 1,
                    "description_pla": $("#description_pla").val(),
                    "from": "pla"
                };
                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_pla").val() == 2) {
                        parametros.id_pla = $("#id_pla").val();
                    }

                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#id_pla").val(data.row.id);
                            $("#opt_pla").val("2");
                            show_OkDialog($("#save_Dialog_pla"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_pla"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function load_datasheet_pla() {

                var parametros = {
                    "opcion": "102",
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "proyecto": $("#proyects_sel_pla option:selected").text(),
                    "from": "pla",
                    "d": $("#orifice_pla").val(),
                    "D": $("#d_pla").val(),
                    "L": $("#l_pla").val(),
                    "t": $("#espesor_pla").val(),
                    "flujo1_pla": $("#flujo1_pla").val(),
                    "flujo2_pla": $("#flujo2_pla").val(),
                    "flujo3_pla": $("#flujo3_pla").val(),
                    "nps_sel_pla": $("#nps_sel_pla").val()

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
                        show_OkDialog($("#error_Dialog_pla"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            }



            function delete_pla() {

                //Confirmacion
                if ($("#opt_pla").val() == 2) {
                    $("#dialog-confirm_pla").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_pla();
                                $(this).dialog("close");
                            },
                            Cancelar: function () {
                                $(this).dialog("close");
                            }
                        }
                    });
                } else {
                    alert("You must load a log to be able to delete it");
                }
            }



            function deleteReg_pla() {
                var parametros = {
                    "id_pla": $("#id_pla").val(),
                    "opcion": 3,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "pla"
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
                        cleanAll_pla();
                        $("#id_pla").val("");
                        $("#opt_pla").val("1");
                        show_OkDialog($("#delete_Dialog_pla"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_pla"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


        </script>

    </body>
</html>