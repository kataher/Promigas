
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
                <h2><strong>Hydraulics:</strong> IGT Distribution </h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_igt()">
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
                                <div id="div-table_igt"></div>
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
                <input  class="form-control" type="text" id="description_igt" name="description_igt"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_igt" name="proyects_sel_igt"> </select>
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
                                            <input class="form-control" type="text" id="basetemperature_igt" name="basetemperature_igt" onchange="onchange_Input_igt(this)" required value="60">
                                        </div>
                                        <div class="col-sm-6" id="div_bt_sel_igt">
                                            <select class="form-control" id="bt_sel_igt" name="bt_sel_igt" onchange="cleanOut_igt()"> </select>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label>Base Pressure:</label>
                                        </div>
                                        <div class="col-sm-6">
                                            <input  class="form-control" type="text" id="basepressure_igt" name="basepressure_igt" onchange="onchange_Input_igt(this)" required value="14.65"><br>
                                        </div>

                                        <div class="col-sm-6" id="div_bte_sel_igt">
                                            <select class="form-control" id="bte_sel_igt" name="bte_sel_igt"> </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12"><label>Unknown</label>        </div>
                                        <select class="form-control" onchange="hide(this)" id="unknown_igt" name="unknown_igt">
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
                                        <input class="form-control" value="80" type="text" id="gasflowingtemp_igt" name="gasflowingtemp_igt" onchange="onchange_Input_igt(this)" required>
                                    </div>   
                                    <div class="col-md-4" id = "div_gft_sel_igt">
                                        <select class="form-control" id="gft_sel_igt" name="gft_sel_igt"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12 form-group">
                                        <label>Gas Specific Gravity:</label>
                                        <input class="form-control" value="0.6" type="text" id="gasspecificgra_igt" name="gasspecificgra_igt" onchange="onchange_Input_igt(this)" required>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12 form-group">
                                        <label>Pipeline Efficiency Factor</label>
                                        <input class="form-control" value="0.92" type="text" id="pipelineefficiency_igt" name="pipelineefficiency_igt"  onchange="onchange_Input_igt(this)" required>
                                    </div>
                                </div>
                                <!-- Desaparece opción 1-->
                                <!-- Desaparece opción 1-->
                                <div class="col-md-12" id="flowrate">
                                    <div class="col-md-12"><label>Flow Rate</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="flowrate_igt" name="flowrate_igt" required onchange="onchange_Input_igt(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_if_sel_igt">
                                        <select class="form-control" id="if_sel_igt" name="if_sel_igt" onchange='cleanOut_igt()'> </select>
                                    </div>

                                </div>
                                <!-- fin -->
                                <div class="col-md-12"  id="upstream">
                                    <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                    <div class="col-md-8">                                            
                                        <input class="form-control" value="900" type="text" id="upstreampressure_igt" name="upstreampressure_igt" onchange="onchange_Input_igt(this)" required>
                                    </div>
                                    <div class="col-md-4" id="div_up_sel_igt">
                                        <select class="form-control" id="up_sel_igt" name="up_sel_igt"> </select>
                                    </div>

                                </div>
                                <div class="col-md-12 success"  id="downstream">
                                    <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                    <div class="col-md-8">                                            
                                        <input class="form-control" value="600" type="text" id="downstreampressure_igt" name="downstreampressure_igt" onchange="onchange_Input_igt(this)" required>
                                    </div>
                                    <div class="col-md-4" id="div_bp_sel_igt">
                                        <select class="form-control" id="bp_sel_igt" name="bp_sel_igt"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12" id="internal">
                                    <div class="col-md-12"><label>Internal Pipe Diameter</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" value="19" type="text" id="internalpipe_igt" name="internalpipe_igt"  required onchange="onchange_Input_igt(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_diam_sel_igt">
                                        <select class="form-control" id="diam_sel_igt" name="diam_sel_igt" onchange='cleanOut_igt()'> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12"><label>Length of Pipeline</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" value="15" type="text" id="lengthof_igt" name="lengthof_igt"  required onchange="onchange_Input_igt(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_le_sel_igt">
                                        <select class="form-control" id="le_sel_igt" name="le_sel_igt" onchange='cleanOut_igt()'> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" value="0" type="text" id="upstreamelevation_igt" name="upstreamelevation_igt" required onchange="onchange_Input_igt(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_ue_sel_igt">
                                        <select class="form-control" id="ue_sel_igt" name="ue_sel_igt" onchange='cleanOut_igt()'> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12"><label>Downstream Elevation</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" value="0" type="text" id="downstreamelevation_igt" name="downstreamelevation_igt"  required onchange="onchange_Input_igt(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_de_sel_igt">
                                        <select class="form-control" id="de_sel_igt" name="de_sel_igt" onchange='cleanOut_igt()'> </select>
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

                            <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_igt()" class="btn btn-info btn-block">
                            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_igt()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn" name="delteBtn" value="Delete" onclick="deleteReg_igt()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_igt()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_igt()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_igt()" class="btn btn-warning btn-block">
            <!-- input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_igt()" class="btn btn-warning btn-block" -->
        </div>
        <input type="hidden" id="opt_igt" name="opt_igt" value="1"> 
        <input type="hidden" id="id_igt" name="id_igt" value="-1">

        <script>
            function hide(form) {
                var opcion = (form.value);
                document.getElementById("flowrate").style.display = "block";
                document.getElementById("upstream").style.display = "block";
                document.getElementById("downstream").style.display = "block";
                document.getElementById("internal").style.display = "block";
                document.getElementById(opcion).style.display = "none";
                var x = document.getElementById("unknown_igt").selectedIndex;
                var y = document.getElementById("unknown_igt").options;
                document.getElementById('lbltipAddedComment').innerHTML = y[x].text;
            }

            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_igt"),
                        $("#error_Dialog_igt"));

                load_igtuE_sel_igt();

                load_igtuE_sel_igt();
                load_press_sel_igt();
                load_in_sel_igt();
                load_temp_sel_igt();
                load_len_sel_igt();
                load_he_sel_igt();
                load_diam_sel_igt();
            });

            function load_diam_sel_igt() {
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
                        var newHtml = "<select class='form-control' name='diam_sel_igt' id='diam_sel_igt' onchange='cleanOut_igt()'>" + data;
                        $("#div_diam_sel_igt").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_igt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_he_sel_igt() {
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
                        var newHtml = "<select class='form-control' name='ee_sel_igt' id= 'ee_sel_igt'>" + data;
                        $("#div_ee_sel_igt").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_igt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }



            function cleanOut_igt() {
                $("#resultado").val("");
            }

            function cleanSugg_igt() {
                $("#basepressure_igt").val("");
                $("#basetemperature_igt").val("");
            }

            function cleanIn_igt() {
                $("#gasflowingtemp_igt").val("");
                $("#gasspecificgra_igt").val("");
                $("#pipelineefficiency_igt").val("");
                $("#upstreampressure_igt").val("");
                $("#downstreampressure_igt").val("");
                $("#flowrate_igt").val("");
                $("#internalpipe_igt").val("");
                $("#lengthof_igt").val("");
                $("#upstreamelevation_igt").val("");
                $("#downstreamelevation_igt").val("");
            }

            function cleanAll_igt() {
                cleanIn_igt();
                cleanSugg_igt();
                cleanOut_igt();
            }

            function save_igt() {

                var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
                var selects = $("#page-wrapper select");
                var resultados = $("#page-wrapper input[type='text'][readonly]");

                var parametros = {
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "from": "igt"
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

                console.log(parametros);
                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#id_igt").val(data.row.id);
                            $("#opt_igt").val("2"); //opcion editar
                            show_OkDialog($("#save_Dialog_igt"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_igt"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function calculate_igt() {
                var variables = {
                    "basetemperature_igt": $("#basetemperature_igt").val(),
                    "basepressure_igt": $("#basepressure_igt").val(),
                    "gasflowingtemp_igt": $("#gasflowingtemp_igt").val(),
                    "gasspecificgra_igt": $("#gasspecificgra_igt").val(),

                    "pipelineroughness_igt": $("#pipelineroughness_igt").val(),
                    "pipelineefficiency_igt": $("#pipelineefficiency_igt").val(),

                    "flowrate_igt": $("#flowrate_igt").val(),
                    "downstreampressure_igt": $("#downstreampressure_igt").val(),
                    "internalpipe_igt": $("#internalpipe_igt").val(),
                    "upstreampressure_igt": $("#upstreampressure_igt").val(),

                    "upstreamelevation_igt": $("#upstreamelevation_igt").val(),
                    "lengthof_igt": $("#lengthof_igt").val(),
                    "downstreamelevation_igt": $("#downstreamelevation_igt").val()

                };
                var unidades = {
                    "bt_sel_igt": $("#bt_sel_igt").val().split(",")[1],
                    "bte_sel_igt": $("#bte_sel_igt").val().split(",")[1],
                    "gft_sel_igt": $("#gft_sel_igt").val().split(",")[1],
                    "if_sel_igt": $("#if_sel_igt").val().split(",")[1],
                    "up_sel_igt": $("#up_sel_igt").val().split(",")[1],
                    "bp_sel_igt": $("#bp_sel_igt").val().split(",")[1],
                    "le_sel_igt": $("#le_sel_igt").val().split(",")[1],
                    "ue_sel_igt": $("#ue_sel_igt").val().split(",")[1],
                    "de_sel_igt": $("#de_sel_igt").val().split(",")[1],
                    "diam_sel_igt": $("#diam_sel_igt").val().split(",")[1]
                };

                var opcion = $("#unknown_igt").val();
                if (opcion === 'flowrate') {
                    var res = flowrate_igt_form(variables, unidades);
                }
                if (opcion === 'upstream') {
                    var res = upstream_igt_form(variables, unidades);
                }
                if (opcion === 'downstream') {
                    var res = downstream_igt_form(variables, unidades);
                }
                if (opcion === 'internal') {
                    var res = internal_igt_form(variables, unidades);
                }
                $("#resultado").val(res[0]);


                show_OkDialog($("#calculate_Dialog_igt"), "Proceso satisfactorio");
            }

            function loadSuggested_igt() {

                var parametros = {
                    "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                    "opcion": "4"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_igt();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        show_OkDialog($("#load_Dialog_igt"), "Proceso satisfactorio");
                        var res = data.split("-");

                        $("#basetemperature_igt").val(res[1]);
                        $("#basepressure_igt").val(res[0]);
                        cleanOut_igt();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_igt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function deleteReg_igt() {

                var parametros = {
                    "id_igt": $("#id_igt").val(),
                    "form": "1",
                    "opcion": "3"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_igt();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_igt();
                        show_OkDialog($("#delete_Dialog_igt"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_igt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_igtuE_sel_igt() {
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
                        var newHtml = "<select class=\"form-control\" name=\"if_sel_igt\" id= \"if_sel_igt\" onchange='cleanOut_igt()'>" + data;
                        $("#div_if_sel_igt").html(newHtml);

                        $("#if_sel_igt").val("71,MMSCFD");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_igt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_press_sel_igt() {
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
                        var newHtml = "<select class=\"form-control\" name=\"up_sel_igt\" id= \"up_sel_igt\" onchange=\"onchange_pres_igt(this)\">" + data;
                        $("#div_up_sel_igt").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"dp_sel_igt\" id= \"dp_sel_igt\" onchange=\"onchange_pres_igt(this)\">" + data;
                        $("#div_dp_sel_igt").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bp_sel_igt\" id= \"bp_sel_igt\" onchange=\"cleanOut_igt()\">" + data;
                        $("#div_bp_sel_igt").html(newHtml);

                        var newHtml = "<select class=\"form-control\" name=\"bte_sel_igt\" id= \"bte_sel_igt\" onchange=\"onchange_pres_igt(this)\">" + data;
                        $("#div_bte_sel_igt").html(newHtml);

                        /*  var newHtml = "<select class=\"form-control\" name=\"gft_sel_igt\" id= \"gft_sel_igt\" onchange=\"onchange_pres_igt(this)\">" + data;
                         $("#div_gft_sel_igt").html(newHtml);*/

                        var obj = [$("#up_sel_igt"), $("#dp_sel_igt"), $("#bp_sel_igt"), $("#bte_sel_igt")];
                        onchageGeneral(obj, "5,psia");

                        //$("#bp_sel_igt").val("5,psia");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_igt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_pres_igt(imp) {
                cleanOut_igt();
            }
            function load_in_sel_igt() {
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
                        var newHtml = "<select class=\"form-control\" name=\"bc_sel_igt\" id= \"bc_sel_igt\" onchange=\"onchange_long_igt(this)\">" + data;
                        $("#div_bc_sel_igt").html(newHtml);

                        /* newHtml = "<select class=\"form-control\" name=\"gft_sel_igt\" id= \"gft_sel_igt\" onchange=\"onchange_long_igt(this)\">" + data;
                         $("#div_gft_sel_igt").html(newHtml);*/



                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_igt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_temp_sel_igt() {
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
                        var newHtml = "<select class='form-control' name='st_sel_igt' id= 'st_sel_igt' onchange='cleanOut_igt()'>" + data;
                        $("#div_st_sel_igt").html(newHtml);

                        newHtml = "<select class='form-control' name='bt_sel_igt' id= 'bt_sel_igt' onchange='cleanOut_igt()'>" + data;
                        $("#div_bt_sel_igt").html(newHtml);

                        var newHtml = "<select class=\"form-control\" name=\"gft_sel_igt\" id= \"gft_sel_igt\" onchange=\"onchange_pres_igt(this)\">" + data;
                        $("#div_gft_sel_igt").html(newHtml)

                        var vecObj = [$("#bt_sel_igt"), $("#gft_sel_igt")];
                        onchageGeneral(vecObj, "3,F");


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_igt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_len_sel_igt() {
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
                        var newHtml = "<select class='form-control' name='ue_sel_igt' id= 'ue_sel_igt' onchange='cleanOut_igt()'>" + data;
                        $("#div_ue_sel_igt").html(newHtml);

                        var newHtml = "<select class='form-control' name='de_sel_igt' id= 'de_sel_igt' onchange='cleanOut_igt()'>" + data;
                        $("#div_de_sel_igt").html(newHtml);

                        var newHtml = "<select class='form-control' name='le_sel_igt' id= 'le_sel_igt' onchange='cleanOut_igt()'>" + data;
                        $("#div_le_sel_igt").html(newHtml);

                        var vecObj = [$("#de_sel_igt"), $("#ue_sel_igt"), , $("#le_sel_igt")];
                        onchageGeneral(vecObj, "2463,mt");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_igt"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_Input_igt(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_igt();
            }

        </script>

        <div id="load_Dialog_igt" title="Basic dialog" style='display:none;'>
            <p>Datos cargados exitosamente</p>
        </div>

        <div id="save_Dialog_igt" title="Basic dialog" style='display:none;'>
            <p>Datos guardados exitosamente</p>
        </div>

        <div id="error_Dialog_igt" title="Basic dialog" style='display:none;'>
            <p>Ha ocurrido un error en el proceso</p>
        </div>

        <div id="calculate_Dialog_igt" title="Basic dialog" style='display:none;'>
            <p>Calculo realizado exitosamente</p>
        </div>

        <div id="delete_Dialog_igt" title="Basic dialog" style='display:none;'>
            <p>Registro eliminado exitosamente</p>
        </div>
    </body>
</html>     