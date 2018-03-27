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
                <h2><strong>Hydraulics:</strong> Spitzglass</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_spi()">
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
                                <div id="div-table_spi"></div>
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
                <input  class="form-control" type="text" id="description_spi" name="description_spi"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_spi" name="proyects_sel_spi"> </select>
            </div>
        </div>
        <hr>
        <div class="col-lg-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Suggested Data
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">


                                    <div class="form-group">
                                        <div class="col-sm-12"> <label>Base Temperature:</label> </div>
                                        <div class="col-sm-5">
                                            <input class="form-control" type="text" id="basetemperature_spi" name="basetemperature_spi" onchange="onchange_Input_spi(this)" required value="60">
                                        </div>
                                        <div class="col-sm-6" id="div_bt_sel_spi">
                                            <select class="form-control" id="bt_sel_spi" name="bt_sel_spi" onchange="cleanOut_spi()"> </select>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label>Base Pressure:</label>
                                        </div>
                                        <div class="col-sm-6">
                                            <input  class="form-control" type="text" id="basepressure_spi" name="basepressure_spi" onchange="onchange_Input_spi(this)" required value="14.65"><br>
                                        </div>

                                        <div class="col-sm-6" id="div_bte_sel_spi">
                                            <select class="form-control" id="bte_sel_spi" name="bte_sel_spi"> </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12"><label>Unknown</label>        </div>
                                        <select class="form-control" onchange="hide(this)" id="unknown_spi" name="unknown_spi">
                                            <option value="-" >--Choose One--</option>
                                            <option value="flowrate" >Flow rate</option>
                                            <option value="internal" >Internal Pipe Diameter</option>
                                            <option value="upstream" >Upstream Pressure</option>
                                            <option value="downstream" >Downstream Pressure</option>
                                        </select>
                                    </div>

                                </div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>   
        </div>
        <div class="col-lg-6">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Input Data
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                        <label>Height:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input value = "0" class="form-control" type="text" id="enteree_spi" name="enteree_spi" required>
                                    </div>
                                    <div class="col-md-4" id = "div_ee_sel_spi">
                                        <select class="form-control" id="ee_sel_spi" name="ee_sel_spi"> </select>
                                    </div>
                                </div>

                                <div class="col-md-12">
                                    <div class="col-md-12"> <label>Gas flow temperature</label></div>
                                    <div class="col-md-8">                                              
                                        <input class="form-control" type="text" id="gasflowingtemp_spi" name="gasflowingtemp_spi" onchange="onchange_Input_zero(this)" required>
                                    </div>   
                                    <div class="col-md-4" id = "div_gft_sel_spi">
                                        <select class="form-control" id="gft_sel_spi" name="gft_sel_spi"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12 form-group">
                                        <label>Gas Specific Gravity:</label>
                                        <input class="form-control" type="text" id="gasspecificgra_spi" name="gasspecificgra_spi" onchange="onchange_Input_zero(this)" required>
                                    </div>
                                </div>
                                <div class="col-md-12">

                                    <div class="col-md-12 form-group">
                                        <label>Pipeline Efficiency Factor</label>
                                        <input class="form-control" type="text" id="pipelineefficiency_spi" name="pipelineefficiency_spi" onchange="onchange_Input_zero(this)" required>
                                    </div>
                                </div>
                                <!-- Desaparece opción 1-->
                                <!-- Desaparece opción 1-->
                                <div class="col-md-12" id="flowrate">
                                    <div class="col-md-12"><label>Flow Rate</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="flowrate_spi" name="flowrate_spi" required >
                                    </div>
                                    <div class="col-md-4" id = "div_if_sel_spi">
                                        <select class="form-control" id="if_sel_spi" name="if_sel_spi" onchange="onchange_fr_spi(this)"> </select>
                                    </div>

                                </div>
                                <!-- fin -->
                                <div class="col-md-12"  id="upstream">
                                    <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                    <div class="col-md-8">                                            
                                        <input class="form-control" type="text" id="upstreampressure_spi" name="upstreampressure_spi"  required>
                                    </div>
                                    <div class="col-md-4" id="div_up_sel_spi">
                                        <select class="form-control" id="up_sel_spi" name="up_sel_spi"> </select>
                                    </div>

                                </div>
                                <div class="col-md-12 success"  id="downstream">
                                    <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                    <div class="col-md-8">                                            
                                        <input class="form-control" type="text" id="downstreampressure_spi" name="downstreampressure_spi"  required>
                                    </div>
                                    <div class="col-md-4" id="div_bp_sel_spi">
                                        <select class="form-control" id="bp_sel_spi" name="bp_sel_spi"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12" id="internal">
                                    <div class="col-md-12"><label>Internal Pipe Diameter</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" value="954.4" type="text" id="internalpipe_spi" name="internalpipe_spi"  required onchange="onchange_Input_spi(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_diam_sel_spi">
                                        <select class="form-control" id="diam_sel_spi" name="diam_sel_spi"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12"><label>Length of Pipeline</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="lengthof_spi" name="lengthof_spi"  required onchange="onchange_Input_zero(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_le_sel_spi">
                                        <select class="form-control" id="le_sel_spi" name="le_sel_spi"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="upstreamelevation_spi" name="upstreamelevation_spi" required onchange="onchange_Input_zero(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_ue_sel_spi">
                                        <select class="form-control" id="ue_sel_spi" name="ue_sel_spi"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12"><label>Downstream Elevation</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="downstreamelevation_spi" name="downstreamelevation_spi"  required onchange="onchange_Input_zero(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_de_sel_spi">
                                        <select class="form-control" id="de_sel_spi" name="de_sel_spi"> </select>
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
                    Results
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="form-group">
                                <label id="lbltipAddedComment">-</label>
                                <input type="text" id="resultado" name="resultado" readonly required class="form-control">
                            </div>

                            <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_spi()" class="btn btn-info btn-block">
                            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_spi()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn" name="delteBtn" value="Delete" onclick="deleteReg_spi()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_spi()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_spi()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_spi()" class="btn btn-warning btn-block">
            <!-- input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_spi()" class="btn btn-warning btn-block"-->
        </div>
        <input type="hidden" id="opcion_spi" name="opcion_spi"> 
        <input type="hidden" id="id_spi" name="opcion_spi">      

        <script>
            function hide(form) {
                var opcion = (form.value);
                document.getElementById("flowrate").style.display = "block";
                document.getElementById("upstream").style.display = "block";
                document.getElementById("downstream").style.display = "block";
                document.getElementById("internal").style.display = "block";
                document.getElementById(opcion).style.display = "none";
                var x = document.getElementById("unknown_spi").selectedIndex;
                var y = document.getElementById("unknown_spi").options;
                document.getElementById('lbltipAddedComment').innerHTML = y[x].text;
            }
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_spi"),
                        $("#error_Dialog_spi"));

                load_spiuE_sel_spi();
                load_spiuE_sel_spi();
                load_press_sel_spi();
                load_in_sel_spi();
                load_temp_sel_spi();
                load_len_sel_spi();
                load_he_sel_spi();
                load_diam_sel_spi();
            });

            function load_diam_sel_spi() {
                var parametros = {
                    "combo": "in4",
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
                        var newHtml = "<select class='form-control' name='diam_sel_spi' id= 'diam_sel_spi'>" + data;
                        $("#div_diam_sel_spi").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_spi"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_he_sel_spi() {
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
                        var newHtml = "<select class='form-control' name='ee_sel_spi' id= 'ee_sel_spi'>" + data;
                        $("#div_ee_sel_spi").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_spi"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }



            function cleanOut_spi() {
                $("#downstreampressure_spi").val("");
                $("#transmissionfactor_spi").val("");
                $("#velocity_spi").val("");
            }

            function cleanSugg_spi() {
                $("#basepressure_spi").val("");
                $("#basetemperature_spi").val("");
            }

            function cleanIn_spi() {
                $("#gasflowingtemp_spi").val("");
                $("#gasspecificgra_spi").val("");
                $("#pipelineefficiency_spi").val("");
                $("#upstreampressure_spi").val("");
                $("#downstreampressure_spi").val("");
                $("#flowrate_spi").val("");
                $("#internalpipe_spi").val("");
                $("#lengthof_spi").val("");
                $("#upstreamelevation_spi").val("");
                $("#downstreamelevation_spi").val("");
            }

            function cleanAll_spi() {
                cleanIn_spi();
                cleanSugg_spi();
                cleanOut_spi();
            }

            function save_spi() {

                var parametros = {
                    "basetemperature_pha": $("#basetemperature_spi").val(),
                    "basepressure_pha": $("#basepressure_spi").val(),
                    "gasflowingtemp_pha": $("#gasflowingtemp_spi").val(),
                    "gasspecificgra_pha": $("#gasspecificgra_spi").val(),
                    "pipelineefficiency_pha": $("#pipelineefficiency_spi").val(),
                    "upstreampressure_pha": $("#upstreampressure_spi").val(),
                    "flowrate_pha": $("#flowrate_spi").val(),
                    "internalpipe_pha": $("#internalpipe_spi").val(),
                    "lengthof_pha": $("#lengthof_spi").val(),

                    "upstreamelevation_pha": $("#upstreamelevation_spi").val(),
                    "downstreamelevation_pha": $("#downstreamelevation_spi").val(),
                    "downstreampressure_pha": $("#downstreampressure_spi").val(),
                    "transmissionfactor_pha": $("#transmissionfactor_spi").val(),
                    "velocity_pha": $("#velocity_spi").val(),
                    "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                    "form": "1",
                    "opcion": $("#opcion_spi").val()
                };
                var unidades = {
                    "bt_sel_spi": $("#bt_sel_spi").val().split(",")[1],
                    "bte_sel_spi": $("#bte_sel_spi").val().split(",")[1],
                    "gft_sel_spi": $("#gft_sel_spi").val().split(",")[1],
                    "if_sel_spi": $("#if_sel_spi").val().split(",")[1],
                    "up_sel_spi": $("#up_sel_spi").val().split(",")[1],
                    "bp_sel_spi": $("#bp_sel_spi").val().split(",")[1],
                    "le_sel_spi": $("#le_sel_spi").val().split(",")[1],
                    "ue_sel_spi": $("#ue_sel_spi").val().split(",")[1],
                    "de_sel_spi": $("#de_sel_spi").val().split(",")[1],
                    "diam_sel_spi": $("#diam_sel_spi").val().split(",")[1]
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_spi").val(data);
                        show_OkDialog($("#save_Dialog_spi"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_spi"), "Error");

                        $("#basetemperature_spi").val(parametros.basetemperature_pha);
                        $("#basepressure_spi").val(parametros.basepressure_pha);
                        $("#gasflowingtemp_spi").val(parametros.gasflowingtemp_pha);
                        $("#gasspecificgra_spi").val(parametros.gasspecificgra_pha);
                        $("#pipelineefficiency_spi").val(parametros.pipelineefficiency_pha);
                        $("#upstreampressure_spi").val(parametros.upstreampressure_pha);
                        $("#flowrate_spi").val(parametros.flowrate_pha);
                        $("#internalpipe_spi").val(parametros.internalpipe_pha);
                        $("#lengthof_spi").val(parametros.lengthof_pha);
                        $("#upstreamelevation_spi").val(parametros.upstreamelevation_pha);
                        $("#downstreamelevation_spi").val(parametros.downstreamelevation_pha);
                        $("#downstreampressure_spi").val(parametros.downstreampressure_pha);
                        $("#transmissionfactor_spi").val(parametros.transmissionfactor_pha);
                        $("#velocity_spi").val(parametros.velocity_pha);
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function calculate_spi() {
                var variables = {
                    "basetemperature": $("#basetemperature_spi").val(),
                    "basepressure": $("#basepressure_spi").val(),
                    "gasflowingtemp": $("#gasflowingtemp_spi").val(),
                    "gasspecificgra": $("#gasspecificgra_spi").val(),

                    "pipelineroughness": $("#pipelineroughness_spi").val(),
                    "pipelineefficiency": $("#pipelineefficiency_spi").val(),

                    "flowrate": $("#flowrate_spi").val(),
                    "downstreampressure": $("#downstreampressure_spi").val(),
                    "internalpipe": $("#internalpipe_spi").val(),
                    "upstreampressure": $("#upstreampressure_spi").val(),

                    "upstreamelevation": $("#upstreamelevation_spi").val(),
                    "lengthof": $("#lengthof_spi").val(),
                    "downstreamelevation": $("#downstreamelevation_spi").val()

                };
                var unidades = {
                    "bt_sel_spi": $("#bt_sel_spi").val().split(",")[1],
                    "bte_sel_spi": $("#bte_sel_spi").val().split(",")[1],
                    "gft_sel_spi": $("#gft_sel_spi").val().split(",")[1],
                    "if_sel_spi": $("#if_sel_spi").val().split(",")[1],
                    "up_sel_spi": $("#up_sel_spi").val().split(",")[1],
                    "bp_sel_spi": $("#bp_sel_spi").val().split(",")[1],
                    "le_sel_spi": $("#le_sel_spi").val().split(",")[1],
                    "ue_sel_spi": $("#ue_sel_spi").val().split(",")[1],
                    "de_sel_spi": $("#de_sel_spi").val().split(",")[1],
                    "diam_sel_spi": $("#diam_sel_spi").val().split(",")[1]
                };
                var opcion = $("#unknown_spi").val();
                if (opcion === 'flowrate') {
                    //alert("1");
                    var res = flowrate_spi_form(variables, unidades);
                }
                if (opcion === 'upstream') {
                    // alert("2"); 
                    var res = upstream_spi_form(variables, unidades);
                }
                if (opcion === 'downstream') {
                    // alert("3");
                    var res = downstream_spi_form(variables, unidades);
                }
                if (opcion === 'internal') {
                    // alert("4");
                    var res = internal_spi_form(variables, unidades);
                }
                $("#resultado").val(res[0]);


                show_OkDialog($("#calculate_Dialog_spi"), "Proceso satisfactorio");
            }

            function loadSuggested_spi() {

                var parametros = {
                    "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                    "opcion": "4"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_spi();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        show_OkDialog($("#load_Dialog_spi"), "Proceso satisfactorio");
                        var res = data.split("-");

                        $("#basetemperature_spi").val(res[1]);
                        $("#basepressure_spi").val(res[0]);
                        cleanOut_spi();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_spi"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function deleteReg_spi() {

                var parametros = {
                    "id_spi": $("#id_spi").val(),
                    "form": "1",
                    "opcion": "3"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_spi();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_spi();
                        show_OkDialog($("#delete_Dialog_spi"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_spi"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_spiuE_sel_spi() {
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
                        var newHtml = "<select class=\"form-control\" name=\"if_sel_spi\" id= \"if_sel_spi\" onchange=\"onchange_fr_spi(this)\">" + data;
                        $("#div_if_sel_spi").html(newHtml);

                        $("#if_sel_spi").val("71,MMSCFD");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_spi"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_press_sel_spi() {
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
                        var newHtml = "<select class=\"form-control\" name=\"up_sel_spi\" id= \"up_sel_spi\" onchange=\"onchange_pres_spi(this)\">" + data;
                        $("#div_up_sel_spi").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"dp_sel_spi\" id= \"dp_sel_spi\" onchange=\"onchange_pres_spi(this)\">" + data;
                        $("#div_dp_sel_spi").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bp_sel_spi\" id= \"bp_sel_spi\" onchange=\"cleanOut_spi()\">" + data;
                        $("#div_bp_sel_spi").html(newHtml);

                        var newHtml = "<select class=\"form-control\" name=\"bte_sel_spi\" id= \"bte_sel_spi\" onchange=\"onchange_pres_spi(this)\">" + data;
                        $("#div_bte_sel_spi").html(newHtml);

                        /*  var newHtml = "<select class=\"form-control\" name=\"gft_sel_spi\" id= \"gft_sel_spi\" onchange=\"onchange_pres_spi(this)\">" + data;
                         $("#div_gft_sel_spi").html(newHtml);*/

                        var obj = [$("#up_sel_spi"), $("#dp_sel_spi"), $("#bp_sel_spi"), $("#bte_sel_spi")];
                        onchageGeneral(obj, "5,psia");

                        //$("#bp_sel_spi").val("5,psia");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_spi"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_pres_spi(imp) {
                /*cleanOut_spi();
                 var obj = [$("#dp_sel_spi"), $("#sp_sel_spi")];
                 onchageGeneral(obj, imp.value);*/
            }
            function load_in_sel_spi() {
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
                        var newHtml = "<select class=\"form-control\" name=\"bc_sel_spi\" id= \"bc_sel_spi\" onchange=\"onchange_long_spi(this)\">" + data;
                        $("#div_bc_sel_spi").html(newHtml);

                        /* newHtml = "<select class=\"form-control\" name=\"gft_sel_spi\" id= \"gft_sel_spi\" onchange=\"onchange_long_spi(this)\">" + data;
                         $("#div_gft_sel_spi").html(newHtml);*/



                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_spi"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_temp_sel_spi() {
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
                        var newHtml = "<select class='form-control' name='st_sel_spi' id= 'st_sel_spi' onchange='onchange_temp_spi(this)'>" + data;
                        $("#div_st_sel_spi").html(newHtml);

                        newHtml = "<select class='form-control' name='bt_sel_spi' id= 'bt_sel_spi' onchange='onchange_temp_spi(this)'>" + data;
                        $("#div_bt_sel_spi").html(newHtml);

                        var newHtml = "<select class=\"form-control\" name=\"gft_sel_spi\" id= \"gft_sel_spi\" onchange=\"onchange_pres_spi(this)\">" + data;
                        $("#div_gft_sel_spi").html(newHtml)

                        var vecObj = [$("#bt_sel_spi"), $("#gft_sel_spi")];
                        onchageGeneral(vecObj, "3,F");


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_spi"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_len_sel_spi() {
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
                        var newHtml = "<select class='form-control' name='ue_sel_spi' id= 'ue_sel_spi' >" + data;
                        $("#div_ue_sel_spi").html(newHtml);

                        var newHtml = "<select class='form-control' name='de_sel_spi' id= 'de_sel_spi' >" + data;
                        $("#div_de_sel_spi").html(newHtml);

                        var newHtml = "<select class='form-control' name='le_sel_spi' id= 'le_sel_spi' >" + data;
                        $("#div_le_sel_spi").html(newHtml);

                        var vecObj = [$("#de_sel_spi"), $("#ue_sel_spi"), , $("#le_sel_spi")];
                        onchageGeneral(vecObj, "2463,mt");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_spi"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_Input_spi(inp) {

                var str = inp.value;
                var pos = str.indexOf(".");

                if (pos == 0) {
                    inp.value = "0" + str;
                }
                onchange_Input_zero(inp);

            }
        </script>

        <div id="load_Dialog_spi" title="Basic dialog" style='display:none;'>
            <p>Datos cargados exitosamente</p>
        </div>

        <div id="save_Dialog_spi" title="Basic dialog" style='display:none;'>
            <p>Datos guardados exitosamente</p>
        </div>

        <div id="error_Dialog_spi" title="Basic dialog" style='display:none;'>
            <p>Ha ocurrido un error en el proceso</p>
        </div>

        <div id="calculate_Dialog_spi" title="Basic dialog" style='display:none;'>
            <p>Calculo realizado exitosamente</p>
        </div>

        <div id="delete_Dialog_spi" title="Basic dialog" style='display:none;'>
            <p>Registro eliminado exitosamente</p>
        </div>
    </body>
</html>         