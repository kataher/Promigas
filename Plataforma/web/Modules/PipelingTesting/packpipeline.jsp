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
                <h2><strong>Pipe Testing:</strong> 6.3. Gas pipeline package</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_pap()">
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
                                <div id="div-table_pap"></div>
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
                <input  class="form-control" type="text" id="description_pap" name="description_pap"><br>
                Projects:
                <select class="form-control" id="proyects_sel_pap" name="proyects_sel_pap"> </select>
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
                                                        <input type="radio" id = "pipe1_pap" name="pipe_rad_pap" value="pipe1_pap" onchange="onchange_pipe_rad_pap()" required> Pipe - Specification API 5L <br>
                                                        <input type="radio" id = "pipe2_pap" name="pipe_rad_pap" value="pipe2_pap" onchange="onchange_pipe_rad_pap()" required> Standard steel pipe- ASTM - ANSI B36.10
                                                    </div>
                                                </div>                                    

                                                <div class="form-group">
                                                    <label>Nominal pipe size:</label>
                                                    <div id="div_nomps_sel_pap">
                                                        <select class="form-control" id="nomps_sel_pap" name="nomps_sel_pap"> </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Wall Thickness:</label>
                                                    <div id="div_wallt_sel_pap">
                                                        <select class="form-control" id="wallt_sel_pap" name="wallt_sel_pap"> </select>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Heigth:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="h_pap" name="h_pap" onchange="onchange_Input_pap(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_h_sel_pap">
                                    <select class="form-control" id="h_sel_pap" name="h_sel_pap"> </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Gas Average Temperature:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="gasavetemp_pap" name="gasavetemp_pap" onchange="onchange_Input_pap(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_gat_sel_pap">
                                    <select class="form-control" id="gat_sel_pap" name="gat_sel_pap"> </select>
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Base Pressure:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="basep_pap" name="basep_pap" onchange="onchange_Input_pap(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_bp_sel_pap">
                                    <select class="form-control" id="bp_sel_pap" name="bp_sel_pap"> </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Upstream Pressure:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="upstreamp_pap" name="upstreamp_pap" onchange="onchange_Input_pap(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_up_sel_pap">
                                    <select class="form-control" id="up_sel_pap" name="up_sel_pap"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Downstream Pressure:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="downstreamp_pap" name="downstreamp_pap" onchange="onchange_Input_pap(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_dp_sel_pap">
                                    <select class="form-control" id="dp_sel_pap" name="dp_sel_pap"> </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Internal Pipe Diameter:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="internalp_pap" name="internalp_pap" onchange="onchange_Input_pap(this)" required>
                                </div>
                                <div class="col-md-4" id = "div_ip_sel_pap">
                                    <select class="form-control" id="ip_sel_pap" name="ip_sel_pap"> </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Length of pipeline:</label>
                                </div>
                                <div class="col-md-8">
                                    <input class="form-control" type="text" id="lenghtp_pap" name="lenghtp_pap" onchange="onchange_Input_pap(this)" required>
                                </div>
                                <div class="col-md-4" id="div_lp_sel_pap">
                                    <select class="form-control" id="lp_sel_pap" name="lp_sel_pap" onchange="cleanOut_pap()"> </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Select option:</label>
                                </div>
                                <div class="col-md-8" id="div_gs_sel_pap">
                                    <select class="form-control" id="gs_sel_pap" name="gs_sel_pap" onchange="onchange_gravity_pap()"></select> 
                                </div>
                                <div class="col-md-4">
                                    <input class="form-control" type="text" id="gst_pap" name="gst_pap" onchange="onchange_Input_pap(this)" required>
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
                                <label>Average Pressure [psia]:</label>
                                <input type="text" id="averagep_pap" name="blowndownt_pap" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Average Compressibility Factor:</label>
                                <input type="text" id="averagec_pap" name="blowndownt_pap" readonly required class="form-control">
                            </div>
                            <div class="form-group">
                                <label>Pack in Gas Pipeline [scf]:</label>
                                <input type="text" id="packg_pap" name="blowndownt_pap" readonly required class="form-control">
                            </div>
                            <input type="button" id="calculateBtn_pap" name="calculateBtn_pap" value="Calculate" onclick="calculate_pap()" class="btn btn-info btn-block">
                            <input type="button" id="saveBtn_pap" name="saveBtn_pap" value="Save" onclick="save_pap()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn_pap" name="delteBtn_pap" value="Delete" onclick="delete_pap()" class="btn btn-danger btn-block">
                            <input type="button" id="cleanAllBtn_pap" name="cleanBtn_pap" value="Clean All Data" onclick="cleanAll_pap()" class="btn btn-warning btn-block">
                            <input type="button" id="cleanInputBtn_pap" name="cleanBtn_pap" value="Clean Input Data" onclick="cleanIn_pap()" class="btn btn-warning btn-block">
                            <input type="button" id="cleanOutputBtn_pap" name="cleanBtn_pap" value="Clean Output Data" onclick="cleanOut_pap()" class="btn btn-warning btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <input type="hidden" id="id_pap" name="id_pap">   
        <input type="hidden" id="opt_pap" name="opt_pap">   

        <script>
            $(document).ready(function () {
                $('#pipe1_pap').attr('checked', 'checked');
                $('#opt_pap').val("1");

                load_np_sel_pap("npsn");
                load_pres_sel_pap();
                load_lenght_sel_pap();
                load_in_sel_pap();
                load_gs_sel_pap();
                load_le_sel_pap();
                //load_wt_sel_pap();
                load_temp_sel_pap();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_pap"),
                        $("#error_Dialog_pap"));
            });

            function load_history_pap() {
                var parametros = {
                    "idproyect": $("#proyects_sel_pap").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "pap"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        $("#opt_pap").val("1");
                        $("#id_pap").val("");
                        cleanAll_pap();
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
                            html += "<th>Code</th>";
                            html += "<th>Description</th>";
                            html += "<th>Load</th>";
                            html += "</tr>";
                            html += "</thead>";
                            if (tamano > 0) {

                                html += '<tbody>';
                                for (var i = 0; i < tamano; i++) {
                                    html += "<tr>";
                                    html += "<td>" + data.historial[i].date + "</td>";
                                    html += "<td>" + data.historial[i].id + "</td>";
                                    html += "<td>" + data.historial[i].description_pap + "</td>";
                                    html += "<td><a href='#' onClick='load_form_pap(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_pap").empty();
                        $("#div-table_pap").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pap"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_gs_sel_pap() {
                var parametros = {
                    "combo": "gs_sel",
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
                        var newHtml = "<select class='form-control' name='gs_sel_pap' id='gs_sel_pap' onchange='onchange_gravity_pap()'>" + data;
                        $("#div_gs_sel_pap").html(newHtml);
                        $("#gst_pap").val($("#gs_sel_pap").val().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pap"), "Error");
                        show_OkDialog(err, "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_pres_sel_pap() {
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
                        var newHtml = "<select class='form-control' name='bp_sel_pap' id= 'bp_sel_pap' >" + data;
                        $("#div_bp_sel_pap").html(newHtml);

                        newHtml = "<select class='form-control' name='up_sel_pap' id= 'up_sel_pap' >" + data;
                        $("#div_up_sel_pap").html(newHtml);

                        newHtml = "<select class='form-control' name='dp_sel_pap' id= 'dp_sel_pap' >" + data;
                        $("#div_dp_sel_pap").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pap"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_lenght_sel_pap() {
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
                        var newHtml = "<select class='form-control' name='lp_sel_pap' id= 'lp_sel_pap' onchange='cleanOut_pap()'>" + data;
                        $("#div_lp_sel_pap").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pap"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_le_sel_pap() {
                var parametros = {
                    "combo": "he",
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
                        var newHtml = "<select class='form-control' name='h_sel_pap' id= 'h_sel_pap' >" + data;
                        $("#div_h_sel_pap").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pap"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_in_sel_pap() {
                var parametros = {
                    "combo": "in",
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
                        var newHtml = "<select class='form-control' name='ip_sel_pap' id= 'ip_sel_pap' >" + data;
                        $("#div_ip_sel_pap").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pap"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_wt_sel_pap() {

                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nomps_sel_pap").val(),
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
                        var newHtml = "<select class='form-control' name='wallt_sel_pap' id= 'wallt_sel_pap' onchange='onchange_wt_pap()'>" + data;
                        $("#div_wallt_sel_pap").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pap"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_pap() {
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
                        var newHtml = "<select class='form-control' name='gat_sel_pap' id= 'gat_sel_pap' onchange='cleanOut_pap()'>" + data;
                        $("#div_gat_sel_pap").html(newHtml);


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pap"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_np_sel_pap(idcombo) {
                var parametros = {
                    "combo": idcombo,
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
                        var newHtml = "<select class='form-control' name='nomps_sel_pap' id= 'nomps_sel_pap' onchange='onchange_nps_pap()'>" + data;
                        $("#div_nomps_sel_pap").html(newHtml);

                        onchange_nps_pap();

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pap"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_pap(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "pap"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_pap();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        var tags = Object.keys(data.row);

                        alert(JSON.stringify(data));

                        for (var i = 0; i < tags.length; i++) {
                            if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "pipe_rad_pap")
                            {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }
                        }

                        if (data.row["pipe_rad_pap"] == "pipe1_pap") {
                            document.getElementById("pipe1_pap").checked = true;
                        } else {
                            document.getElementById("pipe2_pap").checked = true;
                        }

                        load_wt_sel_pap();
                        $("#wallt_sel_pap").val(data.row["wallt_sel_pap"]);

                        $("#proyects_sel_pap").val(data.row.id_proyect);
                        $("#opt_pap").val("2");
                        $("#id_pap").val(data.row.id);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_pap").val("1");
                        show_OkDialog($("#error_Dialog_pap"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_pap() {
                $("#averagep_pap").val("");
                $("#averagec_pap").val("");
                $("#packg_pap").val("");
            }

            function cleanIn_pap() {
                $("#gasavetemp_pap").val("");
                $("#basep_pap").val("");
                $("#upstreamp_pap").val("");
                $("#downstreamp_pap").val("");
                $("#internalp_pap").val("");
                $("#lenghtp_pap").val("");
                $("#gst_pap").val("");
                $("#h_pap").val("");
            }

            function cleanAll_pap() {
                cleanIn_pap();
                cleanOut_pap();
                $("#description_pap").val("");
            }

            function onchange_pipe_rad_pap() {
                var sel = $("input[type='radio'][name='pipe_rad_pap']:checked");
                if (sel.val() == "pipe1_pap") {
                } else {
                }
            }

            function onchange_Input_pap(inp) {
                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                    cleanOut_pap();
                }
                onchange_Input_zero(inp);
            }

            function onchange_grade_pap() {
                var x = $("#grade_sel_pap").val();
                $("#grade_pap").val(x.split(",")[1]);
            }

            function onchange_gravity_pap() {
                $("#gst_pap").val($("#gs_sel_pap").val().split(",")[1]);
                cleanOut_pap();
            }

            function onchange_wt_pap() {
                //$("#upstreamp_pap").val($("#wallt_sel_pap").val().split(",")[1]);
                cleanOut_pap();

                calcularDI_pap();
            }

            function onchange_nps_pap() {
                cleanOut_pap();
                load_wt_sel_pap();

                calcularDI_pap();
            }

            function calcularDI_pap() {
                //Calcular d.e
                var de = $("#nomps_sel_pap").val();
                var es = $("#wallt_sel_pap").val().split(",")[1];

                var di = de - 2 * es;

                es = $("#internalp_pap").val(di);
            }

            function calculate_pap() {
                var variables = {
                    "gasavetemp_pap": $("#gasavetemp_pap").val().replace(",", ""),
                    "basep_pap": $("#basep_pap").val().replace(",", ""),
                    "upstreamp_pap": $("#upstreamp_pap").val().replace(",", ""),
                    "downstreamp_pap": $("#downstreamp_pap").val().replace(",", ""),
                    "internalp_pap": $("#internalp_pap").val().replace(",", ""),
                    "lenghtp_pap": $("#lenghtp_pap").val().replace(",", ""),
                    "gst_pap": $("#gst_pap").val().replace(",", ""),
                    "h_pap": $("#h_pap").val().replace(",", ""),
                    "gs_sel_pap": $("#gs_sel_pap").val().split(",")[0]
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {
                    var unidades = {
                        "gat_sel_pap": $("#gat_sel_pap").val().split(",")[1],
                        "bp_sel_pap": $("#bp_sel_pap").val().split(",")[1],
                        "up_sel_pap": $("#up_sel_pap").val().split(",")[1],
                        "dp_sel_pap": $("#dp_sel_pap").val().split(",")[1],
                        "ip_sel_pap": $("#ip_sel_pap").val().split(",")[1],
                        "lp_sel_pap": $("#lp_sel_pap").val().split(",")[1],
                        "h_sel_pap": $("#h_sel_pap").val().split(",")[1]
                    };

                    var res = packPipeline_Form(variables, unidades);

                    $("#averagep_pap").val(res[0]);
                    $("#averagec_pap").val(res[1]);
                    $("#packg_pap").val(res[2]);

                    show_OkDialog($("#calculate_Dialog_pap"), "Satisfactory process");
                }
            }

            function save_pap() {
                var sel = $("input[type='radio'][name='pipe_rad_pap']:checked");

                var parametros = {
                    "gasavetemp_pap": $("#gasavetemp_pap").val(),
                    "basep_pap": $("#basep_pap").val(),
                    "upstreamp_pap": $("#upstreamp_pap").val(),
                    "downstreamp_pap": $("#downstreamp_pap").val(),
                    "internalp_pap": $("#internalp_pap").val(),
                    "lenghtp_pap": $("#lenghtp_pap").val(),
                    "gst_pap": $("#gst_pap").val(),
                    "pipe_rad_pap": sel.val(),
                    "nomps_sel_pap": $("#nomps_sel_pap").val(),
                    "wallt_sel_pap": $("#wallt_sel_pap").val(),
                    "gat_sel_pap": $("#gat_sel_pap").val(),
                    "bp_sel_pap": $("#bp_sel_pap").val(),
                    "up_sel_pap": $("#up_sel_pap").val(),
                    "dp_sel_pap": $("#dp_sel_pap").val(),
                    "ip_sel_pap": $("#ip_sel_pap").val(),
                    "lp_sel_pap": $("#lp_sel_pap").val(),
                    "h_pap": $("#h_pap").val(),
                    "h_sel_pap": $("#h_sel_pap").val(),
                    "averagep_pap": $("#averagep_pap").val(),
                    "averagec_pap": $("#averagec_pap").val(),
                    "packg_pap": $("#packg_pap").val(),
                    "idproyect": $("#proyects_sel_pap").val(),
                    "opcion": $("#opt_pap").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "id_pap": 1,
                    "description_pap": $("#description_pap").val(),
                    "from": "pap"
                };

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("Debe realizar el càlculo");
                } else {
                    if ($("#opt_pap").val() == 2) {
                        parametros.id_pap = $("#id_pap").val();
                    }

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
                            $("#id_pap").val(data.row.id);
                            $("#opt_pap").val("2");
                            show_OkDialog($("#save_Dialog_pap"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_pap"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });

                }
            }

            function delete_pap() {

                //Confirmacion
                if ($("#opt_pap").val() == 2) {
                    $("#dialog-confirm_pap").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_pap();
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

            function deleteReg_pap() {
                var parametros = {
                    "id_pap": $("#id_pap").val(),
                    "opcion": "3",
                    "from": "pap",
                    "iduser": <% out.print(session.getAttribute("idusu"));%>
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_pap").val("");
                        $("#opt_pap").val("1");
                        cleanAll_pap();
                        show_OkDialog($("#delete_Dialog_pap"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_pap"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


        </script>

        <div id="load_Dialog_pap" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_pap" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_pap" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_pap" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_pap" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>

        <div id="dialog-confirm_pap" title="Delete record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
            <p>Are you sure you want to permanently delete this record?</p>                
        </div>
    </body>
</html>