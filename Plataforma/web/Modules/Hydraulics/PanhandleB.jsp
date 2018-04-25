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
                <h2><strong>Hydraulics:</strong> Panhandle B</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_bdp()">
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
                                <div id="div-table_bdp"></div>
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
                <input  class="form-control" type="text" id="description_bdp" name="description_bdp"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_bdp" name="proyects_sel_bdp"> </select>
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
                                            <input class="form-control" type="text" id="basetemperature_bdp" name="basetemperature_bdp" onchange="onchange_Input_bdp(this)" required value="60">
                                        </div>
                                        <div class="col-sm-6" id="div_bt_sel_bdp">
                                            <select class="form-control" id="bt_sel_bdp" name="bt_sel_bdp" onchange="cleanOut_bdp()"> </select>
                                        </div>

                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-12">
                                            <label>Base Pressure:</label>
                                        </div>
                                        <div class="col-sm-6">
                                            <input  class="form-control" type="text" id="basepressure_bdp" name="basepressure_bdp" onchange="onchange_Input_bdp(this)" required value="14.65"><br>
                                        </div>

                                        <div class="col-sm-6" id="div_bte_sel_bdp">
                                            <select class="form-control" id="bte_sel_bdp" name="bte_sel_bdp" onchange='cleanOut_bdp()'> </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-12"><label>Unknown</label>        </div>
                                        <select class="form-control" onchange="hide(this)" id="unknown_bdp" name="unknown_bdp">
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
                                        <input class="form-control" type="text" id="gasflowingtemp_bdp" name="gasflowingtemp_bdp" onchange="onchange_Input_bdp(this)" required>
                                    </div>   
                                    <div class="col-md-4" id = "div_gft_sel_bdp">
                                        <select class="form-control" id="gft_sel_bdp" name="gft_sel_bdp"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                        <label>Gas Specific Gravity:</label>
                                        <input class="form-control" type="text" id="gasspecificgra_bdp" name="gasspecificgra_bdp" onchange="onchange_Input_bdp(this)" required>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12">
                                        <label>Pipeline Efficiency Factor</label>
                                        <input class="form-control" type="text" id="pipelineefficiency_bdp" name="pipelineefficiency_bdp" onchange="onchange_Input_bdp(this)" required>
                                    </div>
                                </div>
                                <!-- Desaparece opción 1-->
                                <div class="col-md-12" id="flowrate">
                                    <div class="col-md-12"><label>Flow Rate</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="flowrate_bdp" name="flowrate_bdp" required onchange="onchange_Input_bdp(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_if_sel_bdp">
                                        <select class="form-control" id="if_sel_bdp" name="if_sel_bdp" onchange='cleanOut_bdp()'> </select>
                                    </div>

                                </div>
                                <!-- fin -->
                                <div class="col-md-12"  id="upstream">
                                    <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                    <div class="col-md-8">                                            
                                        <input class="form-control" type="text" id="upstreampressure_bdp" name="upstreampressure_bdp" onchange="onchange_Input_bdp(this)"  required>
                                    </div>
                                    <div class="col-md-4" id="div_up_sel_bdp">
                                        <select class="form-control" id="up_sel_bdp" name="up_sel_bdp"> </select>
                                    </div>

                                </div>
                                <div class="col-md-12 success"  id="downstream">
                                    <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                    <div class="col-md-8">                                            
                                        <input class="form-control" type="text" id="downstreampressure_bdp" name="downstreampressure_bdp" onchange="onchange_Input_bdp(this)" required>
                                    </div>
                                    <div class="col-md-4" id="div_bp_sel_bdp">
                                        <select class="form-control" id="bp_sel_bdp" name="bp_sel_bdp"> </select>
                                    </div>
                                </div>
                                <div class="col-md-12" id="internal">
                                    <div class="col-md-12"><label>Internal Pipe Diameter</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" value="954.4" type="text" id="internalpipe_bdp" name="internalpipe_bdp"  required onchange="onchange_Input_bdp(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_diam_sel_bdp">
                                        <select class="form-control" id="diam_sel_bdp" name="diam_sel_bdp" onchange='cleanOut_bdp()'> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12"><label>Length of Pipeline</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="lengthof_bdp" name="lengthof_bdp"  required onchange="onchange_Input_bdp(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_le_sel_bdp">
                                        <select class="form-control" id="le_sel_bdp" name="le_sel_bdp" onchange='cleanOut_bdp()'> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="upstreamelevation_bdp" name="upstreamelevation_bdp" required onchange="onchange_Input_bdp(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_ue_sel_bdp">
                                        <select class="form-control" id="ue_sel_bdp" name="ue_sel_bdp" onchange='cleanOut_bdp()'> </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="col-md-12"><label>Downstream Elevation</label></div>
                                    <div class="col-md-8">
                                        <input class="form-control" type="text" id="downstreamelevation_bdp" name="downstreamelevation_bdp"  required onchange="onchange_Input_bdp(this)">
                                    </div>
                                    <div class="col-md-4" id = "div_de_sel_bdp">
                                        <select class="form-control" id="de_sel_bdp" name="de_sel_bdp" onchange='cleanOut_bdp()'> </select>
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

                            <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_bdp()" class="btn btn-info btn-block">
                            <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_bdp()" class="btn btn-success btn-block">   
                            <input type="button" id="delteBtn" name="delteBtn" value="Delete" onclick="deleteReg_bdp()" class="btn btn-danger btn-block">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3">
            <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_bdp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_bdp()" class="btn btn-warning btn-block">
            <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_bdp()" class="btn btn-warning btn-block">
            <!-- input type="button" id="cleanSuggestedBtn" name="cleanBtn" value="Limpiar Datos Sugeridos" onclick="cleanSugg_bdp()" class="btn btn-warning btn-block" -->
        </div>
        <input type="hidden" id="opt_bdp" name="opt_bdp" value="1"> 
        <input type="hidden" id="id_bdp" name="id_bdp" value="-1">      

        <script>
            function hide(form) {
                var opcion = (form.value);
                document.getElementById("flowrate").style.display = "block";
                document.getElementById("upstream").style.display = "block";
                document.getElementById("downstream").style.display = "block";
                document.getElementById("internal").style.display = "block";
                document.getElementById(opcion).style.display = "none";
                $("#resultado").val("");
                var x = document.getElementById("unknown_bdp").selectedIndex;
                var y = document.getElementById("unknown_bdp").options;
                document.getElementById('lbltipAddedComment').innerHTML = y[x].text;
            }
            $(document).ready(function () {

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_bdp"),
                        $("#error_Dialog_bdp"));

                load_bdpuE_sel_bdp();
                load_press_sel_bdp();
                load_in_sel_bdp();
                load_len_sel_bdp();
                load_he_sel_bdp();
                load_temp_sel_bdp();
                load_diam_sel_bdp();

            });

            function load_he_sel_bdp() {
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
                        var newHtml = "<select class='form-control' name='ee_sel_bdp' id= 'ee_sel_bdp'>" + data;
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
            
            function load_diam_sel_bdp(){
                    var parametros = {
                            "combo": "in4",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class='form-control' name='diam_sel_bdp' id= 'diam_sel_bdp' onchange='cleanOut_bdp()'>" + data;
                            $("#div_diam_sel_bdp").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_bdp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }



            function cleanOut_bdp() {
                $("#resultado").val("");
            }

            function cleanSugg_bdp() {
                $("#basepressure_bdp").val("");
                $("#basetemperature_bdp").val("");
            }

            function cleanIn_bdp() {
                $("#gasflowingtemp_bdp").val("");
                $("#gasspecificgra_bdp").val("");
                $("#pipelineefficiency_bdp").val("");
                $("#upstreampressure_bdp").val("");
                $("#downstreampressure_bdp").val("");
                $("#flowrate_bdp").val("");
                $("#internalpipe_bdp").val("");
                $("#lengthof_bdp").val("");
                $("#upstreamelevation_bdp").val("");
                $("#downstreamelevation_bdp").val("");
            }

            function cleanAll_bdp() {
                cleanIn_bdp();
                cleanSugg_bdp();
                cleanOut_bdp();
            }

            function save_bdp() {

                var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
                var selects = $("#page-wrapper select");
                var resultados = $("#page-wrapper input[type='text'][readonly]");

                var parametros = {
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "from": "bdp"
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
                            $("#id_bdp").val(data.row.id);
                            $("#opt_bdp").val("2"); //opcion editar
                            show_OkDialog($("#save_Dialog_bdp"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_bdp"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function calculate_bdp() {
                var variables = {
                    "basetemperature_bdp": $("#basetemperature_bdp").val(),
                    "basepressure_bdp": $("#basepressure_bdp").val(),
                    "gasflowingtemp_bdp": $("#gasflowingtemp_bdp").val(),
                    "gasspecificgra_bdp": $("#gasspecificgra_bdp").val(),

                    "pipelineroughness_bdp": $("#pipelineroughness_bdp").val(),
                    "pipelineefficiency_bdp": $("#pipelineefficiency_bdp").val(),

                    "flowrate_bdp": $("#flowrate_bdp").val(),
                    "downstreampressure_bdp": $("#downstreampressure_bdp").val(),
                    "internalpipe_bdp": $("#internalpipe_bdp").val(),
                    "upstreampressure_bdp": $("#upstreampressure_bdp").val(),

                    "upstreamelevation_bdp": $("#upstreamelevation_bdp").val(),
                    "lengthof_bdp": $("#lengthof_bdp").val(),
                    "downstreamelevation_bdp": $("#downstreamelevation_bdp").val()

                };
                var unidades = {
                    "bt_sel_bdp": $("#bt_sel_bdp").val().split(",")[1],
                    "bte_sel_bdp": $("#bte_sel_bdp").val().split(",")[1],
                    "gft_sel_bdp": $("#gft_sel_bdp").val().split(",")[1],
                    "if_sel_bdp": $("#if_sel_bdp").val().split(",")[1],
                    "up_sel_bdp": $("#up_sel_bdp").val().split(",")[1],
                    "bp_sel_bdp": $("#bp_sel_bdp").val().split(",")[1],
                    "le_sel_bdp": $("#le_sel_bdp").val().split(",")[1],
                    "ue_sel_bdp": $("#ue_sel_bdp").val().split(",")[1],
                    "de_sel_bdp": $("#de_sel_bdp").val().split(",")[1],
                    "diam_sel_bdp": $("#diam_sel_bdp").val().split(",")[1]
                };


                var opcion = $("#unknown_bdp").val();
                if (opcion === 'flowrate') {
                    var res = flowrateB_Form(variables, unidades);
                }
                if (opcion === 'upstream') {
                    var res = upstreampressureB_Form(variables, unidades);
                }
                if (opcion === 'downstream') {
                    var res = downstreampressureB_Form(variables, unidades);
                }
                if (opcion === 'internal') {
                    var res = internalpipediameterB_Form(variables, unidades);
                }
                $("#resultado").val(res[0]);


                show_OkDialog($("#calculate_Dialog_bdp"), "Proceso satisfactorio");
            }

            function loadSuggested_bdp() {

                var parametros = {
                    "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                    "opcion": "4"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_bdp();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        show_OkDialog($("#load_Dialog_bdp"), "Proceso satisfactorio");
                        var res = data.split("-");

                        $("#basetemperature_bdp").val(res[1]);
                        $("#basepressure_bdp").val(res[0]);
                        cleanOut_bdp();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bdp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function deleteReg_bdp() {

                var parametros = {
                    "id_bdp": $("#id_bdp").val(),
                    "form": "1",
                    "opcion": "3"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    beforeSend: function (xhr) {
                        cleanSugg_bdp();
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_bdp();
                        show_OkDialog($("#delete_Dialog_bdp"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bdp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_bdpuE_sel_bdp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"if_sel_bdp\" id= \"if_sel_bdp\" onchange='cleanOut_bdp()'>" + data;
                        $("#div_if_sel_bdp").html(newHtml);

                        $("#if_sel_bdp").val("71,MMSCFD");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bdp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_bdp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"gft_sel_bdp\" id= \"gft_sel_bdp\" onchange='cleanOut_bdp()'>" + data;
                        $("#div_gft_sel_bdp").html(newHtml);
                        
                        
                        newHtml = "<select class=\"form-control\" name=\"bt_sel_bdp\" id= \"bt_sel_bdp\" onchange='cleanOut_bdp()'>" + data;
                        $("#div_bt_sel_bdp").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bdp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_press_sel_bdp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"up_sel_bdp\" id= \"up_sel_bdp\" onchange=\"onchange_pres_bdp(this)\">" + data;
                        $("#div_up_sel_bdp").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"dp_sel_bdp\" id= \"dp_sel_bdp\" onchange=\"onchange_pres_bdp(this)\">" + data;
                        $("#div_dp_sel_bdp").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bp_sel_bdp\" id= \"bp_sel_bdp\" onchange=\"cleanOut_bdp()\">" + data;
                        $("#div_bp_sel_bdp").html(newHtml);

                        var newHtml = "<select class=\"form-control\" name=\"bte_sel_bdp\" id= \"bte_sel_bdp\" onchange=\"onchange_pres_bdp(this)\">" + data;
                        $("#div_bte_sel_bdp").html(newHtml);

                        /*  var newHtml = "<select class=\"form-control\" name=\"ee_sel_bdp\" id= \"ee_sel_bdp\" onchange=\"onchange_pres_bdp(this)\">" + data;
                         $("#div_ee_sel_bdp").html(newHtml);*/

                        var obj = [$("#up_sel_bdp"), $("#dp_sel_bdp"), $("#bp_sel_bdp"), $("#bte_sel_bdp")];
                        onchageGeneral(obj, "5,psia");

                        //$("#bp_sel_bdp").val("5,psia");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bdp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_pres_bdp(imp) {
                cleanOut_bdp();
            }
            function load_in_sel_bdp() {
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
                        var newHtml = "<select class=\"form-control\" name=\"bc_sel_bdp\" id= \"bc_sel_bdp\" onchange=\"onchange_long_bdp(this)\">" + data;
                        $("#div_bc_sel_bdp").html(newHtml);

                        /* newHtml = "<select class=\"form-control\" name=\"ee_sel_bdp\" id= \"ee_sel_bdp\" onchange=\"onchange_long_bdp(this)\">" + data;
                         $("#div_ee_sel_bdp").html(newHtml);*/



                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bdp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_len_sel_bdp() {
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
                        var newHtml = "<select class='form-control' name='ue_sel_bdp' id= 'ue_sel_bdp' onchange='cleanOut_bdp()'>" + data;
                        $("#div_ue_sel_bdp").html(newHtml);

                        var newHtml = "<select class='form-control' name='de_sel_bdp' id= 'de_sel_bdp' onchange='cleanOut_bdp()'>" + data;
                        $("#div_de_sel_bdp").html(newHtml);

                        var newHtml = "<select class='form-control' name='le_sel_bdp' id= 'le_sel_bdp' onchange='cleanOut_bdp()'>" + data;
                        $("#div_le_sel_bdp").html(newHtml);

                        var vecObj = [$("#de_sel_bdp"), $("#ue_sel_bdp"), , $("#le_sel_bdp")];
                        onchageGeneral(vecObj, "2463,mt");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_bdp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_Input_bdp(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_bdp();
            }


        </script>

        <div id="load_Dialog_bdp" title="Basic dialog" style='display:none;'>
            <p>Datos cargados exitosamente</p>
        </div>

        <div id="save_Dialog_bdp" title="Basic dialog" style='display:none;'>
            <p>Datos guardados exitosamente</p>
        </div>

        <div id="error_Dialog_bdp" title="Basic dialog" style='display:none;'>
            <p>Ha ocurrido un error en el proceso</p>
        </div>

        <div id="calculate_Dialog_bdp" title="Basic dialog" style='display:none;'>
            <p>Calculo realizado exitosamente</p>
        </div>

        <div id="delete_Dialog_bdp" title="Basic dialog" style='display:none;'>
            <p>Registro eliminado exitosamente</p>
        </div>
    </body>
</html>