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
                            <h2>This module validates the selection of safety valves to be installed in natural gas transport and distribution applications</h2>
                        </div>
                        <div class="col-lg-3"> 

                            <!-- Button trigger modal -->
                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_val()">
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
                                            <div id="div-table_val"></div>
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
                            <input  class="form-control" type="text" id="description_val" name="description_val"><br> 
                            Projects:
                            <select class="form-control" id="proyects_sel_val" name="proyects_sel_val"> </select>
                        </div>
                    </div>
                    <hr>

                    <div class="row">

                        <div class="col-lg-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Specified Equipment Data
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">

                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label>Trademark:</label>
                                                </div>
                                                <div id = "div_ma_sel_val">
                                                    <input class="form-control" type="text" id="ma_sel_val" name="ma_sel_val" onchange="onchange_Input_val(this)" required value="Segun vendor list.">
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label>Model:</label>
                                                </div>
                                                <div id = "div_mod_sel_val">
                                                    <select class="form-control" id="mod_sel_val" name="mod_sel_val"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <div>
                                                    <label>Body Size:</label>
                                                </div>
                                                <div id = "div_dim_sel_val">
                                                    <select class="form-control" id="dim_sel_val" name="dim_sel_val"> </select>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Shut Pressure:</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input value="250" class="form-control" type="text" id="presiondis_val" name="presiondis_val" onchange="onchange_Input_val(this)" required>
                                                </div>
                                                <div class="col-md-4" id = "div_spd_sel_val">
                                                    <select class="form-control" id="spd_sel_val" name="spd_sel_val" onchange="cleanOut_val()"> </select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Level of torable overpressure on line (min):</label> 
                                                </div>

                                                <div class="col-md-8">
                                                    <input value="0" class="form-control" type="text" id="nivelsobmin_val" name="nivelsobmin_val" onchange="onchange_Input_val(this)" required><br>
                                                </div>
                                                <div class="col-md-4" id="div_nsmin_sel_val">
                                                    <select class="form-control" id="nsmin_sel_val" name="nsmin_sel_val" onchange="cleanOut_val()"> </select>
                                                </div>

                                            </div>

                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Level of torable overpressure on line (max):</label>
                                                </div>

                                                <div class="col-md-8">
                                                    <input value="5"  class="form-control" type="text" id="nivelsobmax_val" name="nivelsobmax_val" onchange="onchange_Input_val(this)" required>
                                                </div>
                                                <div class="col-md-4" id="div_nsmax_sel_val">
                                                    <select class="form-control" id="nsmax_sel_val" name="nsmax_sel_val" disabled></select> 
                                                </div>

                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Base Pressure:</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input value="14.65" class="form-control" type="text" id="presionb_val" name="presionb_val" onchange="onchange_Input_val(this)" required>
                                                </div>
                                                <div class="col-md-4" id="div_pb_sel_val">
                                                    <select class="form-control" id="pb_sel_val" name="pb_sel_val"></select> 
                                                </div>

                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Maximum Flow of Operation:</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input value="23" class="form-control" type="text" id="flujomax_val" name="flujomax_val" onchange="onchange_Input_val(this)" required>
                                                </div>
                                                <div class="col-md-4" id="div_flujomax_sel_val">
                                                    <select class="form-control" id="flujomax_sel_val" name="flujomax_sel_val"></select> 
                                                </div>

                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Temperature of Operation:</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input value="85" class="form-control" type="text" id="tempope_val" name="tempope_val" onchange="onchange_Input_val(this)" required>
                                                </div>
                                                <div class="col-md-4" id="div_tempope_sel_val">
                                                    <select class="form-control" id="tempope_sel_val" name="tempope_sel_val"></select> 
                                                </div>

                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-12">
                                                    <label>Molecular Weight:</label>
                                                </div>
                                                <div class="col-md-8">
                                                    <input value="17.4" class="form-control" type="text" id="pesom_val" name="pesom_val" onchange="onchange_Input_val(this)" required>
                                                </div>
                                                <div class="col-md-4" id="div_pesom_sel_val">
                                                    <select class="form-control" id="pesom_sel_val" name="pesom_sel_val">
                                                        <option value="1">Lb/Lb mol</option>
                                                    </select> 
                                                </div>

                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Relation k = Cp/Cv</label>
                                                <input value="1.27" class="form-control" type="text" id="relak_val" name="relak_val" onchange="onchange_Input_val(this)" required >
                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Discharge coefficient(Kd):</label>
                                                <input value="0.975" class="form-control" type="text" id="coefdes_val" name="coefdes_val" onchange="onchange_Input_val(this)" required >

                                            </div>
                                            <div class="form-group col-lg-12">
                                                <label>Corretion Factor (Kb):</label>
                                                <input value="1" class="form-control" type="text" id="factcor_val" name="factcor_val" onchange="onchange_Input_val(this)" required >

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
                                                <label>Compressibility Factor:</label>
                                                <input class="form-control" type="text" id="factcomp_val"  readonly name="factcomp_val" onchange="onchange_Input_val(this)" required >

                                            </div>
                                            <div class="form-group">
                                                <label>Specific Model recomended:</label>
                                                <input type="text" id="modeloop_val" name="modeloop_val" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>% Work with maximum conditions:</label>
                                                <input type="text" id="trabajoop_val" name="trabajoop_val" readonly required class="form-control">
                                            </div> 
                                            <div class="form-group">
                                                <label>Flow Conditions:</label>            
                                                <input type="text" id="maxcapaop_val" name="maxcapaop_val" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Effective area required in2:</label>
                                                <input type="text" id="modeloev_val" name="modeloev_val" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Coeficient -C:</label>
                                                <input type="text" id="cval_val" name="cval_val" readonly required class="form-control">
                                            </div> 

                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    Recommended Orifice
                                                </div>
                                                <div class="panel-body">       
                                                    <div class="form-group col-md-12">           
                                                        <label>Orifice:</label>            
                                                        <input type="text" id="orificiorecom_val" name="orificiorecom_val" readonly required class="form-control">  
                                                    </div>
                                                    <div class="form-group col-md-12">           
                                                        <label>Area in2:</label>            
                                                        <input type="text" id="arearecom_val" name="arearecom_val" readonly required class="form-control">  
                                                    </div>
                                                    <div class="form-group col-md-12">           
                                                        <label id="labflujo_val">Flujo:</label>            
                                                        <input type="text" id="flujorecom_val" name="flurecom_val" readonly required class="form-control">  
                                                    </div>
                                                </div>
                                            </div>

                                            <input type="button" id="calculateBtn_val" name="calculateBtn_val" value="Calculate" onclick="calculate_val()" class="btn btn-info btn-block">
                                            <input type="button" id="saveBtn_val" name="saveBtn_val" value="Save" onclick="save_val()" class="btn btn-success btn-block">   
                                            <input type="button" id="delteBtn_val" name="delteBtn_val" value="Delete" onclick="delete_val()" class="btn btn-danger btn-block"> 
                                            <input type="button" id="datasheetgen_val" name="datasheetgen_val" value="Generate DataSheet" onclick="load_datasheet_val()" class="btn btn-success btn-block">   


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Plots
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div id="graficaLineal_val"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="col-md-3">
                                <input type="button" id="cleanAllBtn_val" name="cleanBtn_val" value="Clean All" onclick="cleanAll_val()" class="btn btn-warning btn-block">
                            </div>
                            <div class="col-md-3">
                                <input type="button" id="cleanInputBtn_val" name="cleanBtn_val" value="Clean Input Data" onclick="cleanIn_val()" class="btn btn-warning btn-block">
                            </div>
                            <div class="col-md-3">
                                <input type="button" id="cleanOutputBtn_val" name="cleanBtn_val" value="Clean Output Data" onclick="cleanOut_val()" class="btn btn-warning btn-block">
                            </div>

                        </div>
                    </div>

                    <div id="load_Dialog_val" title="Basic dialog" style='display:none;'>
                        <p>Successfully uploaded data</p>
                    </div>

                    <div id="save_Dialog_val" title="Basic dialog" style='display:none;'>
                        <p>Data saved successfully</p>
                    </div>

                    <div id="error_Dialog_val" title="Basic dialog" style='display:none;'>
                        <p>An error has occurred in the process</p>
                    </div>

                    <div id="calculate_Dialog_val" title="Basic dialog" style='display:none;'>
                        <p>Calculation done successfully</p>
                    </div>

                    <div id="delete_Dialog_val" title="Basic dialog" style='display:none;'>
                        <p>Successfully deleted record</p>
                    </div>

                    <div id="dialog-confirm_val" title="Delete record" style='display:none;'>
                        <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                            Are you sure you want to permanently delete this record?
                        </p>
                    </div>
                    <input type="hidden" id="id_val" name="id_val">  
                    <input type="hidden" id="opt_val" name="opt_val"> 
                    <input type="hidden" id="op1g_val" name="op1g_val"> 
                    <input type="hidden" id="op2g_val" name="op2g_val">
                </div>
            </div>
        </div>


        <script>



            $(document).ready(function () {
                $("#opt_val").val("1");
                load_modelo_val();
                load_dime_val();
                load_fluE_sel_val();
                load_press_sel_val();
                load_temp_sel_val();

                document.getElementById("spd_sel_val").disabled = true;
                document.getElementById("nsmin_sel_val").disabled = true;
                document.getElementById("nsmax_sel_val").disabled = true;
                document.getElementById("pb_sel_val").disabled = true;
                document.getElementById("pesom_sel_val").disabled = true;

                $("#flujomax_sel_val").val("71,MMSCFD");
                $("#tempope_sel_val").val("3,F");

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_val"),
                        $("#error_Dialog_val"));


            });

            function setGrafica_val() {

                var temp = parseFloat($("#tempope_val").val()) + 460;
                var ini = parseFloat($("#presiondis_val").val().replace(",", "")) - 30;
                var fin = parseFloat($("#presiondis_val").val().replace(",", "")) + 40;
                var areacom = parseFloat($("#arearecom_val").val().replace(",", ""));
                var kd = (parseFloat($("#coefdes_val").val().replace(",", "")));
                var minp = (parseFloat($("#nivelsobmin_val").val().replace(",", "")));
                var maxp = (parseFloat($("#nivelsobmax_val").val().replace(",", "")));
                var c = (parseFloat($("#cval_val").val().replace(",", "")));
                var kb = (parseFloat($("#factcor_val").val().replace(",", "")));
                var z = (parseFloat($("#factcomp_val").val().replace(",", "")));
                var pesomol = (parseFloat($("#pesom_val").val().replace(",", "")));
                var fmax = (parseFloat($("#flujomax_val").val().replace(",", "")));

                var valX = [];
                var valY = [];
                var data = [];
                for (var i = ini; i < fin; i = i + 10) {
                    var a = 6.32 * areacom * kd * (i + Math.max(minp, maxp) + 14.65) * c * kb / (Math.pow(z * temp * pesomol, 0.5));

                    valX[valX.length] = i;
                    valY[valX.length] = a;
                }

                var val = {
                    x: valX,
                    y: valY,
                    mode: 'Lines',
                    name: 'Capacity'
                };

                var x = fmax * (1 / 60);
                //alert(x);
                
                var pOpe = {
                    x: [fin - 40, fin - 40],
                    y: [0, x],
                    mode: 'Markers',
                    name: 'Operation Line'
                };

                var data = [val, pOpe];

                $("#graficaLineal_val").html("");

                var layout = {
                    title: 'Actuator',
                    xaxis: {
                        title: 'Dischargue Pressure [PSIG]'
                    },
                    yaxis: {
                        title: 'Valve Capacity [SCFM]'
                    }
                };

                Plotly.newPlot('graficaLineal_val', data, layout);
            }

            function load_modelo_val() {
                var parametros = {
                    "combo": 'valseg',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='mod_sel_val' id= 'mod_sel_val'>" + data;
                        $("#div_mod_sel_val").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_val"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_dime_val() {
                var parametros = {
                    "combo": 'modval',
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='dim_sel_val' id= 'dim_sel_val'>" + data;
                        $("#div_dim_sel_val").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_val"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });


            }

            function load_history_val() {
                var parametros = {
                    "idproyect": $("#proyects_sel_val").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "type": "rotatorio",
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "val"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_val").val("1");
                        $("#id_val").val("");
                        cleanAll_val();
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
                                    html += "<td>" + data.historial[i].description_val + "</td>";
                                    html += "<td><a href='#' onClick='load_form_val(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_val").empty();
                        $("#div-table_val").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_val"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_fluE_sel_val() {
                var parametros = {
                    "combo": "fluE",
                    "opcion": "5",
                    "from": "val"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = '<select class="form-control" name="flujomax_sel_val" id="flujomax_sel_val" onchange="cleanOut_val()">' + data;
                        $("#div_flujomax_sel_val").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_val"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_val() {
                var parametros = {
                    "combo": "temp",
                    "opcion": "5",
                    "from": "val"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = '<select class="form-control" name="tempope_sel_val" id="tempope_sel_val" onchange="cleanOut_val()">' + data;
                        $("#div_tempope_sel_val").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_val"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_press_sel_val() {
                var parametros = {
                    "combo": "presel",
                    "opcion": "5",
                    "from": "val"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='spd_sel_val' id= 'spd_sel_val' onchange='cleanOut_val()'>" + data;
                        $("#div_spd_sel_val").html(newHtml);

                        newHtml = "<select class='form-control' name='nsmin_sel_val' id= 'nsmin_sel_val' onchange='cleanOut_val()'>" + data;
                        $("#div_nsmin_sel_val").html(newHtml);

                        newHtml = "<select class='form-control' name='nsmax_sel_val' id= 'nsmax_sel_val' onchange='cleanOut_val()'>" + data;
                        $("#div_nsmax_sel_val").html(newHtml);

                        newHtml = "<select class='form-control' name='pb_sel_val' id= 'pb_sel_val' onchange='cleanOut_val()'>" + data;
                        $("#div_pb_sel_val").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_val"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_val(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "val"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_val();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }

                            $("#proyects_sel_val").val(data.row["id_proyect"]);
                            $("#opt_val").val("2");
                            $("#id_val").val(data.row.id);
                        } else {
                            $("#opt_val").val("1");
                        }

                        setGrafica_val();

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_val").val("1");
                        show_OkDialog($("#error_Dialog_val"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_val() {
                $("#modeloop_val").val("");
                $("#maxcapaop_val").val("");
                $("#trabajoop_val").val("");
                $("#modeloev_val").val("");
                $("#orificiorecom_val").val("");
                $("#cval_val").val("");
                $("#factcomp_val").val("");
                $("#arearecom_val").val("");
                $("#flujorecom_val").val("");
            }

            function cleanIn_val() {
                $("#ma_sel_val").val("");
                $("#presiondis_val").val("");
                $("#nivelsobmin_val").val("");
                $("#nivelsobmax_val").val("");
                $("#presionb_val").val("");
            }

            function cleanAll_val() {
                cleanIn_val();
                cleanOut_val();
                $("#description_val").val("");
            }

            function onchange_Input_val(inp) {

                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_val();

            }

            function calculate_val() {

                var variables = {
                    "presiondis_val": $("#presiondis_val").val(),
                    "tempope_val": $("#tempope_val").val(),
                    "coefdes_val": $("#coefdes_val").val(),
                    "relak_val": $("#relak_val").val(),
                    "presionb_val": $("#presionb_val").val(),
                    "factcor_val": $("#factcor_val").val(),
                    "flujomax_val": $("#flujomax_val").val(),
                    "nivelsobmin_val": $("#nivelsobmin_val").val(),
                    "nivelsobmax_val": $("#nivelsobmax_val").val(),
                    "pesom_val": $("#pesom_val").val(),
                    "dim_sel_val": $("#dim_sel_val").val()
                };

                var uni = {
                    "tempope_sel_val": $("#tempope_sel_val").val().split(",")[1],
                    "flujomax_sel_val": $("#flujomax_sel_val").val().split(",")[1],
                    "mod_sel_val": $("#mod_sel_val").val().split(",")[1]
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var res = valvulas_Form(variables, uni);
                    $("#factcomp_val").val(res[0]);
                    $("#maxcapaop_val").val(res[1]);
                    $("#modeloev_val").val(res[2]);
                    $("#cval_val").val(res[3]);
                    $("#orificiorecom_val").val(res[4]);
                    $("#arearecom_val").val(res[5]);
                    $("#flujorecom_val").val(res[6]);
                    $("#modeloop_val").val(res[8]);
                    $("#trabajoop_val").val(res[9] * 100);


                    $("#labflujo_val").html("Flujo " + res[7] + ": ");

                    $("#op1g_val").val(res[10]);
                    $("#op2g_val").val(res[11]);

                    setGrafica_val();
                    show_OkDialog($("#calculate_Dialog_val"), "Satisfactory process");

                }
            }

            function save_val() {

                var parametros = {
                    "ma_sel_val": $("#ma_sel_val").val(),
                    "mod_sel_val": $("#mod_sel_val").val(),
                    "dim_sel_val": $("#dim_sel_val").val(),
                    "presiondis_val": $("#presiondis_val").val(),
                    "nivelsobmin_val": $("#nivelsobmin_val").val(),
                    "nivelsobmax_val": $("#nivelsobmax_val").val(),
                    "presionb_val": $("#presionb_val").val(),
                    "spd_sel_val": $("#spd_sel_val").val(),
                    "nsmin_sel_val": $("#nsmin_sel_val").val(),
                    "nsmax_sel_val": $("#nsmax_sel_val").val(),
                    "pb_sel_val": $("#pb_sel_val").val(),
                    "modeloop_val": $("#modeloop_val").val(),
                    "trabajoop_val": $("#trabajoop_val").val(),
                    "maxcapaop_val": $("#maxcapaop_val").val(),
                    "modeloev_val": $("#modeloev_val").val(),
                    "cval_val": $("#cval_val").val(),
                    "orificiorecom_val": $("#orificiorecom_val").val(),
                    "tempope_val": $("#tempope_val").val(),
                    "coefdes_val": $("#coefdes_val").val(),
                    "relak_val": $("#relak_val").val(),
                    "factcor_val": $("#factcor_val").val(),
                    "flujomax_val": $("#flujomax_val").val(),
                    "pesom_val": $("#pesom_val").val(),
                    "factcomp_val": $("#factcomp_val").val(),
                    "arearecom_val": $("#arearecom_val").val(),
                    "flujorecom_val": $("#flujorecom_val").val(),
                    "flujomax_sel_val": $("#flujomax_sel_val").val(),
                    "tempope_sel_val": $("#tempope_sel_val").val(),
                    "pesom_sel_val": $("#pesom_sel_val").val(),
                    "op1g_val": $("#op1g_val").val(),
                    "op2g_val": $("#op2g_val").val(),
                    "idproyect": $("#proyects_sel_val").val(),
                    "opcion": $("#opt_val").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "id_val": 1,
                    "description_val": $("#description_val").val(),
                    "type": "rotatorio",
                    "from": "val"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_val").val() == 2) {
                        parametros.id_val = $("#id_val").val();
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
                            $("#id_val").val(data.row.id);
                            $("#opt_val").val("2");
                            show_OkDialog($("#save_Dialog_val"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_val"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_val() {

                //Confirmacion
                if ($("#opt_val").val() == 2) {
                    $("#dialog-confirm_val").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_val();
                                $(this).dialog("close");
                            },
                            Cancelar: function () {
                                $(this).dialog("close");
                            }
                        }
                    });
                } else {
                    alert("You must load a record to be able to delete it");
                }
            }

            function deleteReg_val() {
                var parametros = {
                    "id_val": $("#id_val").val(),
                    "opcion": 3,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "val"
                };


                if ($("#opt_val").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            cleanAll_val();
                            $("#id_val").val("");
                            $("#opt_val").val("1");
                            show_OkDialog($("#delete_Dialog_val"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_val"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });

                } else {
                    alert("You must load a log to be able to delete it");
                }
            }

            function load_datasheet_val() {
                var parametros = {
                    "opcion": "102",
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "proyecto": $("#proyects_sel_val option:selected").text(),
                    "from": "val"

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
                        window.location = "bajar.jsp?filename=" + file + "&path=" + path;

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_val"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            }



        </script>
    </body>
</html>