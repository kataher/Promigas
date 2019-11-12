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
                                <h2><strong>Hydraulics:</strong> Weymouth - Downstream Pressure</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_wdp()">
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
                                                <div id="div-table_wdp"></div>
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
                                <input  class="form-control" type="text" id="description_wdp" name="description_wdp"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_wdp" name="proyects_sel_wdp"> </select>
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
                                                                    <form role="form">
                                                                        <div class="form-group">

                                                                            <div class="form-group">
                                                                                <div class="col-sm-12"> <label>Base Temperature:</label> </div>
                                                                                <div class="col-sm-5">
                                                                                    <input class="form-control" type="text" id="basetemperature_wdp" name="basetemperature_wdp" onchange="onchange_Input_wdp(this)" required value="60">
                                                                                </div>
                                                                                <div class="col-sm-6" id="div_bt_sel_wdp">
                                                                                    <select class="form-control" id="bt_sel_wdp" name="bt_sel_wdp" onchange="cleanOut_wdp()"> </select>
                                                                                </div>

                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="col-sm-12">
                                                                                    <label>Base Pressure:</label>
                                                                                </div>
                                                                                <div class="col-sm-6">
                                                                                    <input  class="form-control" type="text" id="basepressure_wdp" name="basepressure_wdp" onchange="onchange_Input_wdp(this)" required value="14.65"><br>
                                                                                </div>

                                                                                <div class="col-sm-6" id="div_bte_sel_wdp">
                                                                                    <select class="form-control" id="bte_sel_wdp" name="bte_sel_wdp"> </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="col-md-12"><label>Unknown</label>        </div>
                                                                                <select class="form-control" onchange="hide(this)" id="unknown_wdp" name="unknown_wdp">
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
                                                                                <input class="form-control" value="80" type="text" id="gasflowingtemp_wdp" name="gasflowingtemp_wdp" onchange="onchange_Input_wdp(this)" required>
                                                                            </div>   
                                                                            <div class="col-md-4" id = "div_gft_sel_wdp">
                                                                                <select class="form-control" id="gft_sel_wdp" name="gft_sel_wdp"> </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <div class="col-md-12">
                                                                                <div class="form-group">
                                                                                    <label>Gas Specific Gravity:</label>
                                                                                    <input class="form-control" value="0.6" type="text" id="gasspecificgra_wdp" name="gasspecificgra_wdp" onchange="onchange_Input_wdp(this)" required>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <div class="col-md-12">
                                                                                <div class="form-group">
                                                                                    <label>Pipeline Efficiency Factor</label>
                                                                                    <input class="form-control" value="0.92" type="text" id="pipelineefficiency_wdp" name="pipelineefficiency_wdp"  onchange="onchange_Input_wdp(this)" required>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <!-- Desaparece opción 1-->
                                                                        <!-- Desaparece opción 1-->
                                                                        <div class="col-md-12" id="flowrate">
                                                                            <div class="col-md-12"><label>Flow Rate</label></div>
                                                                            <div class="col-md-8">
                                                                                <input class="form-control" type="text" id="flowrate_wdp" name="flowrate_wdp" required onchange="onchange_Input_wdp(this)">
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_if_sel_wdp">
                                                                                <select class="form-control" id="if_sel_wdp" name="if_sel_wdp" onchange="cleanOut_wdp()"> </select>
                                                                            </div>

                                                                        </div>
                                                                        <!-- fin -->
                                                                        <div class="col-md-12"  id="upstream">
                                                                            <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                                                            <div class="col-md-8">                                            
                                                                                <input class="form-control" value="900" type="text" id="upstreampressure_wdp" name="upstreampressure_wdp" onchange="onchange_Input_wdp(this)" required>
                                                                            </div>
                                                                            <div class="col-md-4" id="div_up_sel_wdp">
                                                                                <select class="form-control" id="up_sel_wdp" name="up_sel_wdp"> </select>
                                                                            </div>

                                                                        </div>
                                                                        <div class="col-md-12 success"  id="downstream">
                                                                            <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                                                            <div class="col-md-8">                                            
                                                                                <input class="form-control" value="600" type="text" id="downstreampressure_wdp" name="downstreampressure_wdp" onchange="onchange_Input_wdp(this)" required>
                                                                            </div>
                                                                            <div class="col-md-4" id="div_bp_sel_wdp">
                                                                                <select class="form-control" id="bp_sel_wdp" name="bp_sel_wdp"> </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12" id="internal">
                                                                            <div class="col-md-12"><label>Internal Pipe Diameter</label></div>
                                                                            <div class="col-md-8">
                                                                                <input class="form-control" value="19" type="text" id="internalpipe_wdp" name="internalpipe_wdp"  required onchange="onchange_Input_wdp(this)">
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_diam_sel_wdp">
                                                                                <select class="form-control" id="diam_sel_wdp" name="diam_sel_wdp" onchange='cleanOut_wdp()'> </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <div class="col-md-12"><label>Length of Pipeline</label></div>
                                                                            <div class="col-md-8">
                                                                                <input class="form-control" value="15" type="text" id="lengthof_wdp" name="lengthof_wdp"  required onchange="onchange_Input_wdp(this)">
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_le_sel_wdp">
                                                                                <select class="form-control" id="le_sel_wdp" name="le_sel_wdp" onchange='cleanOut_wdp()'> </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                                                            <div class="col-md-8">
                                                                                <input class="form-control" value="0" type="text" id="upstreamelevation_wdp" name="upstreamelevation_wdp" required onchange="onchange_Input_wdp(this)">
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_ue_sel_wdp">
                                                                                <select class="form-control" id="ue_sel_wdp" name="ue_sel_wdp" onchange='cleanOut_wdp()'> </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <div class="col-md-12"><label>Downstream Elevation</label></div>
                                                                            <div class="col-md-8">
                                                                                <input class="form-control" value="0" type="text" id="downstreamelevation_wdp" name="downstreamelevation_wdp"  required onchange="onchange_Input_wdp(this)">
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_de_sel_wdp">
                                                                                <select class="form-control" id="de_sel_wdp" name="de_sel_wdp" onchange='cleanOut_wdp()'> </select>
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
                                                                    <form role="form">
                                                                        <div class="form-group">
                                                                            <label id="lbltipAddedComment">-</label>
                                                                            <input type="text" id="resultado" name="resultado" readonly required class="form-control">
                                                                        </div>
                                                                    </form>
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
                                                <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_wdp()" class="btn btn-info btn-block">
                                                <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_wdp()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn" name="delteBtn" value="Delete" onclick="deleteReg_wdp()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_wdp()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_wdp()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_wdp()" class="btn btn-warning btn-block">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_wdp" name="opt_wdp" value="1"> 
                            <input type="hidden" id="id_wdp" name="id_wdp" value="-1">   
                        </div>

                        <div id="load_Dialog_wdp" title="Basic dialog" style='display:none;'>
                            <p>Datos cargados exitosamente</p>
                        </div>

                        <div id="save_Dialog_wdp" title="Basic dialog" style='display:none;'>
                            <p>Datos guardados exitosamente</p>
                        </div>

                        <div id="error_Dialog_wdp" title="Basic dialog" style='display:none;'>
                            <p>Ha ocurrido un error en el proceso</p>
                        </div>

                        <div id="calculate_Dialog_wdp" title="Basic dialog" style='display:none;'>
                            <p>Calculo realizado exitosamente</p>
                        </div>

                        <div id="delete_Dialog_wdp" title="Basic dialog" style='display:none;'>
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
            var x = document.getElementById("unknown_wdp").selectedIndex;
            var y = document.getElementById("unknown_wdp").options;
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
                    $("#proyects_sel_wdp"),
                    $("#error_Dialog_wdp"));

            load_wdpuE_sel_wdp();
            load_press_sel_wdp();
            load_in_sel_wdp();
            load_temp_sel_wdp();
            load_len_sel_wdp();
            load_he_sel_wdp();
            load_diam_sel_wdp();
        });

        function load_diam_sel_wdp() {
            var parametros = {
                "combo": "in4",
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
                    var newHtml = "<select class='form-control' name='diam_sel_wdp' id= 'diam_sel_wdp' onchange='cleanOut_wdp()'>" + data;
                    $("#div_diam_sel_wdp").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_mll"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_he_sel_wdp() {
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
                    var newHtml = "<select class='form-control' name='ee_sel_wdp' id= 'ee_sel_wdp'>" + data;
                    $("#div_ee_sel_wdp").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_wdp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }



        function cleanOut_wdp() {
            $("#resultado").val("");
        }

        function cleanSugg_wdp() {
            $("#basepressure_wdp").val("");
            $("#basetemperature_wdp").val("");
        }

        function cleanIn_wdp() {
            $("#gasflowingtemp_wdp").val("");
            $("#gasspecificgra_wdp").val("");
            $("#pipelineefficiency_wdp").val("");
            $("#upstreampressure_wdp").val("");
            $("#downstreampressure_wdp").val("");
            $("#flowrate_wdp").val("");
            $("#internalpipe_wdp").val("");
            $("#lengthof_wdp").val("");
            $("#upstreamelevation_wdp").val("");
            $("#downstreamelevation_wdp").val("");
        }

        function cleanAll_wdp() {
            cleanIn_wdp();
            cleanSugg_wdp();
            cleanOut_wdp();
        }

        function save_wdp() {

            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "from": "wdp"
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
                        $("#id_wdp").val(data.row.id);
                        $("#opt_wdp").val("2"); //opcion editar
                        show_OkDialog($("#save_Dialog_wdp"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_wdp"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
        }

        function calculate_wdp() {
        //alert("here");
            var variables = {
                "basetemperature_wdp": $("#basetemperature_wdp").val(),
                "basepressure_wdp": $("#basepressure_wdp").val(),
                "gasflowingtemp_wdp": $("#gasflowingtemp_wdp").val(),
                "gasspecificgra_wdp": $("#gasspecificgra_wdp").val(),
                "pipelineroughness_wdp": $("#pipelineroughness_wdp").val(),
                "pipelineefficiency_wdp": $("#pipelineefficiency_wdp").val(),
                "flowrate_wdp": $("#flowrate_wdp").val(),
                "downstreampressure_wdp": $("#downstreampressure_wdp").val(),
                "internalpipe_wdp": $("#internalpipe_wdp").val(),
                "upstreampressure_wdp": $("#upstreampressure_wdp").val(),
                "upstreamelevation_wdp": $("#upstreamelevation_wdp").val(),
                "lengthof_wdp": $("#lengthof_wdp").val(),
                "downstreamelevation_wdp": $("#downstreamelevation_wdp").val()

            };
            var unidades = {
                "bt_sel_wdp": $("#bt_sel_wdp").val().split(",")[1],
                "bte_sel_wdp": $("#bte_sel_wdp").val().split(",")[1],
                "gft_sel_wdp": $("#gft_sel_wdp").val().split(",")[1],
                "if_sel_wdp": $("#if_sel_wdp").val().split(",")[1],
                "up_sel_wdp": $("#up_sel_wdp").val().split(",")[1],
                "bp_sel_wdp": $("#bp_sel_wdp").val().split(",")[1],
                "le_sel_wdp": $("#le_sel_wdp").val().split(",")[1],
                "ue_sel_wdp": $("#ue_sel_wdp").val().split(",")[1],
                "de_sel_wdp": $("#de_sel_wdp").val().split(",")[1],
                "diam_sel_wdp": $("#diam_sel_wdp").val().split(",")[1]
            };
            var opcion = $("#unknown_wdp").val();
            if (opcion === 'flowrate') {
                var res = flowrate_wdp_form(variables, unidades);
            }
            if (opcion === 'upstream') {
                var res = upstream_wdp_form(variables, unidades);
            }
            if (opcion === 'downstream') {
                var res = downstream_wdp_form(variables, unidades);
            }
            if (opcion === 'internal') {
                var res = internal_wdp_form(variables, unidades);
            }
            $("#resultado").val(res[0]);


            show_OkDialog($("#calculate_Dialog_wdp"), "Proceso satisfactorio");
        }

        function loadSuggested_wdp() {

            var parametros = {
                "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                "opcion": "4"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                beforeSend: function (xhr) {
                    cleanSugg_wdp();
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    show_OkDialog($("#load_Dialog_wdp"), "Proceso satisfactorio");
                    var res = data.split("-");

                    $("#basetemperature_wdp").val(res[1]);
                    $("#basepressure_wdp").val(res[0]);
                    cleanOut_wdp();
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_wdp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function deleteReg_wdp() {

            var parametros = {
                "id_wdp": $("#id_wdp").val(),
                "form": "1",
                "opcion": "3"
            };
            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                beforeSend: function (xhr) {
                    cleanSugg_wdp();
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    cleanAll_wdp();
                    show_OkDialog($("#delete_Dialog_wdp"), "Proceso satisfactorio");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_wdp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function load_wdpuE_sel_wdp() {
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
                    var newHtml = "<select class=\"form-control\" name=\"if_sel_wdp\" id= \"if_sel_wdp\" onchange='cleanOut_wdp()'>" + data;
                    $("#div_if_sel_wdp").html(newHtml);

                    $("#if_sel_wdp").val("71,MMSCFD");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_wdp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function load_press_sel_wdp() {
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
                    var newHtml = "<select class=\"form-control\" name=\"up_sel_wdp\" id= \"up_sel_wdp\" onchange=\"onchange_pres_wdp(this)\">" + data;
                    $("#div_up_sel_wdp").html(newHtml);

                    newHtml = "<select class=\"form-control\" name=\"dp_sel_wdp\" id= \"dp_sel_wdp\" onchange=\"onchange_pres_wdp(this)\">" + data;
                    $("#div_dp_sel_wdp").html(newHtml);

                    newHtml = "<select class=\"form-control\" name=\"bp_sel_wdp\" id= \"bp_sel_wdp\" onchange=\"cleanOut_wdp()\">" + data;
                    $("#div_bp_sel_wdp").html(newHtml);

                    var newHtml = "<select class=\"form-control\" name=\"bte_sel_wdp\" id= \"bte_sel_wdp\" onchange=\"onchange_pres_wdp(this)\">" + data;
                    $("#div_bte_sel_wdp").html(newHtml);

                    /*  var newHtml = "<select class=\"form-control\" name=\"gft_sel_wdp\" id= \"gft_sel_wdp\" onchange=\"onchange_pres_wdp(this)\">" + data;
                     $("#div_gft_sel_wdp").html(newHtml);*/

                    var obj = [$("#up_sel_wdp"), $("#dp_sel_wdp"), $("#bp_sel_wdp"), $("#bte_sel_wdp")];
                    onchageGeneral(obj, "5,psia");

                    //$("#bp_sel_wdp").val("5,psia");

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_wdp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function onchange_pres_wdp(imp) {
            cleanOut_wdp();
        }
        function load_in_sel_wdp() {
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
                    var newHtml = "<select class=\"form-control\" name=\"bc_sel_wdp\" id= \"bc_sel_wdp\" onchange=\"onchange_long_wdp(this)\">" + data;
                    $("#div_bc_sel_wdp").html(newHtml);

                    /* newHtml = "<select class=\"form-control\" name=\"gft_sel_wdp\" id= \"gft_sel_wdp\" onchange=\"onchange_long_wdp(this)\">" + data;
                     $("#div_gft_sel_wdp").html(newHtml);*/



                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_wdp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function load_temp_sel_wdp() {
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
                    var newHtml = "<select class='form-control' name='st_sel_wdp' id= 'st_sel_wdp' onchange='cleanOut_wdp()'>" + data;
                    $("#div_st_sel_wdp").html(newHtml);

                    newHtml = "<select class='form-control' name='bt_sel_wdp' id= 'bt_sel_wdp' onchange='cleanOut_wdp()'>" + data;
                    $("#div_bt_sel_wdp").html(newHtml);

                    var newHtml = "<select class=\"form-control\" name=\"gft_sel_wdp\" id= \"gft_sel_wdp\" onchange=\"onchange_pres_wdp(this)\">" + data;
                    $("#div_gft_sel_wdp").html(newHtml)

                    var vecObj = [$("#bt_sel_wdp"), $("#gft_sel_wdp")];
                    onchageGeneral(vecObj, "3,F");


                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_wdp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function load_len_sel_wdp() {
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
                    var newHtml = "<select class='form-control' name='ue_sel_wdp' id= 'ue_sel_wdp' onchange='cleanOut_wdp()'>" + data;
                    $("#div_ue_sel_wdp").html(newHtml);

                    var newHtml = "<select class='form-control' name='de_sel_wdp' id= 'de_sel_wdp' onchange='cleanOut_wdp()'>" + data;
                    $("#div_de_sel_wdp").html(newHtml);

                    var newHtml = "<select class='form-control' name='le_sel_wdp' id= 'le_sel_wdp' onchange='cleanOut_wdp()'>" + data;
                    $("#div_le_sel_wdp").html(newHtml);

                    var vecObj = [$("#de_sel_wdp"), $("#ue_sel_wdp"), , $("#le_sel_wdp")];
                    onchageGeneral(vecObj, "2463,mt");

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_wdp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function onchange_Input_wdp(inp) {
            var sw = validateDecimal(inp.value);

            if (sw !== true) {
                inp.value = "";
            }

            onchange_Input_zero(inp);
            cleanOut_wdp();
        }
    </script>

</html>