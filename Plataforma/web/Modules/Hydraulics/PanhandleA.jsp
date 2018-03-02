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
                <h2><strong>Hydraulics:</strong> Panhandle A</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_adp()">
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
                                <div id="div-table_adp"></div>
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
                <input  class="form-control" type="text" id="description_adp" name="description_adp"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_adp" name="proyects_sel_adp"> </select>
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
                                            <input class="form-control" type="text" id="basetemperature_adp" name="basetemperature_adp" onchange="onchange_Input_adp(this)" required value="60">
                                        </div>
                                        <div class="col-sm-6" id="div_bt_sel_adp">
                                            <select class="form-control" id="bt_sel_adp" name="bt_sel_adp" onchange="cleanOut_adp()"> </select>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label>Base Pressure:</label>
                                        </div>
                                        <div class="col-sm-6">
                                            <input  class="form-control" type="text" id="basepressure_adp" name="basepressure_adp" onchange="onchange_Input_adp(this)" required value="14.65"><br>
                                        </div>

                                        <div class="col-sm-6" id="div_bte_sel_adp">
                                            <select class="form-control" id="bte_sel_adp" name="bte_sel_adp"> </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12"><label>Unknown</label>        </div>
                                        <select class="form-control" onchange="hide(this)" id="unknown_adp" name="unknown_adp">
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
                                    <div class="col-md-12"> <label>Gas flow temperature</label></div>
                                    <div class="col-md-8">                                              
                                        <input class="form-control" type="text" value="80" id="gasflowingtemp_adp" name="gasflowingtemp_adp" onchange="onchange_Input_adp(this)" required>
                                    </div>   
                                    <div class="col-md-4" id = "div_gasft_sel_adp">
                                        <select class="form-control" id="gasft_sel_adp" name="gasft_sel_adp"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                        <label>Gas Specific Gravity:</label>
                                        <input class="form-control" value="0.6" type="text" id="gasspecificgra_adp" name="gasspecificgra_adp" onchange="onchange_Input_adp(this)" required>
                                    </div>
                                </div>
                                <div class="col-md-12">

                                    <div class="col-md-12">
                                        <label>Pipeline Efficiency Factor</label>
                                        <input class="form-control" value="0.92" type="text" id="pipelineefficiency_adp" name="pipelineefficiency_adp" onchange="onchange_Input_adp(this)" required>
                                    </div>
                                </div>
                                <!-- Desaparece opción 1-->
                                <div class="col-md-12" id="flowrate">
                                    <div class="col-md-12"><label>Flow Rate</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" value="100000" type="text" id="flowrate_adp" name="flowrate_adp" required onchange="onchange_Input_adp(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_if_sel_adp">
                                        <select class="form-control" id="if_sel_adp" name="if_sel_adp" onchange="onchange_fr_adp(this)"> </select>
                                    </div>

                                </div>
                                <!-- fin -->
                                <div class="col-md-12"  id="upstream">
                                    <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                    <div class="col-md-8">                                            
                                        <input class="form-control" value="0" type="text" id="upstreampressure_adp" name="upstreampressure_adp" onchange="onchange_Input_adp(this)"  required>
                                    </div>
                                    <div class="col-md-4" id="div_up_sel_adp">
                                        <select class="form-control" id="up_sel_adp" name="up_sel_adp"> </select>
                                    </div>

                                </div>
                                <div class="col-md-12 success"  id="downstream">
                                    <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                    <div class="col-md-8">                                            
                                        <input class="form-control" value="985.27" type="text" id="downstreampressure_adp" name="downstreampressure_adp" onchange="onchange_Input_adp(this)" required>
                                    </div>
                                    <div class="col-md-4" id="div_bp_sel_adp">
                                        <select class="form-control" id="bp_sel_adp" name="bp_sel_adp"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12" id="internal">
                                    <div class="col-md-12"><label>Internal Pipe Diameter</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" value="954.4" type="text" id="internalpipe_adp" name="internalpipe_adp"  required onchange="onchange_Input_adp(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_ipd_sel_apd">
                                        <select class="form-control" id="ipd_sel_apd" name="ipd_sel_apd"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12"><label>Length of Pipeline</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" value="15" type="text" id="lengthof_adp" name="lengthof_adp"  required onchange="onchange_Input_adp(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_le_sel_apd">
                                        <select class="form-control" id="le_sel_apd" name="le_sel_apd"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text"  value="0" id="upstreamelevation_adp" name="upstreamelevation_adp" required onchange="onchange_Input_adp(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_ue_sel_apd">
                                        <select class="form-control" id="ue_sel_apd" name="ue_sel_apd"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12"><label>Downstream Elevation</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" value="0" type="text" id="downstreamelevation_adp" name="downstreamelevation_adp"  required onchange="onchange_Input_adp(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_de_sel_apd">
                                        <select class="form-control" id="de_sel_apd" name="de_sel_apd"> </select>
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

                            <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_adp()" class="btn btn-info btn-block">
                            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_adp()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn" name="delteBtn" value="Eliminar" onclick="deleteReg_adp()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_adp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_adp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_adp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_adp()" class="btn btn-warning btn-block">
        </div>
        <input type="hidden" id="opcion_adp" name="opcion_adp"> 
        <input type="hidden" id="id_adp" name="opcion_adp">      

        <script>
            function hide(form) {
                var opcion = (form.value);
                document.getElementById("flowrate").style.display = "block";
                document.getElementById("upstream").style.display = "block";
                document.getElementById("downstream").style.display = "block";
                document.getElementById("internal").style.display = "block";
                document.getElementById(opcion).style.display = "none";
                $("#resultado").val("");
                var x = document.getElementById("unknown_adp").selectedIndex;
                var y = document.getElementById("unknown_adp").options;
                document.getElementById('lbltipAddedComment').innerHTML = y[x].text;
                
                if(y[x].text == "Flow rate"){
                    document.getElementById('lbltipAddedComment').innerHTML = y[x].text + " [MSCFD]";
                }
            }
            $(document).ready(function () {
                
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_adp"),
                        $("#error_Dialog_adp"));

                load_adpuE_sel_adp();
                load_press_sel_adp();
                load_in_sel_adp();
                load_temp_sel_adp();
                load_len_sel_apd();
                load_he_sel_adp();
                load_in5_sel_apd();
                load_in2_sel_apd();
            });


            function cleanOut_adp() {
                $("#resultado").val("");
            }

            function cleanSugg_adp() {
                $("#basepressure_adp").val("");
                $("#basetemperature_adp").val("");
            }

            function cleanIn_adp() {
                $("#gasflowingtemp_adp").val("");
                $("#gasspecificgra_adp").val("");
                $("#pipelineefficiency_adp").val("");
                $("#upstreampressure_adp").val("");
                $("#downstreampressure_adp").val("");
                $("#flowrate_adp").val("");
                $("#internalpipe_adp").val("");
                $("#lengthof_adp").val("");
                $("#upstreamelevation_adp").val("");
                $("#downstreamelevation_adp").val("");
            }

            function cleanAll_adp() {
                cleanIn_adp();
                cleanSugg_adp();
                cleanOut_adp();
            }

            function save_adp() {

                var parametros = {
                    "basetemperature_pha": $("#basetemperature_adp").val(),
                    "basepressure_pha": $("#basepressure_adp").val(),
                    "gasflowingtemp_pha": $("#gasflowingtemp_adp").val(),
                    "gasspecificgra_pha": $("#gasspecificgra_adp").val(),
                    "pipelineefficiency_pha": $("#pipelineefficiency_adp").val(),
                    "upstreampressure_pha": $("#upstreampressure_adp").val(),
                    "flowrate_pha": $("#flowrate_adp").val(),
                    "internalpipe_pha": $("#internalpipe_adp").val(),
                    "lengthof_pha": $("#lengthof_adp").val(),
                    "upstreamelevation_pha": $("#upstreamelevation_adp").val(),
                    "downstreamelevation_pha": $("#downstreamelevation_adp").val(),
                    "downstreampressure_pha": $("#downstreampressure_adp").val(),
                    "transmissionfactor_pha": $("#transmissionfactor_adp").val(),
                    "velocity_pha": $("#velocity_adp").val(),
                    "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                    "form": "1",
                    "opcion": $("#opcion_adp").val()
                };

                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_adp").val(data);
                        show_OkDialog($("#save_Dialog_adp"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_adp"), "Error");

                        $("#basetemperature_adp").val(parametros.basetemperature_pha);
                        $("#basepressure_adp").val(parametros.basepressure_pha);
                        $("#gasflowingtemp_adp").val(parametros.gasflowingtemp_pha);
                        $("#gasspecificgra_adp").val(parametros.gasspecificgra_pha);
                        $("#pipelineefficiency_adp").val(parametros.pipelineefficiency_pha);
                        $("#upstreampressure_adp").val(parametros.upstreampressure_pha);
                        $("#flowrate_adp").val(parametros.flowrate_pha);
                        $("#internalpipe_adp").val(parametros.internalpipe_pha);
                        $("#lengthof_adp").val(parametros.lengthof_pha);
                        $("#upstreamelevation_adp").val(parametros.upstreamelevation_pha);
                        $("#downstreamelevation_adp").val(parametros.downstreamelevation_pha);
                        $("#downstreampressure_adp").val(parametros.downstreampressure_pha);
                        $("#transmissionfactor_adp").val(parametros.transmissionfactor_pha);
                        $("#velocity_adp").val(parametros.velocity_pha);
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function calculate_adp() {
            
             
                var variables = {
                    "basetemperature_adp": $("#basetemperature_adp").val().replace(",", ""),
                    "basepressure_adp": $("#basepressure_adp").val().replace(",", ""),
                    "gasflowingtemp_adp": $("#gasflowingtemp_adp").val().replace(",", ""),
                    "gasspecificgra_adp": $("#gasspecificgra_adp").val().replace(",", ""),
                    "pipelineefficiency_adp": $("#pipelineefficiency_adp").val().replace(",", ""),
                    "flowrate_adp": $("#flowrate_adp").val().replace(",", ""),
                    "downstreampressure_adp": $("#downstreampressure_adp").val().replace(",", ""),
                    "internalpipe_adp": $("#internalpipe_adp").val().replace(",", ""),
                    "upstreampressure_adp": $("#upstreampressure_adp").val().replace(",", ""),
                    "upstreamelevation_adp": $("#upstreamelevation_adp").val().replace(",", ""),
                    "lengthof_adp": $("#lengthof_adp").val().replace(",", ""),
                    "downstreamelevation_adp": $("#downstreamelevation_adp").val().replace(",", "")

                };
                   
                var isOk = validate(variables);
                if(isOk === false){
                    alert("You must complete all fields");
                }else{
                    var unidades = {
                        "bt_sel_adp": $("#bt_sel_adp").val().split(",")[1],
                        "bte_sel_adp": $("#bte_sel_adp").val().split(",")[1],
                        "gasft_sel_adp": $("#gasft_sel_adp").val().split(",")[1],
                        "if_sel_adp": $("#if_sel_adp").val().split(",")[1],
                        "up_sel_adp": $("#up_sel_adp").val().split(",")[1],
                        "bp_sel_adp": $("#bp_sel_adp").val().split(",")[1],
                        "le_sel_apd": $("#le_sel_apd").val().split(",")[1],
                        "ue_sel_apd": $("#ue_sel_apd").val().split(",")[1],
                        "de_sel_apd": $("#de_sel_apd").val().split(",")[1]
                    };
                } 

                var opcion = $("#unknown_adp").val();
                var res;
                if (opcion === 'flowrate') {
                    res = flowrate_Form(variables, unidades);
                }
                if (opcion === 'upstream') {
                    res = upstreampressure_Form(variables, unidades);
                }
                if (opcion === 'downstream') {
                    res = downstreampressure_Form(variables, unidades);
                }
                if (opcion === 'internal') {
                    res = internalpipediameter_Form(variables, unidades);
                }

                $("#resultado").val(res[0]);


                show_OkDialog($("#calculate_Dialog_adp"), "Proceso satisfactorio");
            }

            function loadSuggested_adp() {

                var parametros = {
                    "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                    "opcion": "4"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_adp();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        show_OkDialog($("#load_Dialog_adp"), "Proceso satisfactorio");
                        var res = data.split("-");

                        $("#basetemperature_adp").val(res[1]);
                        $("#basepressure_adp").val(res[0]);
                        cleanOut_adp();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_adp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function deleteReg_adp() {

                var parametros = {
                    "id_adp": $("#id_adp").val(),
                    "form": "1",
                    "opcion": "3"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_adp();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_adp();
                        show_OkDialog($("#delete_Dialog_adp"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_adp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_Input_adp(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }
                
                onchange_Input_zero(inp);
                cleanOut_adp();
            }
            
            function load_adpuE_sel_adp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"if_sel_adp\" id= \"if_sel_adp\" onchange=\"onchange_fr_adp(this)\">" + data;
                        $("#div_if_sel_adp").html(newHtml);

                        $("#if_sel_adp").val("71,MMSCFD");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_adp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_press_sel_adp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"up_sel_adp\" id= \"up_sel_adp\" onchange=\"onchange_pres_adp(this)\">" + data;
                        $("#div_up_sel_adp").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"dp_sel_adp\" id= \"dp_sel_adp\" onchange=\"onchange_pres_adp(this)\">" + data;
                        $("#div_dp_sel_adp").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bp_sel_adp\" id= \"bp_sel_adp\" onchange=\"cleanOut_adp()\">" + data;
                        $("#div_bp_sel_adp").html(newHtml);

                        var newHtml = "<select class=\"form-control\" name=\"bte_sel_adp\" id= \"bte_sel_adp\" onchange=\"onchange_pres_adp(this)\">" + data;
                        $("#div_bte_sel_adp").html(newHtml);

                        /*  var newHtml = "<select class=\"form-control\" name=\"gasft_sel_adp\" id= \"gasft_sel_adp\" onchange=\"onchange_pres_adp(this)\">" + data;
                         $("#div_gasft_sel_adp").html(newHtml);*/

                        var obj = [$("#up_sel_adp"), $("#dp_sel_adp"), $("#bp_sel_adp"), $("#bte_sel_adp")];
                        onchageGeneral(obj, "5,psia");

                        //$("#bp_sel_adp").val("5,psia");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_adp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_pres_adp(imp) {
                /*cleanOut_adp();
                 var obj = [$("#dp_sel_adp"), $("#sp_sel_adp")];
                 onchageGeneral(obj, imp.value);*/
            }
            function load_in_sel_adp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"bc_sel_adp\" id= \"bc_sel_adp\" onchange=\"onchange_long_adp(this)\">" + data;
                        $("#div_bc_sel_adp").html(newHtml);

                        /* newHtml = "<select class=\"form-control\" name=\"gasft_sel_adp\" id= \"gasft_sel_adp\" onchange=\"onchange_long_adp(this)\">" + data;
                         $("#div_gasft_sel_adp").html(newHtml);*/



                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_adp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_temp_sel_adp() {
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
                        var newHtml = "<select class='form-control' name='st_sel_adp' id= 'st_sel_adp' onchange='onchange_temp_adp(this)'>" + data;
                        $("#div_st_sel_adp").html(newHtml);

                        newHtml = "<select class='form-control' name='bt_sel_adp' id= 'bt_sel_adp' onchange='onchange_temp_adp(this)'>" + data;
                        $("#div_bt_sel_adp").html(newHtml);

                        var newHtml = "<select class=\"form-control\" name=\"gasft_sel_adp\" id= \"gasft_sel_adp\" onchange=\"onchange_pres_adp(this)\">" + data;
                        $("#div_gasft_sel_adp").html(newHtml)

                        var vecObj = [$("#bt_sel_adp"), $("#gasft_sel_adp")];
                        onchageGeneral(vecObj, "3,F");


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_adp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_len_sel_apd() {
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
                        
                        var newHtml = "<select class='form-control' name='le_sel_apd' id= 'le_sel_apd' >" + data;
                        $("#div_le_sel_apd").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_apd"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_in5_sel_apd() {
                var parametros = {
                    "combo": "in5",
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
                        var newHtml = "<select class='form-control' name='ue_sel_apd' id= 'ue_sel_apd' >" + data;
                        $("#div_ue_sel_apd").html(newHtml);
                        
                         newHtml = "<select class='form-control' name='de_sel_apd' id= 'de_sel_apd' >" + data;
                        $("#div_de_sel_apd").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_apd"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_in2_sel_apd() {
                var parametros = {
                    "combo": "in2",
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
                        var newHtml = "<select class='form-control' name='ipd_sel_apd' id= 'ipd_sel_apd' >" + data;
                        $("#div_ipd_sel_apd").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_apd"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_he_sel_adp() {
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
                        var newHtml = "<select class='form-control' name='ee_sel_adp' id= 'ee_sel_adp'>" + data;
                        $("#div_ee_sel_adp").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_adp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

        </script>

        <div id="load_Dialog_adp" title="Basic dialog" style='display:none;'>
            <p>Datos cargados exitosamente</p>
        </div>

        <div id="save_Dialog_adp" title="Basic dialog" style='display:none;'>
            <p>Datos guardados exitosamente</p>
        </div>

        <div id="error_Dialog_adp" title="Basic dialog" style='display:none;'>
            <p>Ha ocurrido un error en el proceso</p>
        </div>

        <div id="calculate_Dialog_adp" title="Basic dialog" style='display:none;'>
            <p>Calculo realizado exitosamente</p>
        </div>

        <div id="delete_Dialog_adp" title="Basic dialog" style='display:none;'>
            <p>Registro eliminado exitosamente</p>
        </div>
    </body>
</html>