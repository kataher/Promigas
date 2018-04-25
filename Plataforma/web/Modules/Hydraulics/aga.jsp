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
                <h2><strong>Hydraulics:</strong> A.G.A.FullyTurbulent</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_aga()">
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
                                <div id="div-table_aga"></div>
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
                <input  class="form-control" type="text" id="description_aga" name="description_aga"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_aga" name="proyects_sel_aga"> </select>
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
                                            <input class="form-control" type="text" id="basetemperature_aga" name="basetemperature_aga" onchange="onchange_Input_aga(this)" required value="60">
                                        </div>
                                        <div class="col-sm-6" id="div_bt_sel_aga">
                                            <select class="form-control" id="bt_sel_aga" name="bt_sel_aga" onchange="cleanOut_aga()"> </select>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label>Base Pressure:</label>
                                        </div>
                                        <div class="col-sm-6">
                                            <input  class="form-control" type="text" id="basepressure_aga" name="basepressure_aga" onchange="onchange_Input_aga(this)" required value="14.65"><br>
                                        </div>

                                        <div class="col-sm-6" id="div_bte_sel_aga">
                                            <select class="form-control" id="bte_sel_aga" name="bte_sel_aga"> </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12"><label>Unknown</label>        </div>
                                        <select class="form-control" onchange="hide(this)" id="unknown_aga" name="unknown_aga">
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
                            <form role="form">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="col-md-12"> <label>Gas flow temperature</label></div>
                                        <div class="col-md-8">                                              
                                            <input class="form-control" type="text" id="gasflowingtemp_aga" name="gasflowingtemp_aga" onchange="onchange_Input_aga(this)" required>
                                        </div>   
                                        <div class="col-md-4" id = "div_gft_sel_aga">
                                            <select class="form-control" id="gft_sel_aga" name="gft_sel_aga"> </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <label>Gas Specific Gravity:</label>
                                            <input class="form-control" type="text" id="gasspecificgra_aga" name="gasspecificgra_aga" onchange="onchange_Input_aga(this)" required>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <label>Pipeline Roughness:</label>
                                        </div>
                                        <div class="col-md-8">
                                            <div id="div_rou_sel_aga">
                                                <select class="form-control" id="roughness_aga" name="roughness_aga"> </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <input class="form-control" type="text" id="pipelineroughness_aga" name="pipelineroughness_aga" onchange="onchange_Input_aga(this)" required>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-md-12">
                                            <label>Pipeline Efficiency Factor</label>
                                            <input class="form-control" type="text" id="pipelineefficiency_aga" name="pipelineefficiency_aga" onchange="onchange_Input_aga(this)" required>
                                        </div>
                                    </div>
                                    <!-- Desaparece opción 1-->
                                    <!-- Desaparece opción 1-->
                                    <div class="col-md-12" id="flowrate">
                                        <div class="col-md-12"><label>Flow Rate</label></div>
                                        <div class="col-md-8">
                                            <input class="form-control" type="text" id="flowrate_aga" name="flowrate_aga" value="0" required onchange="onchange_Input_aga(this)">
                                        </div>
                                        <div class="col-md-4" id = "div_if_sel_aga">
                                            <select class="form-control" id="if_sel_aga" name="if_sel_aga" onchange="cleanOut_aga()"> </select>
                                        </div>

                                    </div>
                                    <!-- fin -->
                                    <div class="col-md-12"  id="upstream">
                                        <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                        <div class="col-md-8">                                            
                                            <input class="form-control" type="text" id="upstreampressure_aga" name="upstreampressure_aga" onchange="onchange_Input_aga(this)" required>
                                        </div>
                                        <div class="col-md-4" id="div_up_sel_aga">
                                            <select class="form-control" id="up_sel_aga" name="up_sel_aga"> </select>
                                        </div>

                                    </div>
                                    <div class="col-md-12 success"  id="downstream">
                                        <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                        <div class="col-md-8">                                            
                                            <input class="form-control" type="text" id="downstreampressure_aga" name="downstreampressure_aga" onchange="onchange_Input_aga(this)" required>
                                        </div>
                                        <div class="col-md-4" id="div_bp_sel_aga">
                                            <select class="form-control" id="bp_sel_aga" name="bp_sel_aga"> </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12" id="internal">
                                        <div class="col-md-12"><label>Internal Pipe Diameter</label></div>
                                        <div class="col-md-8">
                                            <input class="form-control" value="954.4" type="text" id="internalpipe_aga" name="internalpipe_aga"  required onchange="onchange_Input_aga(this)">
                                        </div>
                                        <div class="col-md-4" id = "div_diam_sel_aga">
                                            <select class="form-control" id="diam_sel_aga" name="diam_sel_aga" onchange='cleanOut_aga()'> </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-md-12"><label>Length of Pipeline</label></div>
                                        <div class="col-md-8">
                                            <input class="form-control" type="text" id="lengthof_aga" name="lengthof_aga"  required onchange="onchange_Input_aga(this)">
                                        </div>
                                        <div class="col-md-4" id = "div_le_sel_aga">
                                            <select class="form-control" id="le_sel_aga" name="le_sel_aga" onchange='cleanOut_aga()'> </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                        <div class="col-md-8">
                                            <input class="form-control" type="text" id="upstreamelevation_aga" name="upstreamelevation_aga" required onchange="onchange_Input_aga(this)">
                                        </div>
                                        <div class="col-md-4" id = "div_ue_sel_aga">
                                            <select class="form-control" id="ue_sel_aga" name="ue_sel_aga" onchange='cleanOut_aga()'> </select>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-md-12"><label>Downstream Elevation</label></div>
                                        <div class="col-md-8">
                                            <input class="form-control" type="text" id="downstreamelevation_aga" name="downstreamelevation_aga"  required onchange="onchange_Input_aga(this)">
                                        </div>
                                        <div class="col-md-4" id = "div_de_sel_aga">
                                            <select class="form-control" id="de_sel_aga" name="de_sel_aga" onchange='cleanOut_aga()'> </select>
                                        </div>
                                    </div>

                                </div>
                            </form>
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
                            <form role="form">
                                <div class="form-group">

                                    <div class="form-group">
                                        <label id="lbltipAddedComment">-</label>
                                        <input class="form-control" type="text" id="flowrate_aga_r" name="flowrate_aga_r" readonly required>
                                    </div>

                                    <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_aga()" class="btn btn-info btn-block">
                                    <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_aga()"  class="btn btn-success btn-block"> 
                                    <input type="button" id="delteBtn" name="delteBtn" value="Delete" onclick="deleteReg_aga()"  class="btn btn-danger btn-block">

                                </div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>
        </div>

        <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_aga()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_aga()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_aga()" class="btn btn-warning btn-block">
            <!-- input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_aga()" class="btn btn-warning btn-block"-->
        </div> 

        <input type="hidden" id="opt_aga" name="opt_aga" value="1"> 
        <input type="hidden" id="id_aga" name="id_aga" value="-1">      

        <script>
            function hide(form) {
                var opcion = (form.value);
                document.getElementById("flowrate").style.display = "block";
                document.getElementById("upstream").style.display = "block";
                document.getElementById("downstream").style.display = "block";
                document.getElementById("internal").style.display = "block";
                document.getElementById(opcion).style.display = "none";
                var x = document.getElementById("unknown_aga").selectedIndex;
                var y = document.getElementById("unknown_aga").options;
                document.getElementById('lbltipAddedComment').innerHTML = y[x].text;
            }
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_aga"),
                        $("#error_Dialog_aga"));

                load_np_sel_rwb("cole");
                load_agauE_sel_aga();

                load_agauE_sel_aga();
                load_press_sel_aga();
                load_in_sel_aga();
                load_temp_sel_aga();
                load_len_sel_aga();
                load_he_sel_aga();
                load_diam_sel_aga();
            });

            function load_diam_sel_aga() {
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
                        var newHtml = "<select class='form-control' name='diam_sel_aga' id= 'diam_sel_aga' onchange='cleanOut_aga()'>" + data;
                        $("#div_diam_sel_aga").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_aga"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_he_sel_aga() {
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
                        var newHtml = "<select class='form-control' name='ee_sel_aga' id= 'ee_sel_aga' onchange='cleanOut_aga()'>" + data;
                        $("#div_ee_sel_aga").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_aga"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_np_sel_rwb(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"roughness_aga\" id= \"roughness_aga\" onchange=\"onchange_rou_aga()\">" + data;
                        $("#div_rou_sel_aga").html(newHtml);
                        var po = $("#roughness_aga").val().trim().split(",")[1];
                        $("#pipelineroughness_aga").val(po);
                        onchange_rou_aga();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rwb"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_rou_aga() {
                var po = $("#roughness_aga").val().split(",")[1];
                $("#pipelineroughness_aga").val(po);
                cleanOut_aga();
            }

            function cleanOut_aga() {
                $("#flowrate_aga_r").val("");
            }

            function cleanSugg_aga() {
                $("#basepressure_aga").val("");
                $("#basetemperature_aga").val("");
            }

            function cleanIn_aga() {
                $("#gasflowingtemp_aga").val("");
                $("#gasspecificgra_aga").val("");
                $("#pipelineefficiency_aga").val("");
                $("#flowrate_aga").val("");
                $("#upstreampressure_aga").val("");
                $("#downstreampressure_aga").val("");
                $("#internalpipe_aga").val("");
                $("#lengthof_aga").val("");
                $("#upstreamelevation_aga").val("");
                $("#downstreamelevation_aga").val("");
            }

            function cleanAll_aga() {
                cleanIn_aga();
                cleanSugg_aga();
                cleanOut_aga();
            }

            function save_aga() {

                var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
                var selects = $("#page-wrapper select");
                var resultados = $("#page-wrapper input[type='text'][readonly]");

                var parametros = {
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "from": "aga"
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
                            $("#id_aga").val(data.row.id);
                            $("#opt_aga").val("2"); //opcion editar
                            show_OkDialog($("#save_Dialog_aga"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_aga"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function calculate_aga() {
                var opcion = $("#unknown_aga").val();

                var variables = {
                    "basetemperature_aga": $("#basetemperature_aga").val(),
                    "basepressure_aga": $("#basepressure_aga").val(),
                    "gasflowingtemp_aga": $("#gasflowingtemp_aga").val(),
                    "gasspecificgra_aga": $("#gasspecificgra_aga").val(),
                    "roughness_aga": $("#roughness_aga").val(),
                    "pipelineroughness_aga": $("#pipelineroughness_aga").val(),
                    "pipelineefficiency_aga": $("#pipelineefficiency_aga").val(),

                    "flowrate_aga": $("#flowrate_aga").val(),
                    "downstreampressure_aga": $("#downstreampressure_aga").val(),
                    "internalpipe_aga": $("#internalpipe_aga").val(),
                    "upstreampressure_aga": $("#upstreampressure_aga").val(),

                    "upstreamelevation_aga": $("#upstreamelevation_aga").val(),
                    "lengthof_aga": $("#lengthof_aga").val(),
                    "downstreamelevation_aga": $("#downstreamelevation_aga").val()

                };
                var unidades = {
                    "bt_sel_aga": $("#bt_sel_aga").val().split(",")[1],
                    "bte_sel_aga": $("#bte_sel_aga").val().split(",")[1],
                    "gft_sel_aga": $("#gft_sel_aga").val().split(",")[1],
                    "if_sel_aga": $("#if_sel_aga").val().split(",")[1],
                    "up_sel_aga": $("#up_sel_aga").val().split(",")[1],
                    "bp_sel_aga": $("#bp_sel_aga").val().split(",")[1],
                    "le_sel_aga": $("#le_sel_aga").val().split(",")[1],
                    "ue_sel_aga": $("#ue_sel_aga").val().split(",")[1],
                    "de_sel_aga": $("#de_sel_aga").val().split(",")[1],
                    "diam_sel_aga": $("#diam_sel_aga").val().split(",")[1]
                };
                if (opcion === 'flowrate') {
                    var res = flowrate_aga_form(variables, unidades);
                }
                if (opcion === 'upstream') {

                    var res = upstream_aga_form(variables, unidades);
                }
                if (opcion === 'downstream') {
                    var res = downstream_aga_form(variables, unidades);
                }
                if (opcion === 'internal') {
                    var res = internal_aga_form(variables, unidades);
                }
                $("#flowrate_aga_r").val(res[0]);


                show_OkDialog($("#calculate_Dialog_aga"), "Proceso satisfactorio");
            }

            function loadSuggested_aga() {

                var parametros = {
                    "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                    "opcion": "4"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_aga();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        show_OkDialog($("#load_Dialog_aga"), "Proceso satisfactorio");
                        var res = data.split("-");

                        $("#basetemperature_aga").val(res[1]);
                        $("#basepressure_aga").val(res[0]);
                        cleanOut_aga();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_aga"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function deleteReg_aga() {

                var parametros = {
                    "id_aga": $("#id_aga").val(),
                    "form": "2",
                    "opcion": "3"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_aga();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_aga();
                        show_OkDialog($("#delete_Dialog_aga"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_aga"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_agauE_sel_aga() {
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
                        var newHtml = "<select class=\"form-control\" name=\"if_sel_aga\" id= \"if_sel_aga\" onchange='cleanOut_aga()'>" + data;
                        $("#div_if_sel_aga").html(newHtml);

                        $("#if_sel_aga").val("71,MMSCFD");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_aga"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_press_sel_aga() {
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
                        var newHtml = "<select class=\"form-control\" name=\"up_sel_aga\" id= \"up_sel_aga\" onchange=\"onchange_pres_aga(this)\">" + data;
                        $("#div_up_sel_aga").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"dp_sel_aga\" id= \"dp_sel_aga\" onchange=\"onchange_pres_aga(this)\">" + data;
                        $("#div_dp_sel_aga").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bp_sel_aga\" id= \"bp_sel_aga\" onchange=\"cleanOut_aga()\">" + data;
                        $("#div_bp_sel_aga").html(newHtml);

                        var newHtml = "<select class=\"form-control\" name=\"bte_sel_aga\" id= \"bte_sel_aga\" onchange=\"onchange_pres_aga(this)\">" + data;
                        $("#div_bte_sel_aga").html(newHtml);

                        /*  var newHtml = "<select class=\"form-control\" name=\"gft_sel_aga\" id= \"gft_sel_aga\" onchange=\"onchange_pres_aga(this)\">" + data;
                         $("#div_gft_sel_aga").html(newHtml);*/

                        var obj = [$("#up_sel_aga"), $("#dp_sel_aga"), $("#bp_sel_aga"), $("#bte_sel_aga")];
                        onchageGeneral(obj, "5,psia");

                        //$("#bp_sel_aga").val("5,psia");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_aga"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_pres_aga(imp) {
                cleanOut_aga();
            }
            function load_in_sel_aga() {
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
                        var newHtml = "<select class=\"form-control\" name=\"bc_sel_aga\" id= \"bc_sel_aga\" onchange=\"onchange_long_aga(this)\">" + data;
                        $("#div_bc_sel_aga").html(newHtml);

                        /* newHtml = "<select class=\"form-control\" name=\"gft_sel_aga\" id= \"gft_sel_aga\" onchange=\"onchange_long_aga(this)\">" + data;
                         $("#div_gft_sel_aga").html(newHtml);*/



                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_aga"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_temp_sel_aga() {
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
                        var newHtml = "<select class='form-control' name='st_sel_aga' id= 'st_sel_aga' onchange='cleanOut_aga()'>" + data;
                        $("#div_st_sel_aga").html(newHtml);

                        newHtml = "<select class='form-control' name='bt_sel_aga' id= 'bt_sel_aga' onchange='cleanOut_aga()'>" + data;
                        $("#div_bt_sel_aga").html(newHtml);

                        var newHtml = "<select class=\"form-control\" name=\"gft_sel_aga\" id= \"gft_sel_aga\" onchange=\"onchange_pres_aga(this)\">" + data;
                        $("#div_gft_sel_aga").html(newHtml)

                        var vecObj = [$("#bt_sel_aga"), $("#gft_sel_aga")];
                        onchageGeneral(vecObj, "3,F");


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_aga"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_len_sel_aga() {
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
                        var newHtml = "<select class='form-control' name='ue_sel_aga' id= 'ue_sel_aga' onchange='cleanOut_aga()'>" + data;
                        $("#div_ue_sel_aga").html(newHtml);

                        var newHtml = "<select class='form-control' name='de_sel_aga' id= 'de_sel_aga' onchange='cleanOut_aga()'>" + data;
                        $("#div_de_sel_aga").html(newHtml);

                        var newHtml = "<select class='form-control' name='le_sel_aga' id= 'le_sel_aga' onchange='cleanOut_aga()'>" + data;
                        $("#div_le_sel_aga").html(newHtml);

                        var vecObj = [$("#de_sel_aga"), $("#ue_sel_aga"), , $("#le_sel_aga")];
                        onchageGeneral(vecObj, "2463,mt");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_aga"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_Input_aga(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_aga();
            }
        </script>

        <div id="load_Dialog_aga" title="Basic dialog" style='display:none;'>
            <p>Datos cargados exitosamente</p>
        </div>

        <div id="save_Dialog_aga" title="Basic dialog" style='display:none;'>
            <p>Datos guardados exitosamente</p>
        </div>

        <div id="error_Dialog_aga" title="Basic dialog" style='display:none;'>
            <p>Ha ocurrido un error en el proceso</p>
        </div>

        <div id="calculate_Dialog_aga" title="Basic dialog" style='display:none;'>
            <p>Calculo realizado exitosamente</p>
        </div>

        <div id="delete_Dialog_aga" title="Basic dialog" style='display:none;'>
            <p>Registro eliminado exitosamente</p>
        </div>
    </body>
</html>