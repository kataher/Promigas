<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="../../includehead2.html" %>
    </head>

    <body>
        <div class="row">
            <div class="col-lg-9">
                <h2><strong>Pipe Testing:</strong> 6.1. Pipeline Hydrostatic Testing</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_phy()">
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
                                <div id="div-table_phy"></div>
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
                <input  class="form-control" type="text" id="description_phy" name="description_phy"><br>
                Projects:
                <select class="form-control" id="proyects_sel_phy" name="proyects_sel_phy"> </select>
            </div>
        </div>
        <hr>
        <div class="col-lg-7">

            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">

                            <div class="col-lg-12">

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Pipe
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <input type="radio" id = "pipe1_phy" name="pipe_rad_phy" value="pipe1_phy" onchange="onchange_pipe_rad_phy()" required> Pipe - Specification API 5L <br>
                                                        <input type="radio" id = "pipe2_phy" name="pipe_rad_phy" value="pipe2_phy" onchange="onchange_pipe_rad_phy()" required> Standard steel pipe- ASTM - ANSI B36.10
                                                    </div>
                                                </div>                                    

                                                <div class="form-group">
                                                    <label>Nominal pipe size:</label>
                                                    <div id="div_nomps_sel_phy">
                                                        <select class="form-control" id="nomps_sel_phy" name="nomps_sel_phy"> </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Wall Thickness:</label>
                                                    <div id="div_wallt_sel_phy">
                                                        <select class="form-control" id="wallt_sel_phy" name="wallt_sel_phy"> </select>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Height:</label>
                                </div>
                                <div class="col-md-8">
                                    <input value = "0" class="form-control" type="text" id="enteree_phy" name="enteree_phy" onchange="onchange_Input_phy(this)" required>
                                </div>
                                <div class="col-md-4" id="div_h_sel_phy">
                                    <select class="form-control" id="h_sel_phy" name="h_sel_phy"> </select>
                                </div>
                            </div>
                            <div class="form-group col-md-12">
                                <label>Wall Thickness:</label>
                                <input class="form-control" type="text" id="pipew_phy" name="pipew_phy" onchange="onchange_Input_phy(this)" required>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>External pipe diameter:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" value="24" id="pipeo_phy" name="pipeo_phy" onchange="onchange_Input_phy(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_po_sel_phy">
                                    <select class="form-control" id="po_sel_phy" name="po_sel_phy"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Internal diameter of the pipe:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" value="24" id="pipei_phy" name="pipei_phy" onchange="onchange_Input_phy(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_pi_sel_phy">
                                    <select class="form-control" id="pi_sel_phy" name="pi_sel_phy"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Test pressure:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" value="693" id="testp_phy" name="testp_phy" onchange="onchange_Input_phy(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_tp_sel_phy">
                                    <select class="form-control" id="tp_sel_phy" name="tp_sel_phy"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Test temperature:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" value="65" id="testt_phy" name="testt_phy" onchange="onchange_Input_phy(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_tt_sel_phy">
                                    <select class="form-control" id="tt_sel_phy" name="tt_sel_phy"> </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Length of pipe:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" value="1000" id="pipelinel_phy" name="pipelinel_phy" onchange="onchange_Input_phy(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_pl_sel_phy">
                                    <select class="form-control" id="pl_sel_phy" name="pl_sel_phy"> </select>
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
                    Results
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label>Compressibility of water according to increased pressure:</label>
                                <input type="text" id="waterc_phy" name="waterc_phy" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Volume change according to increased pressure: </label>
                                <input type="text" id="volumec_phy" name="volumec_phy" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Volume change according to temperature change: </label>            
                                <input type="text" id="volumect_phy" name="volumect_phy" readonly required class="form-control">
                            </div> 
                            <div class="form-group">
                                <label>Thermal change in specific volume of water: </label>            
                                <input type="text" id="thermalc_phy" name="thermalc_phy" readonly required class="form-control">
                            </div> 
                            <div class="form-group">
                                <label>Change of volume according to Pipe / Water ratio: </label>            
                                <input type="text" id="volumecr_phy" name="volumecr_phy" readonly required class="form-control">
                            </div> 
                            <div class="form-group">
                                <label>Pipe Filling Volume [Gallons]: </label>            
                                <input type="text" id="pipelinef_phy" name="pipelinef_phy" readonly required class="form-control">
                            </div> 
                            <div class="form-group">
                                <label>Required volume for hydrostatic test [Gallons]: </label>            
                                <input type="text" id="volumer_phy" name="volumer_phy" readonly required class="form-control">
                            </div> 
                            <div class="form-group">
                                <label>Incremental volume required for hydrostatic test [Gallons]: </label>            
                                <input type="text" id="incrementalv_phy" name="incrementalv_phy" readonly required class="form-control">
                            </div> 
                            <div class="form-group">
                                <label>Compressibility factor for water [in3 / in3 / Psig]X 10-6: </label>            
                                <input type="text" id="compf_phy" name="compf_phy" readonly required class="form-control">
                            </div> 
                            <div class="form-group">
                                <label>Pressure change  [Psi/°F]: </label>            
                                <input type="text" id="pressurec_phy" name="pressurec_phy" readonly required class="form-control">
                            </div> 
                            <input type="button" id="calculateBtn_phy" name="calculateBtn_phy" value="Calculate" onclick="calculate_phy()" class="btn btn-info btn-block">
                            <input type="button" id="saveBtn_phy" name="saveBtn_phy" value="Save" onclick="save_phy()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn_phy" name="delteBtn_phy" value="Delete" onclick="delete_phy()" class="btn btn-danger btn-block">
                            <input type="button" id="cleanAllBtn_phy" name="cleanBtn_phy" value="Clean All Data" onclick="cleanAll_phy()" class="btn btn-warning btn-block">
                            <input type="button" id="cleanInputBtn_phy" name="cleanBtn_phy" value="Clean Input Data" onclick="cleanIn_phy()" class="btn btn-warning btn-block">
                            <input type="button" id="cleanOutputBtn_phy" name="cleanBtn_phy" value="Clean Output Data" onclick="cleanOut_phy()" class="btn btn-warning btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <input type="hidden" id="id_phy" name="id_phy">  
        <input type="hidden" id="opt_phy" name="opt_phy">

        <script>
            $(document).ready(function () {
                
                $('#pipe1_phy').attr('checked', 'checked');
                $("#opt_phy").val("1");

                load_np_sel_phy("5l", true);
                load_temp_sel_phy();
                load_pres_sel_phy();
                load_len_sel_phy();
                load_in_sel_phy();
                load_he_sel_phy();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_phy"),
                        $("#error_Dialog_phy"));

            });

            function load_np_sel_phy(type, sw) {
                var parametros = {
                    "combo": "npsn",
                    "type": type,
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='nomps_sel_phy' id= 'nomps_sel_phy' onchange='onchange_nps_phy()'>" + data;
                        $("#div_nomps_sel_phy").html(newHtml);

                        var po = $("#nomps_sel_phy").val();
                        $("#pipeo_phy").val(po);

                        if (sw == true) {
                            load_wt_sel_phy();
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_phy"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_phy() {
                var parametros = {
                    "combo": "temp",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='tt_sel_phy' id= 'tt_sel_phy' >" + data;
                        $("#div_tt_sel_phy").html(newHtml);

                        $("#tt_sel_phy").val("3,F");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_phy"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_pres_sel_phy() {
                var parametros = {
                    "combo": "pres",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='tp_sel_phy' id= 'tp_sel_phy' >" + data;
                        $("#div_tp_sel_phy").html(newHtml);

                        $("#tp_sel_phy").val("65,psig");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_phy"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_len_sel_phy() {
                var parametros = {
                    "combo": "len",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='pl_sel_phy' id= 'pl_sel_phy' onchange='cleanOut_phy()'>" + data;
                        $("#div_pl_sel_phy").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_phy"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_he_sel_phy() {
                var parametros = {
                    "combo": "he",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = newHtml = "<select class='form-control' name='h_sel_phy' id= 'h_sel_phy' >" + data;
                        $("#div_h_sel_phy").html(newHtml);


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_phy"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_in_sel_phy() {
                var parametros = {
                    "combo": "in2",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' name='po_sel_phy' id= 'po_sel_phy' >" + data;
                        $("#div_po_sel_phy").html(newHtml);

                        newHtml = "<select class='form-control' name='pi_sel_phy' id= 'pi_sel_phy' >" + data;
                        $("#div_pi_sel_phy").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_phy"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_wt_sel_phy() {

                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nomps_sel_phy").val(),
                    "opcion": "5",
                    "async": false
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {

                        var newHtml = "<select class='form-control' name='wallt_sel_phy' id= 'wallt_sel_phy' onchange='onchange_wt_phy()'>" + data;
                        $("#div_wallt_sel_phy").html(newHtml);

                        if (data.trim() != "") {
                            var val = $("#wallt_sel_phy").val().trim().split(",");
                            $("#pipew_phy").val(val[1]);
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_phy"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_nps_phy() {
                cleanOut_phy();
                load_wt_sel_phy();
                var po = $("#nomps_sel_phy").val();
                $("#pipeo_phy").val(po);
                calculateIDP_phy();
            }

            function onchange_wt_phy() {
                cleanOut_phy();
                var val = $("#wallt_sel_phy").val().trim().split(",");
                $("#pipew_phy").val(val[1]);

                calculateIDP_phy();
            }

            function onchange_pipe_rad_phy() {
                var sel = $("input[type='radio'][name='pipe_rad_phy']:checked");
                if (sel.val() === "pipe1_phy") {
                    load_np_sel_phy("5l", true);

                } else {
                    load_np_sel_phy("astm", true);
                }

            }

            function onchange_Input_phy(inp) {
                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                } else {
                    if (inp.name == "pipew_phy" || inp.name == "pipeo_phy") {
                        calculateIDP_phy();
                    }
                }

                onchange_Input_zero(inp);

                cleanOut_phy();
            }

            function load_history_phy() {
                var parametros = {
                    "idproyect": $("#proyects_sel_phy").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "phy"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_phy").val("1");
                        $("#id_phy").val(""); //CAMBIAR EN TODAS LAS VISTAS
                        cleanAll_phy();
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
                                    html += "<td>" + data.historial[i].description_phy + "</td>";
                                    html += "<td><a href='#' onClick='load_form_phy(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_phy").empty();
                        $("#div-table_phy").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_phy"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_phy(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "phy"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_phy();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "pipe_rad_phy")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }
                            if (data.row["pipe_rad_phy"] === "pipe1_phy") {
                                document.getElementById("pipe1_phy").checked = true;
                                load_np_sel_phy("5l", false);
                            } else {
                                document.getElementById("pipe2_phy").checked = true;
                                load_np_sel_phy("astm", false);
                            }

                            $("#nomps_sel_phy").val(data.row.nomps_sel_phy);
                            load_wt_sel_phy();
                            $("#wallt_sel_phy").val(data.row.wallt_sel_phy);

                            $("#proyects_sel_phy").val(data.row.id_proyect);
                            $("#opt_phy").val("2");
                            $("#id_phy").val(data.row.id);
                        } else {
                            $("#opt_phy").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_phy").val("1");
                        show_OkDialog($("#error_Dialog_phy"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_phy() {
                $("#waterc_phy").val("");
                $("#volumec_phy").val("");
                $("#volumect_phy").val("");
                $("#thermalc_phy").val("");
                $("#volumecr_phy").val("");
                $("#pipelinef_phy").val("");
                $("#volumer_phy").val("");
                $("#incrementalv_phy").val("");
                $("#compf_phy").val("");
                $("#pressurec_phy").val("");
            }

            function cleanIn_phy() {
                $("#pipeo_phy").val("");
                $("#pipei_phy").val("");
                $("#testp_phy").val("");
                $("#testt_phy").val("");
                $("#pipelinel_phy").val("");
                $("#enteree_phy").val("");
                $("#pipew_phy").val("");
            }

            function cleanAll_phy() {
                cleanIn_phy();
                cleanOut_phy();
                $("#description_phy").val("");
            }

            function calculate_phy() {

                var variables = {
                    "enteree_phy": $("#enteree_phy").val().replace(",", ""),
                    "pipeo_phy": $("#pipeo_phy").val().replace(",", ""),
                    "pipei_phy": $("#pipei_phy").val().replace(",", ""),
                    "testp_phy": $("#testp_phy").val().replace(",", ""),
                    "testt_phy": $("#testt_phy").val().replace(",", ""),
                    "pipelinel_phy": $("#pipelinel_phy").val().replace(",", ""),
                    "pipew_phy": $("#pipew_phy").val().replace(",", "")
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {
                    var unidades = {
                        "tt_sel_phy": $("#tt_sel_phy").val().split(",")[1],
                        "h_sel_phy": $("#h_sel_phy").val().split(",")[1],
                        "po_sel_phy": $("#po_sel_phy").val().split(",")[1],
                        "pi_sel_phy": $("#pi_sel_phy").val().split(",")[1],
                        "tp_sel_phy": $("#tp_sel_phy").val().split(",")[1],
                        "pl_sel_phy": $("#pl_sel_phy").val().split(",")[1]
                    };

                    var res = pipelinehydrostatic_Form(variables, unidades);

                    $("#waterc_phy").val(res[0]);
                    $("#volumec_phy").val(res[1]);
                    $("#volumect_phy").val(res[2]);
                    $("#thermalc_phy").val(res[3]);
                    $("#volumecr_phy").val(res[4]);
                    $("#pipelinef_phy").val(res[5]);
                    $("#volumer_phy").val(res[6]);
                    $("#incrementalv_phy").val(res[7]);
                    $("#compf_phy").val(res[8]);
                    $("#pressurec_phy").val(res[9]);


                    show_OkDialog($("#calculate_Dialog_phy"), "Satisfactory process");
                }
            }

            function save_phy() {
                var sel = $("input[type='radio'][name='pipe_rad_phy']:checked");

                var parametros = {
                    "pipeo_phy": $("#pipeo_phy").val(),
                    "pipei_phy": $("#pipei_phy").val(),
                    "testp_phy": $("#testp_phy").val(),
                    "testt_phy": $("#testt_phy").val(),
                    "pipelinel_phy": $("#pipelinel_phy").val(),
                    "waterc_phy": $("#waterc_phy").val(),
                    "volumec_phy": $("#volumec_phy").val(),
                    "thermalc_phy": $("#thermalc_phy").val(),
                    "volumect_phy": $("#volumect_phy").val(),
                    "volumecr_phy": $("#volumecr_phy").val(),
                    "pipelinef_phy": $("#pipelinef_phy").val(),
                    "volumer_phy": $("#volumer_phy").val(),
                    "incrementalv_phy": $("#incrementalv_phy").val(),
                    "compf_phy": $("#compf_phy").val(),
                    "pressurec_phy": $("#pressurec_phy").val(),
                    "pipew_phy": $("#pipew_phy").val(),
                    "enteree_phy": $("#enteree_phy").val(),
                    "h_sel_phy": $("#h_sel_phy").val(),
                    "pipe_rad_phy": sel.val(),
                    "nomps_sel_phy": $("#nomps_sel_phy").val(),
                    "wallt_sel_phy": $("#wallt_sel_phy").val(),
                    "po_sel_phy": $("#po_sel_phy").val(),
                    "pi_sel_phy": $("#pi_sel_phy").val(),
                    "tp_sel_phy": $("#tp_sel_phy").val(),
                    "tt_sel_phy": $("#tt_sel_phy").val(),
                    "pl_sel_phy": $("#pl_sel_phy").val(),
                    "idproyect": $("#proyects_sel_phy").val(),
                    "opcion": $("#opt_phy").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "id_phy": 1,
                    "description_phy": $("#description_phy").val(),
                    "from": "phy"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("Debe realizar el càlculo");
                } else {

                    if ($("#opt_phy").val() == 2) {
                        parametros.id_phy = $("#id_phy").val();
                    }

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#id_phy").val(data.row.id);
                            $("#opt_phy").val("2");
                            show_OkDialog($("#save_Dialog_phy"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_phy"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }

            }

            function delete_phy() {

                //Confirmacion
                if ($("#opt_phy").val() == 2) {
                    $("#dialog-confirm_phy").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_phy();
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

            function deleteReg_phy() {
                var parametros = {
                    "id_phy": $("#id_phy").val(),
                    "opcion": "3",
                    "from": "phy",
                    "iduser": <% out.print(session.getAttribute("idusu"));%>
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_phy").val("");
                        $("#opt_phy").val("1");
                        cleanAll_phy();
                        show_OkDialog($("#delete_Dialog_phy"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_phy"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function calculateIDP_phy() {

                var esp = parseFloat($("#pipew_phy").val());
                var de = parseFloat($("#pipeo_phy").val());

                var di = de - 2 * esp;
                $("#pipei_phy").val(di);

                cleanOut_phy();


            }

        </script>

        <div id="load_Dialog_phy" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_phy" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_phy" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_phy" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_phy" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="dialog-confirm_phy" title="Delete record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
            <p>Are you sure you want to permanently delete this record?</p>
        </div>
    </body>
</html>