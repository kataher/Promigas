<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <jsp:include page="../../head.jsp" />
    <head>
        <%@include file="../../includehead2.html" %>
    </head>
    <body>
        <div class="row">
            <div class="col-lg-9">
                <h2><strong>Pipe Installation:</strong>  1.1.6. Compressor Station Piping-Gas Velocity & Pipe Diameter</h2>
            </div>
            <div class="col-lg-3"> 
                <br>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_dgv()">
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
                                <div id="div-table_dgv"></div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- FIN MODAL -->
            </div>
        </div>
        <div class="row">

            <div class="col-lg-12">
                Description: 
                <input  class="form-control" type="text" id="description_dgv" name="description_dgv"><br>
                Projects:
                <select class="form-control" id="proyects_sel_dgv" name="proyects_sel_dgv"> </select>

            </div>
        </div>
        <hr>
        <div class="row">

            <div class="col-lg-9">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Data
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Input Parameters
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-12">

                                                <div class="form-group col-md-12">
                                                    <label>Calculate:</label>
                                                    <select class="form-control" id="tipo_sel_dgv" name="tipo_sel_dgv" onchange="onchangeTipo_dgv(this.value)"> 
                                                        <option value="1">Gas Velocity</option>
                                                        <option value="2">Diameter</option>
                                                    </select>
                                                </div>

                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Height:</label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input value = "0" class="form-control" type="text" id="enteree_dgv" name="enteree_dgv" onchange="onchange_Input_dgv(this)" required>
                                                    </div>
                                                    <div class="col-md-4" id="div_al_sel_dgv">
                                                        <select class="form-control" id="al_sel_dgv" name="al_sel_dgv"> </select>
                                                    </div>
                                                </div>



                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Base Temperature:</label> 
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input value="60" class="form-control" type="text" id="basetemperature_dgv" name="basetemperature_dgv" onchange="onchange_Input_dgv(this)" required>
                                                    </div>
                                                    <div class="col-md-4" id="div_bt_sel_dgv">
                                                        <select class="form-control" id="bt_sel_dgv" name="bt_sel_dgv"> </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Base Pressure:</label> 
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input value="14.65" class="form-control" type="text" id="basepressure_dgv" name="basepressure_dgv" onchange="onchange_Input_dgv(this)" required><br>
                                                    </div>
                                                    <div class="col-md-4" id="div_bp_sel_dgv">
                                                        <select class="form-control" id="bp_sel_dgv" name="bp_sel_dgv"> </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Flowing Pressure:</label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input value="800" class="form-control" type="text" id="flowingp_dgv" name="flowingp_dgv" onchange="onchange_Input_dgv(this)" required>
                                                    </div>
                                                    <div class="col-md-4" id = "div_fp_sel_dgv">
                                                        <select class="form-control" id="fp_sel_dgv" name="fp_sel_dgv"> </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Flowing Temperature:</label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input value="90" class="form-control" type="text" id="flowingt_dgv" name="flowingt_dgv" onchange="onchange_Input_dgv(this)" required>
                                                    </div>
                                                    <div class="col-md-4" id = "div_ft_sel_dgv">
                                                        <select class="form-control" id="ft_sel_dgv" name="ft_sel_dgv"> </select>
                                                    </div>
                                                </div>
                                                <div class="form-group" id="div_variableIN_dgv">
                                                    <div class="col-md-12">
                                                        <label>Pipe Internal Diameter:</label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input value="13" class="form-control" type="text" id="pipeinternald_dgv" name="pipeinternald_dgv" onchange="onchange_Input_dgv(this)" required>
                                                    </div>
                                                    <div class="col-md-4" id = "div_pid_sel_dgv">
                                                        <select class="form-control" id="pid_sel_dgv" name="pid_sel_dgv"> </select>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Flow Rate:</label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input value="50" class="form-control" type="text" id="flowr_dgv" name="flowr_dgv" onchange="onchange_Input_dgv(this)" required>
                                                    </div>
                                                    <div class="col-md-4" id="div_fr_sel_dgv">
                                                        <select class="form-control" id="fr_sel_dgv" name="fr_sel_dgv"> </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Select Option:</label>
                                                    </div>
                                                    <div class="col-md-8" id="div_gs_sel_dgv">
                                                        <select class="form-control" id="gs_sel_dgv" name="gs_sel_dgv" onchange="onchange_gravity_dgv()"></select> 
                                                    </div>
                                                    <div class="col-md-4">
                                                        <input class="form-control" type="text" id="gst_dgv" name="gst_dgv" onchange="onchange_Input_dgv(this)" required>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Results
                                        </div>
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="form-group" id = "div_variableOUT_dgv">
                                                        <label>Gas Velocity [ft/min]:</label>
                                                        <input type="text" id="gasv_dgv" name="gasv_dgv" readonly required class="form-control">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Compressibility Factor Z:</label>
                                                        <input type="text" id="z_dgv" name="z_dgv" readonly required class="form-control">
                                                    </div>                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>  
                </div>   
            </div>  

            <div class="col-lg-3">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        Actions
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">

                                <input type="button" id="calculateBtn_dgv" name="calculateBtn_dgv" value="Calculate" onclick="calculate_dgv()" class="btn btn-info btn-block">
                                <input type="button" id="saveBtn_dgv" name="saveBtn_dgv" value="Save" onclick="save_dgv()" class="btn btn-success btn-block">   
                                <input type="button" id="delteBtn_dgv" name="delteBtn_dgv" value="Delete" onclick="delete_dgv()" class="btn btn-danger btn-block">
                                <input type="button" id="cleanAllBtn_dgv" name="cleanBtn_dgv" value="Clean All Data" onclick="cleanAll_dgv()" class="btn btn-warning btn-block">
                                <input type="button" id="cleanInputBtn_dgv" name="cleanBtn_dgv" value="Clean Input Data" onclick="cleanIn_dgv()" class="btn btn-warning btn-block">
                                <input type="button" id="cleanOutputBtn_dgv" name="cleanBtn_dgv" value="Clean Output Data" onclick="cleanOut_dgv()" class="btn btn-warning btn-block">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <input type="hidden" id="opt_dgv" name="opt_dgv" value="1"> 
            <input type="hidden" id="id_dgv" name="id_dgv" value = "-1">   
        </div>
        <script>

            var selINHtml = "";
            $(document).ready(function () {
                $("#opt_dgv").val("1");
                load_gs_sel_dgv();
                load_temp_sel_dgv();
                load_press_sel_dgv();
                load_in_sel_dgv();
                load_flowr_sel_dgv();
                load_he_sel_dgv();


                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_dgv"),
                        $("#error_Dialog_dgv"));

            });

            function load_history_dgv() {
                var parametros = {
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "dgv"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        cleanAll_dgv();
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
                                    html += "<td>" + data.historial[i].description_dgv + "</td>";
                                    html += "<td><a href='#' onClick=\"load_form_dgv(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_dgv").empty();
                        $("#div-table_dgv").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dgv"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_gs_sel_dgv() {
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
                        var newHtml = "<select class=\"form-control\" name=\"gs_sel_dgv\" id=\"gs_sel_dgv\" onchange=\"onchange_gravity_dgv()\">" + data;
                        $("#div_gs_sel_dgv").html(newHtml);
                        $("#gst_dgv").val($("#gs_sel_dgv").val().trim().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dgv"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_temp_dgv(imp) {
                cleanOut_dgv();

                var vecObj = [$("#bt_sel_dgv"), $("#ft_sel_dgv")];
                onchageGeneral(vecObj, imp.value);
            }

            function load_temp_sel_dgv() {
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
                        var newHtml = "<select class=\"form-control\" name=\"ft_sel_dgv\" id= \"ft_sel_dgv\" onchange=\"onchange_temp_dgv(this)\">" + data;
                        $("#div_ft_sel_dgv").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bt_sel_dgv\" id= \"bt_sel_dgv\" onchange=\"onchange_temp_dgv(this)\">" + data;
                        $("#div_bt_sel_dgv").html(newHtml);

                        var vecObj = [$("#bt_sel_dgv"), $("#ft_sel_dgv")];
                        onchageGeneral(vecObj, "3,F");


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dgv"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_he_sel_dgv() {
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
                        var newHtml = "<select class='form-control' name='al_sel_dgv' id= 'al_sel_dgv' onchange='cleanOut_dgv()'> " + data;
                        $("#div_al_sel_dgv").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dgv"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }



            function load_in_sel_dgv() {
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
                        var newHtml = "<select class='form-control' name='pid_sel_dgv' id= 'pid_sel_dgv' onchange='cleanOut_dgv()'>" + data;
                        $("#div_pid_sel_dgv").html(newHtml);
                        selINHtml = newHtml;

                        /*newHtml = "<select class='form-control' name='al_sel_dgv' id= 'al_sel_dgv' onchange='cleanOut_dgv()'> " + data;
                         $("#div_al_sel_dgv").html(newHtml);*/

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dgv"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_press_sel_dgv() {
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
                        var newHtml = "<select class=\"form-control\" name=\"fp_sel_dgv\" id= \"fp_sel_dgv\">" + data;
                        $("#div_fp_sel_dgv").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bp_sel_dgv\" id= \"bp_sel_dgv\">" + data;
                        $("#div_bp_sel_dgv").html(newHtml);

                        $("#bp_sel_dgv").val("5,psia");
                        $("#fp_sel_dgv").val("65,psig");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dgv"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_flowr_sel_dgv() {
                var parametros = {
                    "combo": "fluE",
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
                        var newHtml = "<select class=\"form-control\" name=\"fr_sel_dgv\" id= \"fr_sel_dgv\">" + data;
                        $("#div_fr_sel_dgv").html(newHtml);

                        $("#fr_sel_dgv").val("71,MMSCFD");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_dgv"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_gravity_dgv() {
                $("#gst_dgv").val($("#gs_sel_dgv").val().trim().split(",")[1]);
            }

            function load_form_dgv(id) {
                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "dgv"
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_dgv();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_user" && tags[i] != "id")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }
                            $("#opt_dgv").val("2");
                            $("#id_dgv").val(data.row.id);
                            alert("Successfully uploaded data");

                        } else {
                            $("#opt_dgv").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_dgv").val("1");
                        show_OkDialog($("#error_Dialog_dgv"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_dgv() {
                if ($("#tipo_sel_dgv").val() == 1) {
                    $("#gasv_dgv").val("");
                } else {
                    $("#pipeinternald_dgv").val("");
                }
                $("#z_dgv").val("");
            }

            function cleanIn_dgv() {
                $("#basepressure_dgv").val("");
                $("#basetemperature_dgv").val("");
                $("#flowingp_dgv").val("");
                $("#flowingt_dgv").val("");
                $("#flowr_dgv").val("");
                $("#enteree_dgv").val("");

                if ($("#tipo_sel_dgv").val() == 2) {
                    $("#gasv_dgv").val("");
                } else {
                    $("#pipeinternald_dgv").val("");
                }
            }

            function cleanAll_dgv() {
                cleanIn_dgv();
                cleanOut_dgv();
                $("#description_dgv").val("");
            }

            function onchange_Input_dgv(inp) {
                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_dgv();
            }

            function calculate_dgv() {

                var variables = {
                    "enteree_dgv": $("#enteree_dgv").val(),
                    "basetemperature_dgv": $("#basetemperature_dgv").val(),
                    "basepressure_dgv": $("#basepressure_dgv").val(),
                    "flowingp_dgv": $("#flowingp_dgv").val(),
                    "flowingt_dgv": $("#flowingt_dgv").val(),
                    "pipeinternald_dgv": $("#pipeinternald_dgv").val(),
                    "gasv_dgv": $("#gasv_dgv").val(),
                    "flowr_dgv": $("#flowr_dgv").val(),
                    "gst_dgv": $("#gst_dgv").val(),
                    "tipo_sel_dgv": $("#tipo_sel_dgv").val(),
                    "gs_sel_dgv": $("#gs_sel_dgv").val().split(",")[0]
                };

                if (variables.tipo_sel_dgv == 1) {
                    variables.gasv_dgv = 0;
                } else {
                    variables.pipeinternald_dgv = 0;
                }

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {


                    var unidades = {
                        "bt_sel_dgv": $("#bt_sel_dgv").val().split(",")[1],
                        "bp_sel_dgv": $("#bp_sel_dgv").val().split(",")[1],
                        "fp_sel_dgv": $("#fp_sel_dgv").val().split(",")[1],
                        "ft_sel_dgv": $("#ft_sel_dgv").val().split(",")[1],
                        "pid_sel_dgv": "in",
                        "fr_sel_dgv": $("#fr_sel_dgv").val().split(",")[1],
                        "al_sel_dgv": $("#al_sel_dgv").val().split(",")[1]


                    };

                    if (variables.tipo_sel_dgv == 1) {
                        variables.pid_sel_dgv = $("#pid_sel_dgv").val().split(",")[1];
                    }

                    var res = diameterGV_Form(variables, unidades);

                    if (variables.tipo_sel_dgv == 1) {
                        $("#gasv_dgv").val(res[0]);
                    } else {
                        $("#pipeinternald_dgv").val(res[0]);
                    }


                    $("#z_dgv").val(res[1]);

                    show_OkDialog($("#calculate_Dialog_dgv"), "Satisfactory process");
                }
            }

            function save_dgv() {

                var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
                var selects = $("#page-wrapper select");
                var resultados = $("#page-wrapper input[type='text'][readonly]");

                var parametros = {
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "from": "dgv"
                };

                for (var i = 0; i < inputs.size(); i++) {
                    if (!($(inputs[i]).attr("id") === "id_" + parametros["from"] && $(inputs[i]).val() === "-1"))
                    {
                        parametros[$(inputs[i]).attr("id")] = $(inputs[i]).val();
                    }
                }

                for (var i = 0; i < selects.size(); i++) {
                    parametros[$(selects[i]).attr("id")] = $(selects[i]).val();
                }

                for (var i = 0; i < resultados.size(); i++) {
                    parametros[$(resultados[i]).attr("id")] = $(resultados[i]).val();
                }

                parametros["opcion"] = parametros["opt_" + parametros["from"]];
                
                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_dgv").val() == 2) {
                        parametros.id_dgv = $("#id_dgv").val();
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
                            $("#id_dgv").val(data.row.id);
                            $("#opt_dgv").val("2");
                            show_OkDialog($("#save_Dialog_dgv"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_dgv"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_dgv() {

                //Confirmacion
                if ($("#opt_dgv").val() == 2) {

                    $("#dialog-confirm_dgv").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_dgv();
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

            function deleteReg_dgv() {
                var parametros = {
                    "id_dgv": $("#id_dgv").val(),
                    "opcion": 3,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "dgv"
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
                        cleanAll_dgv();
                        $("#id_dgv").val("-1");
                        $("#opt_dgv").val("1");
                        show_OkDialog($("#delete_Dialog_dgv"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_dgv"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            }

            function onchangeTipo_dgv(opt) {

                cleanOut_dgv();

                var htmlIN, htmlOUT;

                if (opt == 1) {
                    //ES Diametro

                    htmlIN = '<div class="col-md-12">' +
                            '<label>Diametro interno de la tuberia:</label>' +
                            '</div>' +
                            '<div class="col-md-8">' +
                            '<input value="13" class="form-control" type="text" id="pipeinternald_dgv" name="pipeinternald_dgv" onchange="onchange_Input_dgv(this)" required>' +
                            '</div>' +
                            '<div class="col-md-4" id = "div_pid_sel_dgv">' +
                            '<select class="form-control" id="pid_sel_dgv" name="pid_sel_dgv"> </select>' +
                            '</div>';

                    htmlOUT = '<label>Velocidad del gas [ft/min]:</label>' +
                            '<input type="text" id="gasv_dgv" name="gasv_dgv" readonly required class="form-control">';


                } else {
                    //Es velocidad

                    htmlIN = '<div class="col-md-12">' +
                            '<label>Velocidad del gas [ft/min]:</label>' +
                            '</div>' +
                            '<div class="col-md-8">' +
                            '<input class="form-control" type="text" id="gasv_dgv" name="gasv_dgv" onchange="onchange_Input_dgv(this)" required>' +
                            '</div>';

                    htmlOUT = '<label>Diametro interno de la tuberia [in]</label>' +
                            '<input type="text" id="pipeinternald_dgv" name="pipeinternald_dgv" readonly required class="form-control">';
                }

                $("#div_variableIN_dgv").html(htmlIN);
                $("#div_variableOUT_dgv").html(htmlOUT);

                $("#div_pid_sel_dgv").html(selINHtml);


            }
        </script>

        <div id="load_Dialog_dgv" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_dgv" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_dgv" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_dgv" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_dgv" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>

        <div id="dialog-confirm_dgv" title="Delete record" style='display:none;'>
            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                Are you sure you want to permanently delete this record?
            </p>
        </div>
    </body>
</html>