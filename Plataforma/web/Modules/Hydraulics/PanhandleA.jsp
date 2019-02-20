<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>

<html lang="en">
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>::PROMIGAS::</title>  
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

            <!-- Navigation -->
            <jsp:include page="../../allmenu.jsp"/>

            <div id="page-wrapper">
                <div class="row">
                    <div id="content">
                        <div class="row">
                            <div class="col-lg-9">
                                <h2><strong>Hydraulics:</strong> Panhandle A</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
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
                        </div>
                        <div class="row">

                            <div class="col-lg-12">
                                Description: 
                                <input  class="form-control" type="text" id="description_adp" name="description_adp"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_adp" name="proyects_sel_adp"> </select>
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

                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Suggested Data
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
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
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading"> Input Parameters </div>
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
                                                                                <input class="form-control" value="490933664.96811527" type="text" id="flowrate_adp" name="flowrate_adp" required onchange="onchange_Input_adp(this)">
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_if_sel_adp">
                                                                                <select class="form-control" id="if_sel_adp" name="if_sel_adp" onchange="cleanOut_adp()"> </select>
                                                                            </div>

                                                                        </div>
                                                                        <!-- fin -->
                                                                        <div class="col-md-12"  id="upstream">
                                                                            <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                                                            <div class="col-md-8">                                            
                                                                                <input class="form-control" value="900" type="text" id="upstreampressure_adp" name="upstreampressure_adp" onchange="onchange_Input_adp(this)"  required>
                                                                            </div>
                                                                            <div class="col-md-4" id="div_up_sel_adp">
                                                                                <select class="form-control" id="up_sel_adp" name="up_sel_adp"> </select>
                                                                            </div>

                                                                        </div>
                                                                        <div class="col-md-12 success"  id="downstream">
                                                                            <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                                                            <div class="col-md-8">                                            
                                                                                <input class="form-control" value="600" type="text" id="downstreampressure_adp" name="downstreampressure_adp" onchange="onchange_Input_adp(this)" required>
                                                                            </div>
                                                                            <div class="col-md-4" id="div_bp_sel_adp">
                                                                                <select class="form-control" id="bp_sel_adp" name="bp_sel_adp"> </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" id="internal">
                                                                            <div class="col-md-12"><label>Internal Pipe Diameter</label></div>
                                                                            <div class="col-md-8">
                                                                                <input class="form-control" value="19" type="text" id="internalpipe_adp" name="internalpipe_adp"  required onchange="onchange_Input_adp(this)">
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
                                                                                <select class="form-control" id="le_sel_apd" name="le_sel_apd" onchange="cleanOut_adp()"> </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                                                            <div class="col-md-8">
                                                                                <input class="form-control" type="text"  value="0" id="upstreamelevation_adp" name="upstreamelevation_adp" required onchange="onchange_Input_adp(this)">
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_ue_sel_apd">
                                                                                <select class="form-control" id="ue_sel_apd" name="ue_sel_apd" onchange="cleanOut_adp()"> </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <div class="col-md-12"><label>Downstream Elevation</label></div>
                                                                            <div class="col-md-8">
                                                                                <input class="form-control" value="0" type="text" id="downstreamelevation_adp" name="downstreamelevation_adp"  required onchange="onchange_Input_adp(this)">
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_de_sel_apd">
                                                                                <select class="form-control" id="de_sel_apd" name="de_sel_apd" onchange="cleanOut_adp()"> </select>
                                                                            </div>
                                                                        </div>

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
                                                                    <div class="form-group">
                                                                        <label id="lbltipAddedComment">-</label>
                                                                        <input type="text" id="resultado" name="resultado" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_adp()" class="btn btn-info btn-block">
                                                <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_adp()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn" name="delteBtn" value="Delete" onclick="deleteReg_adp()" class="btn btn-danger btn-block">

                                                <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_adp()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_adp()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_adp()" class="btn btn-warning btn-block">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_adp" name="opt_adp" value="1"> 
                            <input type="hidden" id="id_adp" name="id_adp" value="-1"> 
                        </div>
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
                    </div>
                </div>

            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->
    </body>

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

            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "from": "adp"
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
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_adp").val(data.row.id);
                        $("#opt_adp").val("2"); //opcion editar
                        show_OkDialog($("#save_Dialog_adp"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_adp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
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
            if (isOk === false) {
                alert("You must complete all fields");
            } else {
                var unidades = {
                    "bt_sel_adp": $("#bt_sel_adp").val().split(",")[1],
                    "bte_sel_adp": $("#bte_sel_adp").val().split(",")[1],
                    "gasft_sel_adp": $("#gasft_sel_adp").val().split(",")[1],
                    "if_sel_adp": $("#if_sel_adp").val().split(",")[1],
                    "up_sel_adp": $("#up_sel_adp").val().split(",")[1],
                    "bp_sel_adp": $("#bp_sel_adp").val().split(",")[1],
                    "le_sel_apd": $("#le_sel_apd").val().split(",")[1],
                    "ue_sel_apd": $("#ue_sel_apd").val().split(",")[1],
                    "de_sel_apd": $("#de_sel_apd").val().split(",")[1],
                    "ipd_sel_apd": $("#ipd_sel_apd").val().split(",")[1]
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
                url: "../manager.jsp",
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
                url: "../manager.jsp",
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
                url: "../manager.jsp",
                data: parametros,
                async: false,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    var newHtml = "<select class=\"form-control\" name=\"if_sel_adp\" id= \"if_sel_adp\" onchange=\"cleanOut_adp()\">" + data;
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
                url: "../manager.jsp",
                data: parametros,
                async: false,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    var newHtml = "<select class=\"form-control\" name=\"up_sel_adp\" id= \"up_sel_adp\" onchange=\"onchange_pres_adp(this)\">" + data;
                    $("#div_up_sel_adp").html(newHtml);
                    //$("#up_sel_adp").val("65,psig");

                    newHtml = "<select class=\"form-control\" name=\"dp_sel_adp\" id= \"dp_sel_adp\" onchange=\"onchange_pres_adp(this)\">" + data;
                    $("#div_dp_sel_adp").html(newHtml);

                    newHtml = "<select class=\"form-control\" name=\"bp_sel_adp\" id= \"bp_sel_adp\" onchange=\"cleanOut_adp()\">" + data;
                    $("#div_bp_sel_adp").html(newHtml);

                    var newHtml = "<select class=\"form-control\" name=\"bte_sel_adp\" id= \"bte_sel_adp\" onchange=\"cleanOut_adp()\">" + data;
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
            cleanOut_adp();
        }
        function load_in_sel_adp() {
            var parametros = {
                "combo": "in",
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
                url: "../manager.jsp",
                data: parametros,
                async: false,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    var newHtml = "<select class='form-control' name='st_sel_adp' id= 'st_sel_adp' onchange='cleanOut_adp()'>" + data;
                    $("#div_st_sel_adp").html(newHtml);

                    newHtml = "<select class='form-control' name='bt_sel_adp' id= 'bt_sel_adp' onchange='cleanOut_adp()'>" + data;
                    $("#div_bt_sel_adp").html(newHtml);

                    var newHtml = "<select class=\"form-control\" name=\"gasft_sel_adp\" id= \"gasft_sel_adp\" onchange=\"cleanOut_adp()\">" + data;
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
                url: "../manager.jsp",
                data: parametros,
                async: false,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {

                    var newHtml = "<select class='form-control' name='le_sel_apd' id= 'le_sel_apd' onchange='cleanOut_adp()'>" + data;
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
                url: "../manager.jsp",
                data: parametros,
                async: false,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    var newHtml = "<select class='form-control' name='ue_sel_apd' id= 'ue_sel_apd' onchange='cleanOut_adp()'>" + data;
                    $("#div_ue_sel_apd").html(newHtml);

                    newHtml = "<select class='form-control' name='de_sel_apd' id= 'de_sel_apd' onchange='cleanOut_adp()'>" + data;
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
                url: "../manager.jsp",
                data: parametros,
                async: false,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    var newHtml = "<select class='form-control' name='ipd_sel_apd' id= 'ipd_sel_apd' onchange='cleanOut_adp()'>" + data;
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
                url: "../manager.jsp",
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

</html>