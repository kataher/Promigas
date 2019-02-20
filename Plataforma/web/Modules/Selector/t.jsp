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
        <script src="../../../js/jquery.js" type="text/JavaScript" ></script>
        <script src="../../../js/jquery-ui/jquery-ui.js"></script>
        <script src="../../../js/jquery-ui/external/blockui/jquery-blockui.js"></script>
        <script src="../../../js/functions/formulasK.js"></script>
        <script src="../../../js/functions/formulasM.js"></script>
        <script src="../../../js/functions/functions.js"></script>
        <script src="../../../js/jspdf/jspdf.min.js" type="text/JavaScript" > </script>
        <script src="../../../js/jspdf/autotable.min.js" type="text/JavaScript" > </script>
        <script src="../../../bower_components/morrisjs/morris.js"></script>
        <script src="../../../dist/js/sb-admin-2.js"></script>
        <script src="../../../bower_components/metisMenu/dist/metisMenu.min.js"></script>
        <script src="../../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="../../../bower_components/raphael/raphael-min.js"></script>
        <script src="../../../js/dataTables/jquery.dataTables.js" type="text/javascript"></script>
        <link rel="stylesheet" href="../../../js/jquery-ui/jquery-ui.css">
        <link rel="stylesheet" href="../../../bower_components/morrisjs/morris.css">
        <link rel="stylesheet" href="../../../bower_components/bootstrap/dist/css/bootstrap.min.css" />
        <link rel="stylesheet" href="../../../bower_components/metisMenu/dist/metisMenu.min.css" />
        <link rel="stylesheet" href="../../../dist/css/timeline.css" >
        <link rel="stylesheet" href="../../../dist/css/sb-admin-2.css" >
        <link rel="stylesheet" href="../../../bower_components/font-awesome/css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="../../../css/dataTables/jquery.dataTables.min.css" type="text/css">
        <link rel="stylesheet" href="../../../css/user-profiles-list-basic.css">
        <link rel="stylesheet" href="../../../css/menu.css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.1/css/select.dataTables.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">
    </head>

    <body>
        <div id="wrapper">
            <jsp:include page="../../../allmenu.jsp"/>
            <div id="page-wrapper">
                <div id="content">
                    <div class="row">
                        <div class="col-lg-9">
                            <h2>This module validates the selection of actuators to be installed in natural gas transport and distribution applications</h2>
                        </div>
                        <div class="col-lg-3"> 

                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_act()">
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
                                            <div id="div-table_act"></div>
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
                            <input  class="form-control" type="text" id="description_act" name="description_act"><br>
                            Projects: 
                            <select class="form-control" id="proyects_sel_act" name="proyects_sel_act"> </select>
                        </div>
                    </div>
                    <hr>

                    <div class="row">
                        <div class="col-lg-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Datos del Equipo Especificado
                                </div>
                                <div class="panel-body">

                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label>Trademark:</label>
                                                </div>
                                                <div id = "div_ma_sel_act">
                                                    <select class="form-control" id="ma_sel_act" name="ma_sel_act"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label>Size</label>
                                                </div>
                                                <div id = "div_tam_sel_act">
                                                    <select class="form-control" id="tam_sel_act" name="tam_sel_act"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label>ANSI Class:</label>
                                                </div>
                                                <div id = "div_cla_sel_act">
                                                    <select class="form-control" id="cla_sel_act" name="cla_sel_act"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Estimated torque required by the valve:</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input class="form-control" type="text" id="torquees_act" name="torquees_act" onchange="onchange_Input_act(this)" required>
                                                </div>
                                                <div class="col-md-4" id = "div_toes_sel_act">
                                                    <select class="form-control" id="toes_sel_act" name="toes_sel_act"> </select>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Maximum torque required by the valve:</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input class="form-control" type="text" id="torquema_act" name="torquema_act" onchange="onchange_Input_act(this)" required>
                                                </div>
                                                <div class="col-md-4" id = "div_toma_sel_act">
                                                    <select class="form-control" id="toma_sel_act" name="toma_sel_act"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-md-12">                
                                                <label>Actuator Mark:</label>
                                                <div id="div_maact_sel_act">
                                                    <select class="form-control" id="maact_sel_act" name="maact_sel_act" ></select> 
                                                </div>

                                            </div>
                                            <div class="form-group col-md-12"> 
                                                <label>Actuator reference:</label>
                                                <div id="div_refe_sel_act">
                                                    <select class="form-control" id="refe_sel_act" name="refe_sel_act" ></select> 
                                                </div>

                                            </div>
                                            <div class="form-group col-md-12"> 
                                                <label>Type of action required:</label>
                                                <div id="div_tiac_sel_act">
                                                    <select class="form-control" id="tiac_sel_act" name="tiac_sel_act" ></select> 
                                                </div>

                                            </div>
                                            <div class="form-group col-md-12"> 
                                                <label>Actuator model to be evaluated:</label>
                                                <div id="div_moac_sel_act">
                                                    <select class="form-control" id="moac_sel_act" name="moac_sel_act" ></select> 
                                                </div>

                                            </div>
                                            <div class="form-group col-md-12"> 
                                                <label>Operating Pressure:</label>
                                                <div id="div_pre_sel_act">
                                                    <select class="form-control" id="pre_sel_act" name="pre_sel_act" ></select> 
                                                </div>

                                            </div>
                                        </div>


                                    </div>

                                </div>

                            </div>   

                        </div>


                        <div class="col-lg-6">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Results
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>User recommended model:</label>
                                                <input type="text" id="modelore_act" name="modelore_act"  required readonly class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>% Working according to specified pressure conditions:</label>
                                                <input type="text" id="trabajo_act" name="trabajo_act"  readonly required class="form-control">
                                            </div> 
                                            <div class="form-group">
                                                <label>Maximum driving torque that can be delivered is given to:</label>
                                                <input type="text" id="maxpar_act" name="maxpar_act" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Maximum driving torque that can be delivered:</label>
                                                <input type="text" id="maxparval_act" name="maxparval_act" readonly required class="form-control">
                                            </div> 
                                            <div class="form-group">
                                                <label>Pmin Recommended:</label>            
                                                <input type="text" id="pmin_act" name="pmin_act" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Recommended Pmin Torque:</label>            
                                                <input type="text" id="tpmin_act" name="tpmin_act" readonly  required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>% Recommended Pmin:</label>            
                                                <input type="text" id="ppmin_act" name="ppmin_act" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Recommended Pmax:</label>
                                                <input type="text" id="pmax_act" name="pmax_act" readonly required class="form-control">
                                            </div>    
                                            <div class="form-group">
                                                <label>Recommended Pmax torque:</label>            
                                                <input type="text" id="tpmax_act" name="tpmax_act" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>% Recommended Pmax:</label>            
                                                <input type="text" id="ppmax_act" name="ppmax_act" readonly required class="form-control">
                                            </div>

                                            <input type="button" id="calculateBtn_act" name="calculateBtn_act" value="Calculate" onclick="calculate_act()" class="btn btn-info btn-block">
                                            <input type="button" id="saveBtn_act" name="saveBtn_act" value="Save" onclick="save_act()" class="btn btn-success btn-block">   
                                            <input type="button" id="delteBtn_act" name="delteBtn_act" value="Delete" onclick="deleteReg_act()" class="btn btn-danger btn-block">
                                            <input type="button" id="datasheetgen_act" name="datasheetgen_act" value="Generate Datasheet" onclick="load_datasheet_act()" class="btn btn-success btn-block">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Plot
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div id="graficaLineal_act"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="col-md-3">
                                <input type="button" id="cleanAllBtn_act" name="cleanBtn_act" value="Clean All Data" onclick="cleanAll_act()" class="btn btn-warning btn-block">
                            </div>
                            <div class="col-md-3">
                                <input type="button" id="cleanInputBtn_act" name="cleanBtn_act" value="Clean Input Data" onclick="cleanIn_act()" class="btn btn-warning btn-block">
                            </div>
                            <div class="col-md-3">
                                <input type="button" id="cleanOutputBtn_act" name="cleanBtn_act" value="Clean Output Data" onclick="cleanOut_act()" class="btn btn-warning btn-block">
                            </div>

                        </div>
                    </div>




                    <input type="hidden" id="id_act" name="id_act">  
                    <input type="hidden" id="opt_act" name="opt_act">
                    <input type="hidden" id="vecmax_act" name="vecmax_act">


                    <div id="load_Dialog_act" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_act" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_act" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="calculate_Dialog_act" title="Basic dialog" style='display:none;'>
                        <p>Calculation done successfully</p>
                    </div>

                    <div id="delete_Dialog_act" title="Basic dialog" style='display:none;'>
                        <p>Successfully deleted record</p>
                    </div>

                    <div id="dialog-confirm_act" title="Eliminar Actividad" style='display:none;'>
                        <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                            Esta seguro que desea eliminar esta actividad de manera permanente?
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <script>

            $(document).ready(function () {
                $("#opt_act").val("1");

                load_marcaval_sel_act();
                load_tamano_sel_act();
                load_clase_sel_act();
                load_torque_sel_act();
                load_maactuador_sel_act();
                load_refe_sel_act();
                load_accion_sel_act();
                load_modeloact_sel_act();
                load_presionope_sel_act();

                calTorque_act();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_act"),
                        $("#error_Dialog_act"));

            });

            function load_datasheet_act() {

                var parametros = {
                    "opcion": "102",
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "proyecto": $("#proyects_sel_act option:selected").text(),
                    "from": "act"

                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
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
                        window.location = "bajar.jsp?filename=" + file + "&path=" + path;

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            }

            function setGrafica_act() {

                var vecmax = $("#vecmax_act").val().split(",");

                var data = [];
                var eve = Number($("#pre_sel_act").val().split(",")[1]);

                var j = 0;
                var k = 0;

                for (var i = 40; i <= 120; i = i + 10) {
                    if (i == eve) {
                        k = j;
                    }

                    data[j] = {x: i.toString(), a: vecmax[j].toString()};
                    j += 1;
                }

                $("#graficaLineal_act").html("");

                Morris.Line({
                    element: 'graficaLineal_act',
                    data: data,
                    xkey: 'x',
                    ykeys: ['a'],
                    labels: ['Torque Actuador'],
                    parseTime: false,
                    events: [
                        k
                    ]


                });
            }

            function load_history_act() {
                var parametros = {
                    "idproyect": $("#proyects_sel_act").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "act"
                };

                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_act").val("1");
                        $("#id_act").val("");
                        cleanAll_act();
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
                                    html += "<td>" + data.historial[i].description_act + "</td>";
                                    html += "<td><a href='#' onClick=\"load_form_act(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_act").empty();
                        $("#div-table_act").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_marcaval_sel_act() {
                var parametros = {
                    "combo": "maval",
                    "opcion": "5",
                    "from": "act"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"ma_sel_act\" id= \"ma_sel_act\" onchange=\"cleanOut_act()\">" + data;
                        $("#div_ma_sel_act").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_tamano_sel_act() {
                var parametros = {
                    "combo": "tamact",
                    "opcion": "5",
                    "from": "act"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"tam_sel_act\" id= \"tam_sel_act\" onchange=\"onchange_tam_cla_act()\">" + data;
                        $("#div_tam_sel_act").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_clase_sel_act() {
                var parametros = {
                    "combo": "clact",
                    "opcion": "5",
                    "from": "act"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"cla_sel_act\" id= \"cla_sel_act\" onchange=\"onchange_tam_cla_act()\">" + data;
                        $("#div_cla_sel_act").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_torque_sel_act() {
                var parametros = {
                    "combo": "torque",
                    "opcion": "5",
                    "from": "act"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"toes_sel_act\" id= \"toes_sel_act\" onchange=\"onchange_uni_act(1)\">" + data;
                        $("#div_toes_sel_act").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"toma_sel_act\" id= \"toma_sel_act\" onchange=\"onchange_uni_act(2)\">" + data;
                        $("#div_toma_sel_act").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_maactuador_sel_act() {
                var parametros = {
                    "combo": "maact",
                    "opcion": "5",
                    "from": "act"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"maact_sel_act\" id= \"maact_sel_act\" onchange=\"onchange_maactuador_act()\">" + data;
                        $("#div_maact_sel_act").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_refe_sel_act() {
                var parametros = {
                    "combo": "refeact",
                    "opcion": "5",
                    "marca": $("#maact_sel_act").val(),
                    "from": "act"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"refe_sel_act\" id= \"refe_sel_act\" onchange=\"onchange_refe_act()\">" + data;
                        $("#div_refe_sel_act").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_accion_sel_act() {
                var parametros = {
                    "combo": "tiac",
                    "opcion": "5",
                    "from": "act"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"tiac_sel_act\" id= \"tiac_sel_act\" onchange=\"onchange_accion_act()\">" + data;
                        $("#div_tiac_sel_act").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_modeloact_sel_act() {
                var parametros = {
                    "combo": "moac",
                    "referencia": $("#refe_sel_act").val(),
                    "accion": $("#tiac_sel_act").val(),
                    "opcion": "5",
                    "from": "act"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"moac_sel_act\" id= \"moac_sel_act\" onchange=\"cleanOut_act()\">" + data;
                        $("#div_moac_sel_act").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_presionope_sel_act() {
                var parametros = {
                    "combo": "preop",
                    "opcion": "5",
                    "from": "act"
                };
                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"pre_sel_act\" id= \"pre_sel_act\" onchange=\"cleanOut_act()\">" + data;
                        $("#div_pre_sel_act").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_act(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "act"
                };

                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_act();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }

                            load_refe_sel_act();
                            $("#refe_sel_act").val(data.row["refe_sel_act"]);

                            load_modeloact_sel_act();
                            $("#moac_sel_act").val(data.row["moac_sel_act"]);

                            setGrafica_act();

                            $("#proyects_sel_act").val(data.row["id_proyect"]);
                            $("#opt_act").val("2");
                            $("#id_act").val(data.row.id);
                        } else {
                            $("#opt_act").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_act").val("1");
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_act() {
                $("#modelore_act").val("");
                $("#trabajo_act").val("");
                $("#maxpar_act").val("");
                $("#maxparval_act").val("");
                $("#pmin_act").val("");
                $("#tpmin_act").val("");
                $("#ppmin_act").val("");
                $("#pmax_act").val("");
                $("#tpmax_act").val("");
                $("#ppmax_act").val("");
            }

            function cleanIn_act() {
                $("#torquees_act").val("");
                $("#torquema_act").val("");
            }

            function cleanAll_act() {
                cleanIn_act();
                cleanOut_act();
                $("#description_act").val("");
            }

            function onchange_uni_act(op) {

                if (op == 1) {
                    $("#toma_sel_act").val($("#toes_sel_act").val());
                } else {
                    $("#toes_sel_act").val($("#toma_sel_act").val());
                }

            }

            function onchange_refe_act() {
                load_modeloact_sel_act();
                cleanOut_act();
            }

            function onchange_accion_act() {
                load_modeloact_sel_act();
                cleanOut_act();
            }

            function onchange_maactuador_act() {
                load_refe_sel_act();
                onchange_refe_act();
            }

            function onchange_tam_cla_act() {
                cleanOut_act();
                calTorque_act();
            }

            function onchange_Input_act(inp) {

                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_act();

            }

            function calculate_act() {

                var variables = {
                    "torquees_act": $("#torquees_act").val(),
                    "torquema_act": $("#torquema_act").val(),
                    "moac_sel_act": $("#moac_sel_act").val(),
                    "pre_sel_act": $("#pre_sel_act").val().split(",")[0]
                };

                var uni = {
                    "toes_sel_act": $("#toes_sel_act").val().split(",")[1]
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var res = actuadores_Form(variables, uni);
                    var uniT = $("#toes_sel_act option:selected").html();

                    var marSel = $("#maact_sel_act option:selected").html();
                    var modSel = $("#moac_sel_act option:selected").html();

                    $("#modelore_act").val(marSel + ": " + modSel);

                    $("#trabajo_act").val(res[0]);
                    $("#maxparval_act").val(res[1] + " " + uniT);
                    $("#maxpar_act").val(res[2]);
                    $("#pmin_act").val(res[3]);
                    $("#pmax_act").val(res[4]);
                    $("#tpmin_act").val(res[5]);
                    $("#tpmax_act").val(res[6]);
                    $("#ppmin_act").val(res[7]);
                    $("#ppmax_act").val(res[8]);
                    $("#vecmax_act").val(res[9]);

                    show_OkDialog($("#calculate_Dialog_act"), "Satisfactory process");

                    setGrafica_act();

                }
            }

            function calTorque_act() {
                var parametros = {
                    "id_inches": $("#tam_sel_act").val().split(",")[0],
                    "id_ansi": $("#cla_sel_act").val(),
                    "opcion": "100",
                    "from": "act"
                };

                $.ajax({
                    type: "POST",
                    url: "../../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        var aux = parseFloat(data.row.value) * 1.13;
                        var torqueAux = parseFloat($("#toes_sel_act").val().split(",")[1]);

                        aux = aux / torqueAux;

                        $("#torquees_act").val(Math.round(aux));
                        $("#torquema_act").val(Math.round(2 * aux));
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_act"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function save_act() {

                var parametros = {
                    "ma_sel_act": $("#ma_sel_act").val(),
                    "tam_sel_act": $("#tam_sel_act").val(),
                    "cla_sel_act": $("#cla_sel_act").val(),
                    "toes_sel_act": $("#toes_sel_act").val(),
                    "toma_sel_act": $("#toma_sel_act").val(),
                    "modelore_act": $("#modelore_act").val(),
                    "maact_sel_act": $("#maact_sel_act").val(),
                    "refe_sel_act": $("#refe_sel_act").val(),
                    "tiac_sel_act": $("#tiac_sel_act").val(),
                    "moac_sel_act": $("#moac_sel_act").val(),
                    "pre_sel_act": $("#pre_sel_act").val(),
                    "torquees_act": $("#torquees_act").val(),
                    "torquema_act": $("#torquema_act").val(),
                    "trabajo_act": $("#trabajo_act").val(),
                    "maxpar_act": $("#maxpar_act").val(),
                    "maxparval_act": $("#maxparval_act").val(),
                    "pmin_act": $("#pmin_act").val(),
                    "tpmin_act": $("#tpmin_act").val(),
                    "ppmin_act": $("#ppmin_act").val(),
                    "pmax_act": $("#pmax_act").val(),
                    "tpmax_act": $("#tpmax_act").val(),
                    "ppmax_act": $("#ppmax_act").val(),
                    "idproyect": $("#proyects_sel_act").val(),
                    "vecmax_act": $("#vecmax_act").val(),
                    "opcion": $("#opt_act").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "id_act": 1,
                    "description_act": $("#description_act").val(),
                    "from": "act"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_act").val() == 2) {
                        parametros.id_act = $("#id_act").val();
                    }

                    $.ajax({
                        type: "POST",
                        url: "../../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#id_act").val(data.row.id);
                            $("#opt_act").val("2");
                            show_OkDialog($("#save_Dialog_act"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_act"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }


            function deleteReg_act() {
                //Confirmacion

                $("#dialog-confirm_act").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteconfirm_act();
                            $(this).dialog("close");
                        },
                        Cancelar: function () {
                            $(this).dialog("close");
                        }
                    }
                });
            }

            function deleteconfirm_act() {
                var parametros = {
                    "id_act": $("#id_act").val(),
                    "opcion": 3,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "act"
                };


                if ($("#opt_act").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "../../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#graficaLineal_act").html("");
                            cleanAll_act();
                            $("#id_act").val("");
                            $("#opt_act").val("1");
                            show_OkDialog($("#delete_Dialog_act"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_act"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });

                } else {
                    alert("You must load a record to be able to delete it");
                }
            }


        </script>

    </body>
</html>