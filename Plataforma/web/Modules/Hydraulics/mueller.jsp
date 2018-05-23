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
                <h2><strong>Hydraulics:</strong> Mueller High Pressure</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_mll()">
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
                                <div id="div-table_mll"></div>
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
                <input  class="form-control" type="text" id="description_mll" name="description_mll"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_mll" name="proyects_sel_mll"> </select>
            </div>
        </div>
        <hr>
        <div class="col-lg-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Seuggested Data 
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">

                                    <div class="form-group">
                                        <div class="col-sm-12"> <label>Base Temperature:</label> </div>
                                        <div class="col-sm-5">
                                            <input class="form-control" type="text" id="basetemperature_mll" name="basetemperature_mll" onchange="onchange_Input_mll(this)" required value="60">
                                        </div>
                                        <div class="col-sm-6" id="div_bt_sel_mll">
                                            <select class="form-control" id="bt_sel_mll" name="bt_sel_mll" onchange="cleanOut_mll()"> </select>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label>Base Pressure:</label>
                                        </div>
                                        <div class="col-sm-6">
                                            <input  class="form-control" type="text" id="basepressure_mll" name="basepressure_mll" onchange="onchange_Input_mll(this)" required value="14.65"><br>
                                        </div>

                                        <div class="col-sm-6" id="div_bte_sel_mll">
                                            <select class="form-control" id="bte_sel_mll" name="bte_sel_mll"> </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12"><label>Unknown</label>        </div>
                                        <select class="form-control" onchange="hide(this)" id="unknown_mll" name="unknown_mll">
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
                                        <input class="form-control" type="text" id="gasflowingtemp_mll" name="gasflowingtemp_mll" onchange="onchange_Input_mll(this)" required>
                                    </div>   
                                    <div class="col-md-4" id = "div_gft_sel_mll">
                                        <select class="form-control" id="gft_sel_mll" name="gft_sel_mll"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12 form-group">
                                        <label>Gas Specific Gravity:</label>
                                        <input class="form-control" type="text" id="gasspecificgra_mll" name="gasspecificgra_mll" onchange="onchange_Input_mll(this)" required>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12 form-group">
                                        <label>Pipeline Efficiency Factor</label>
                                        <input class="form-control" type="text" id="pipelineefficiency_mll" name="pipelineefficiency_mll" onchange="onchange_Input_mll(this)"  required>
                                    </div>
                                </div>
                                <!-- Desaparece opción 1-->
                                <!-- Desaparece opción 1-->
                                <div class="col-md-12" id="flowrate">
                                    <div class="col-md-12"><label>Flow Rate</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="flowrate_mll" name="flowrate_mll" required onchange="onchange_Input_mll(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_if_sel_mll">
                                        <select class="form-control" id="if_sel_mll" name="if_sel_mll" onchange="cleanOut_mll()"> </select>
                                    </div>

                                </div>
                                <!-- fin -->
                                <div class="col-md-12"  id="upstream">
                                    <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                    <div class="col-md-8">                                            
                                        <input class="form-control" type="text" id="upstreampressure_mll" name="upstreampressure_mll" onchange="onchange_Input_mll(this)" required>
                                    </div>
                                    <div class="col-md-4" id="div_up_sel_mll">
                                        <select class="form-control" id="up_sel_mll" name="up_sel_mll"> </select>
                                    </div>

                                </div>
                                <div class="col-md-12 success"  id="downstream">
                                    <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                    <div class="col-md-8">                                            
                                        <input class="form-control" type="text" id="downstreampressure_mll" name="downstreampressure_mll" onchange="onchange_Input_mll(this)" required>
                                    </div>
                                    <div class="col-md-4" id="div_bp_sel_mll">
                                        <select class="form-control" id="bp_sel_mll" name="bp_sel_mll"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12" id="internal">
                                    <div class="col-md-12"><label>Internal Pipe Diameter</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" value="954.4" type="text" id="internalpipe_mll" name="internalpipe_mll"  required onchange="onchange_Input_mll(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_diam_sel_mll">
                                        <select class="form-control" id="diam_sel_mll" name="diam_sel_mll" onchange='cleanOut_mll()'> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12"><label>Length of Pipeline</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="lengthof_mll" name="lengthof_mll"  required onchange="onchange_Input_mll(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_le_sel_mll">
                                        <select class="form-control" id="le_sel_mll" name="le_sel_mll" onchange='cleanOut_mll()'> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="upstreamelevation_mll" name="upstreamelevation_mll" required onchange="onchange_Input_mll(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_ue_sel_mll">
                                        <select class="form-control" id="ue_sel_mll" name="ue_sel_mll" onchange='cleanOut_mll()'> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12"><label>Downstream Elevation</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="downstreamelevation_mll" name="downstreamelevation_mll"  required onchange="onchange_Input_mll(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_de_sel_mll">
                                        <select class="form-control" id="de_sel_mll" name="de_sel_mll" onchange='cleanOut_mll()'> </select>
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

                            <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_mll()" class="btn btn-info btn-block">
                            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_mll()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn" name="delteBtn" value="Delete" onclick="deleteReg_mll()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_mll()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_mll()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_mll()" class="btn btn-warning btn-block">
            <!-- input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_mll()" class="btn btn-warning btn-block" -->
        </div>
        <input type="hidden" id="opt_mll" name="opt_mll" value="1"> 
        <input type="hidden" id="id_mll" name="id_mll" value="-1">      

        <script>
            function hide(form) {
                var opcion = (form.value);
                document.getElementById("flowrate").style.display = "block";
                document.getElementById("upstream").style.display = "block";
                document.getElementById("downstream").style.display = "block";
                document.getElementById("internal").style.display = "block";
                document.getElementById(opcion).style.display = "none";
                var x = document.getElementById("unknown_mll").selectedIndex;
                var y = document.getElementById("unknown_mll").options;
                document.getElementById('lbltipAddedComment').innerHTML = y[x].text;
                
                if (y[x].text == "Flow rate") {
                    document.getElementById('lbltipAddedComment').innerHTML = y[x].text + " [SCFD]";
                }
                if (y[x].text == "Internal Pipe Diameter") {
                    document.getElementById('lbltipAddedComment').innerHTML = y[x].text + " [in]";
                }
                if (y[x].text == "Upstream Pressure") {
                    document.getElementById('lbltipAddedComment').innerHTML = y[x].text + " [psia]";
                }
                if (y[x].text == "Downstream Pressure") {
                    document.getElementById('lbltipAddedComment').innerHTML = y[x].text + " [psia]";
                }
            }

            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_mll"),
                        $("#error_Dialog_mll"));

                load_mlluE_sel_mll();

                load_mlluE_sel_mll();
                load_press_sel_mll();
                load_in_sel_mll();
                load_temp_sel_mll();
                load_len_sel_mll();
                load_he_sel_mll();
                load_diam_sel_mll();
            });

            function load_diam_sel_mll() {
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
                        var newHtml = "<select class='form-control' name='diam_sel_mll' id= 'diam_sel_mll' onchange='cleanOut_mll()'>" + data;
                        $("#div_diam_sel_mll").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mll"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_he_sel_mll() {
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
                        var newHtml = "<select class='form-control' name='ee_sel_mll' id= 'ee_sel_mll'>" + data;
                        $("#div_ee_sel_mll").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mll"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }



            function cleanOut_mll() {
                $("#resultado").val("");
            }

            function cleanSugg_mll() {
                $("#basepressure_mll").val("");
                $("#basetemperature_mll").val("");
            }

            function cleanIn_mll() {
                $("#gasflowingtemp_mll").val("");
                $("#gasspecificgra_mll").val("");
                $("#pipelineefficiency_mll").val("");
                $("#upstreampressure_mll").val("");
                $("#downstreampressure_mll").val("");
                $("#flowrate_mll").val("");
                $("#internalpipe_mll").val("");
                $("#lengthof_mll").val("");
                $("#upstreamelevation_mll").val("");
                $("#downstreamelevation_mll").val("");
            }

            function cleanAll_mll() {
                cleanIn_mll();
                cleanSugg_mll();
                cleanOut_mll();
            }

            function save_mll() {

                var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
                var selects = $("#page-wrapper select");
                var resultados = $("#page-wrapper input[type='text'][readonly]");

                var parametros = {
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "from": "mll"
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
                            $("#id_mll").val(data.row.id);
                            $("#opt_mll").val("2"); //opcion editar
                            show_OkDialog($("#save_Dialog_mll"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_mll"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function calculate_mll() {
                var variables = {
                    "basetemperature": $("#basetemperature_mll").val(),
                    "basepressure": $("#basepressure_mll").val(),
                    "gasflowingtemp": $("#gasflowingtemp_mll").val(),
                    "gasspecificgra": $("#gasspecificgra_mll").val(),

                    "pipelineroughness": $("#pipelineroughness_mll").val(),
                    "pipelineefficiency": $("#pipelineefficiency_mll").val(),

                    "flowrate": $("#flowrate_mll").val(),
                    "downstreampressure": $("#downstreampressure_mll").val(),
                    "internalpipe": $("#internalpipe_mll").val(),
                    "upstreampressure": $("#upstreampressure_mll").val(),

                    "upstreamelevation": $("#upstreamelevation_mll").val(),
                    "lengthof": $("#lengthof_mll").val(),
                    "downstreamelevation": $("#downstreamelevation_mll").val()

                };
                var unidades = {
                    "bt_sel_mll": $("#bt_sel_mll").val().split(",")[1],
                    "bte_sel_mll": $("#bte_sel_mll").val().split(",")[1],
                    "gft_sel_mll": $("#gft_sel_mll").val().split(",")[1],
                    "if_sel_mll": $("#if_sel_mll").val().split(",")[1],
                    "up_sel_mll": $("#up_sel_mll").val().split(",")[1],
                    "bp_sel_mll": $("#bp_sel_mll").val().split(",")[1],
                    "le_sel_mll": $("#le_sel_mll").val().split(",")[1],
                    "ue_sel_mll": $("#ue_sel_mll").val().split(",")[1],
                    "de_sel_mll": $("#de_sel_mll").val().split(",")[1],
                    "diam_sel_mll": $("#diam_sel_mll").val().split(",")[1]
                };
                var opcion = $("#unknown_mll").val();
                if (opcion === 'flowrate') {
                    //alert("1");
                    var res = flowrate_mll_form(variables, unidades);
                }
                if (opcion === 'upstream') {
                    // alert("2"); 
                    var res = upstream_mll_form(variables, unidades);
                }
                if (opcion === 'downstream') {
                    //  alert("3");
                    var res = downstream_mll_form(variables, unidades);
                }
                if (opcion === 'internal') {
                    //  alert("4");
                    var res = internal_mll_form(variables, unidades);
                }
                $("#resultado").val(res[0]);


                show_OkDialog($("#calculate_Dialog_mll"), "Proceso satisfactorio");
            }

            function loadSuggested_mll() {

                var parametros = {
                    "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                    "opcion": "4"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_mll();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        show_OkDialog($("#load_Dialog_mll"), "Proceso satisfactorio");
                        var res = data.split("-");

                        $("#basetemperature_mll").val(res[1]);
                        $("#basepressure_mll").val(res[0]);
                        cleanOut_mll();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mll"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function deleteReg_mll() {

                var parametros = {
                    "id_mll": $("#id_mll").val(),
                    "form": "1",
                    "opcion": "3"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_mll();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_mll();
                        show_OkDialog($("#delete_Dialog_mll"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mll"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_mlluE_sel_mll() {
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
                        var newHtml = "<select class=\"form-control\" name=\"if_sel_mll\" id= \"if_sel_mll\" onchange=\"cleanOut_mll()\">" + data;
                        $("#div_if_sel_mll").html(newHtml);

                        $("#if_sel_mll").val("71,MMSCFD");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mll"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_press_sel_mll() {
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
                        var newHtml = "<select class=\"form-control\" name=\"up_sel_mll\" id= \"up_sel_mll\" onchange=\"onchange_pres_mll(this)\">" + data;
                        $("#div_up_sel_mll").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"dp_sel_mll\" id= \"dp_sel_mll\" onchange=\"onchange_pres_mll(this)\">" + data;
                        $("#div_dp_sel_mll").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bp_sel_mll\" id= \"bp_sel_mll\" onchange=\"cleanOut_mll()\">" + data;
                        $("#div_bp_sel_mll").html(newHtml);

                        var newHtml = "<select class=\"form-control\" name=\"bte_sel_mll\" id= \"bte_sel_mll\" onchange=\"onchange_pres_mll(this)\">" + data;
                        $("#div_bte_sel_mll").html(newHtml);

                        /*  var newHtml = "<select class=\"form-control\" name=\"gft_sel_mll\" id= \"gft_sel_mll\" onchange=\"onchange_pres_mll(this)\">" + data;
                         $("#div_gft_sel_mll").html(newHtml);*/

                        var obj = [$("#up_sel_mll"), $("#dp_sel_mll"), $("#bp_sel_mll"), $("#bte_sel_mll")];
                        onchageGeneral(obj, "5,psia");

                        //$("#bp_sel_mll").val("5,psia");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mll"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_pres_mll(imp) {
                cleanOut_mll();
            }
            function load_in_sel_mll() {
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
                        var newHtml = "<select class=\"form-control\" name=\"bc_sel_mll\" id= \"bc_sel_mll\" onchange=\"onchange_long_mll(this)\">" + data;
                        $("#div_bc_sel_mll").html(newHtml);

                        /* newHtml = "<select class=\"form-control\" name=\"gft_sel_mll\" id= \"gft_sel_mll\" onchange=\"onchange_long_mll(this)\">" + data;
                         $("#div_gft_sel_mll").html(newHtml);*/



                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mll"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_temp_sel_mll() {
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
                        var newHtml = "<select class='form-control' name='st_sel_mll' id= 'st_sel_mll' onchange='cleanOut_mll()'>" + data;
                        $("#div_st_sel_mll").html(newHtml);

                        newHtml = "<select class='form-control' name='bt_sel_mll' id= 'bt_sel_mll' onchange='cleanOut_mll()'>" + data;
                        $("#div_bt_sel_mll").html(newHtml);

                        var newHtml = "<select class=\"form-control\" name=\"gft_sel_mll\" id= \"gft_sel_mll\" onchange=\"onchange_pres_mll(this)\">" + data;
                        $("#div_gft_sel_mll").html(newHtml)

                        var vecObj = [$("#bt_sel_mll"), $("#gft_sel_mll")];
                        onchageGeneral(vecObj, "3,F");


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mll"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_len_sel_mll() {
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
                        var newHtml = "<select class='form-control' name='ue_sel_mll' id= 'ue_sel_mll' onchange='cleanOut_mll()'>" + data;
                        $("#div_ue_sel_mll").html(newHtml);

                        var newHtml = "<select class='form-control' name='de_sel_mll' id= 'de_sel_mll' onchange='cleanOut_mll()'>" + data;
                        $("#div_de_sel_mll").html(newHtml);

                        var newHtml = "<select class='form-control' name='le_sel_mll' id= 'le_sel_mll' onchange='cleanOut_mll()'>" + data;
                        $("#div_le_sel_mll").html(newHtml);

                        var vecObj = [$("#de_sel_mll"), $("#ue_sel_mll"), , $("#le_sel_mll")];
                        onchageGeneral(vecObj, "2463,mt");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_mll"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_Input_mll(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_mll();
            }

        </script>

        <div id="load_Dialog_mll" title="Basic dialog" style='display:none;'>
            <p>Datos cargados exitosamente</p>
        </div>

        <div id="save_Dialog_mll" title="Basic dialog" style='display:none;'>
            <p>Datos guardados exitosamente</p>
        </div>

        <div id="error_Dialog_mll" title="Basic dialog" style='display:none;'>
            <p>Ha ocurrido un error en el proceso</p>
        </div>

        <div id="calculate_Dialog_mll" title="Basic dialog" style='display:none;'>
            <p>Calculo realizado exitosamente</p>
        </div>

        <div id="delete_Dialog_mll" title="Basic dialog" style='display:none;'>
            <p>Registro eliminado exitosamente</p>
        </div>
    </body>
</html>         