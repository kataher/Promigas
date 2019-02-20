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
                                <h2><strong>Hydraulics:</strong> ColebrookWhite</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_cfr()">
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
                                                <div id="div-table_cfr"></div>
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
                                <input  class="form-control" type="text" id="description_cfr" name="description_cfr"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_cfr" name="proyects_sel_cfr"> </select>
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
                                                                                    <input class="form-control" type="text" id="basetemperature_cfr" name="basetemperature_cfr" onchange="onchange_Input_cfr(this)" required value="60">
                                                                                </div>
                                                                                <div class="col-sm-6" id="div_bt_sel_cfr">
                                                                                    <select class="form-control" id="bt_sel_cfr" name="bt_sel_cfr" onchange="cleanOut_cfr()"> </select>
                                                                                </div>

                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="col-sm-12">
                                                                                    <label>Base Pressure:</label>
                                                                                </div>
                                                                                <div class="col-sm-6">
                                                                                    <input  class="form-control" type="text" id="basepressure_cfr" name="basepressure_cfr" onchange="onchange_Input_cfr(this)" required value="14.65"><br>
                                                                                </div>

                                                                                <div class="col-sm-6" id="div_bte_sel_cfr">
                                                                                    <select class="form-control" id="bte_sel_cfr" name="bte_sel_cfr"> </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <div class="col-md-12"><label>Unknown</label>        </div>
                                                                                <select class="form-control" onchange="hide(this)" id="unknown_cfr" name="unknown_cfr">
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
                                                                    <form role="form">
                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-12"> <label>Gas flow temperature</label></div>
                                                                                <div class="col-md-8">                                              
                                                                                    <input class="form-control" type="text" value="80" id="gasflowingtemp_cfr" name="gasflowingtemp_cfr" onchange="onchange_Input_cfr(this)" required>
                                                                                </div>   
                                                                                <div class="col-md-4" id = "div_ee_sel_cfr">
                                                                                    <select class="form-control" id="ee_sel_cfr" name="ee_sel_cfr"> </select>
                                                                                </div>
                                                                            </div>

                                                                            <div class="col-md-12">
                                                                                <div class="col-md-12"> <label>Gas Specific Gravity:</label></div>
                                                                                <div class="col-md-12">                                              
                                                                                    <input class="form-control" type="text" value="0.6" id="gasspecificgra_cfr" name="gasspecificgra_cfr" onchange="onchange_Input_cfr(this)" required>
                                                                                </div>  
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-12">
                                                                                    <label>Pipeline Roughness:</label>
                                                                                </div>
                                                                                <div class="col-md-8"> 
                                                                                    <div id="div_rou_sel_cfr">
                                                                                        <select class="form-control" id="roughness_cfr" name="roughness_cfr"> </select>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-md-4"> 
                                                                                    <input class="form-control" type="text" id="pipelineroughness_cfr" name="pipelineroughness_cfr" required onchange="onchange_Input_cfr(this)">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-12">
                                                                                    <label>Pipeline Efficiency Factor</label>
                                                                                    <input class="form-control" value="0.92" type="text" id="pipelineefficiency_cfr" name="pipelineefficiency_cfr"  onchange="onchange_Input_cfr(this)"  required>
                                                                                </div>
                                                                            </div>
                                                                            <!-- Desaparece opción 1-->
                                                                            <!-- Desaparece opción 1-->
                                                                            <div class="col-md-12" id="flowrate">
                                                                                <div class="col-md-12"><label>Flow Rate</label></div>
                                                                                <div class="col-md-8">
                                                                                    <input class="form-control" type="text" id="flowrate_cfr" name="flowrate_cfr" onchange="onchange_Input_cfr(this)"  required >
                                                                                </div>
                                                                                <div class="col-md-4" id = "div_if_sel_cfr">
                                                                                    <select class="form-control" id="if_sel_cfr" name="if_sel_cfr" onchange="onchange_fr_cfr(this)"> </select>
                                                                                </div>

                                                                            </div>
                                                                            <!-- fin -->
                                                                            <div class="col-md-12"  id="upstream">
                                                                                <div class="col-md-12"> <label> Upstream Pressure</label></div>
                                                                                <div class="col-md-8">                                            
                                                                                    <input class="form-control" type="text" value="900" id="upstreampressure_cfr" name="upstreampressure_cfr" onchange="onchange_Input_cfr(this)"  required>
                                                                                </div>
                                                                                <div class="col-md-4" id="div_up_sel_cfr">
                                                                                    <select class="form-control" id="up_sel_cfr" name="up_sel_cfr"> </select>
                                                                                </div>

                                                                            </div>
                                                                            <div class="col-md-12 success"  id="downstream">
                                                                                <div class="col-md-12"> <label>Downstream Pressure</label></div>
                                                                                <div class="col-md-8">                                            
                                                                                    <input class="form-control" value="600" type="text" id="downstreampressure_cfr" name="downstreampressure_cfr" onchange="onchange_Input_cfr(this)"  required>
                                                                                </div>
                                                                                <div class="col-md-4" id="div_bp_sel_cfr">
                                                                                    <select class="form-control" id="bp_sel_cfr" name="bp_sel_cfr"> </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-12" id="internal">
                                                                                <div class="col-md-12"><label>Internal Pipe Diameter</label></div>
                                                                                <div class="col-md-8">
                                                                                    <input class="form-control" value="19" type="text" id="internalpipe_cfr" name="internalpipe_cfr"  required onchange="onchange_Input_cfr(this)">
                                                                                </div>
                                                                                <div class="col-md-4" id = "div_diam_sel_cfr">
                                                                                    <select class="form-control" id="diam_sel_cfr" name="diam_sel_cfr" onchange='cleanOut_cfr()'> </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-12"><label>Length of Pipeline</label></div>
                                                                                <div class="col-md-8">
                                                                                    <input class="form-control" value="15" type="text" id="lengthof_cfr" name="lengthof_cfr"  required onchange="onchange_Input_cfr(this)">
                                                                                </div>
                                                                                <div class="col-md-4" id = "div_le_sel_cfr">
                                                                                    <select class="form-control" id="le_sel_cfr" name="le_sel_cfr" onchange='cleanOut_cfr()'> </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-12">  <label>Upstream Elevation</label></div>
                                                                                <div class="col-md-8">
                                                                                    <input class="form-control" value="0" type="text" id="upstreamelevation_cfr" name="upstreamelevation_cfr" required onchange="onchange_Input_cfr(this)">
                                                                                </div>
                                                                                <div class="col-md-4" id = "div_ue_sel_cfr">
                                                                                    <select class="form-control" id="ue_sel_cfr" name="ue_sel_cfr" onchange='cleanOut_cfr()'> </select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <div class="col-md-12"><label>Downstream Elevation</label></div>
                                                                                <div class="col-md-8">
                                                                                    <input class="form-control" value="0" type="text" id="downstreamelevation_cfr" name="downstreamelevation_cfr"  required onchange="onchange_Input_cfr(this)">
                                                                                </div>
                                                                                <div class="col-md-4" id = "div_de_sel_cfr">
                                                                                    <select class="form-control" id="de_sel_cfr" name="de_sel_cfr" onchange='cleanOut_cfr()'> </select>
                                                                                </div>
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
                                                        <div class="panel-heading">
                                                            Results                        
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <form role="form">
                                                                        <div class="form-group">

                                                                            <div class="form-group">
                                                                                <label id="lbltipAddedComment">Flow Rate</label>
                                                                                <input class="form-control" type="text" id="resultado_cfr" name="resultado_cfr" readonly>
                                                                            </div>



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
                                                <input type="button" id="calculateBtn" name="calculateBtn" value="Calculate" onclick="calculate_cfr()" class="btn btn-info btn-block">
                                                <input type="submit" id="saveBtn" name="saveBtn" value="Save" onclick="save_cfr()"  class="btn btn-success btn-block"> 
                                                <input type="button" id="delteBtn" name="delteBtn" value="Delete" onclick="deleteReg_cfr()"  class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn" name="cleanBtn" value="Clean All" onclick="cleanAll_cfr()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn" name="cleanBtn" value="Clean Input Data" onclick="cleanIn_cfr()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn" name="cleanBtn" value="Clean Output Data" onclick="cleanOut_cfr()" class="btn btn-warning btn-block">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_cfr" name="opt_cfr" value="1"> 
                            <input type="hidden" id="id_cfr" name="id_cfr" value="-1">  
                        </div>

                        <div id="load_Dialog_cfr" title="Basic dialog" style='display:none;'>
                            <p>Datos cargados exitosamente</p>
                        </div>

                        <div id="save_Dialog_cfr" title="Basic dialog" style='display:none;'>
                            <p>Datos guardados exitosamente</p>
                        </div>

                        <div id="error_Dialog_cfr" title="Basic dialog" style='display:none;'>
                            <p>Ha ocurrido un error en el proceso</p>
                        </div>

                        <div id="calculate_Dialog_cfr" title="Basic dialog" style='display:none;'>
                            <p>Calculo realizado exitosamente</p>
                        </div>

                        <div id="delete_Dialog_cfr" title="Basic dialog" style='display:none;'>
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
            var x = document.getElementById("unknown_cfr").selectedIndex;
            var y = document.getElementById("unknown_cfr").options;
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
                    $("#proyects_sel_cfr"),
                    $("#error_Dialog_cfr"));

            $("#opt_cfr").val("1");
            load_np_sel_rwb("cole");
            load_cfruE_sel_cfr();
            load_press_sel_cfr();
            load_in_sel_cfr();
            load_temp_sel_cfr();
            load_len_sel_cfr();
            load_he_sel_crf();
            load_diam_sel_cfr();
        });

        function load_diam_sel_cfr() {
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
                    var newHtml = "<select class='form-control' name='diam_sel_cfr' id='diam_sel_cfr' onchange='cleanOut_cfr()'>" + data;
                    $("#div_diam_sel_cfr").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_cfr"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_he_sel_crf() {
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
                    var newHtml = "<select class='form-control' name='ee_sel_crf' id= 'ee_sel_crf' onchange='cleanOut_cfr()'>" + data;
                    $("#div_ee_sel_crf").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_crf"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_history_cfr() {
            var parametros = {
                "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "from": "cfr",
                "opcion": "6",
                "nombre": "historial"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    $("#opt_cfr").val("1");
                    $("#id_cfr").val("");
                    cleanAll_cfr();
                    block("Cargado datos...");
                },
                success: function (data, status, request) {

                    if (data !== null) {
                        var tags = Object.keys(data.historial[0]);

                        var tamano = data.size;

                        var html = "<table class='table table-bordered table-striped'>";
                        html += "<thead>";
                        html += "<tr>";
                        html += "<th>Fecha de Creación</th>";
                        html += "<th>Descripción</th>";
                        html += "<th>Cargar</th>";
                        html += "</tr>";
                        html += "</thead>";
                        if (tamano > 0) {

                            html += '<tbody>';
                            for (var i = 0; i < tamano; i++) {
                                html += "<tr>";
                                html += "<td>" + data.historial[i].date + "</td>";
                                html += "<td>" + data.historial[i].description_cfr + "</td>";
                                html += "<td><a href='#' onClick=\"load_form_cfr(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_cfr").empty();
                    $("#div-table_cfr").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_cfr"), "Error");
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
                url: "../manager.jsp",
                data: parametros,
                async: false,
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    var newHtml = "<select class=\"form-control\" name=\"roughness_cfr\" id= \"roughness_cfr\" onchange=\"onchange_rou_cfr()\">" + data;
                    $("#div_rou_sel_cfr").html(newHtml);
                    var po = $("#roughness_cfr").val().trim().split(",")[1];
                    $("#pipelineroughness_cfr").val(po);
                    onchange_rou_cfr();
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_rwb"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function onchange_rou_cfr() {
            var po = $("#roughness_cfr").val();
            $("#pipelineroughness_cfr").val(po.split(",")[1]);
            cleanOut_cfr();
        }

        function onchange_Input_cfr(inp) {
            var sw = validateDecimal(inp.value);

            if (sw != true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_cfr();
        }

        function cleanOut_cfr() {
            $("#resultado_cfr").val("");
        }

        function cleanSugg_cfr() {
            $("#basepressure_cfr").val("");
            $("#basetemperature_cfr").val("");
        }

        function cleanIn_cfr() {
            $("#gasflowingtemp_cfr").val("");
            $("#gasspecificgra_cfr").val("");
            $("#pipelineefficiency_cfr").val("");
            $("#flowrate_cfr").val("");
            $("#upstreampressure_cfr").val("");
            $("#downstreampressure_cfr").val("");
            $("#internalpipe_cfr").val("");
            $("#lengthof_cfr").val("");
            $("#upstreamelevation_cfr").val("");
            $("#downstreamelevation_cfr").val("");
        }

        function cleanAll_cfr() {
            cleanIn_cfr();
            cleanSugg_cfr();
            cleanOut_cfr();
        }

        function save_cfr() {

            var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
            var selects = $("#page-wrapper select");
            var resultados = $("#page-wrapper input[type='text'][readonly]");

            var parametros = {
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "from": "cfr"
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
                        $("#id_cfr").val(data.row.id);
                        $("#opt_cfr").val("2"); //opcion editar
                        show_OkDialog($("#save_Dialog_cfr"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_cfr"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
        }

        function calculate_cfr() {
            var opcion = $("#unknown_cfr").val();

            var variables = {
                "basetemperature_cfr": $("#basetemperature_cfr").val(),
                "basepressure_cfr": $("#basepressure_cfr").val(),
                "pipelineroughness_cfr": $("#pipelineroughness_cfr").val(),
                "gasflowingtemp_cfr": $("#gasflowingtemp_cfr").val(),
                "gasspecificgra_cfr": $("#gasspecificgra_cfr").val(),
                "pipelineefficiency_cfr": $("#pipelineefficiency_cfr").val(),
                "flowrate_cfr": $("#flowrate_cfr").val(),
                "upstreampressure_cfr": $("#upstreampressure_cfr").val(),
                "internalpipe_cfr": $("#internalpipe_cfr").val(),
                "downstreampressure_cfr": $("#downstreampressure_cfr").val(),
                "lengthof_cfr": $("#lengthof_cfr").val(),
                "upstreamelevation_cfr": $("#upstreamelevation_cfr").val(),
                "downstreamelevation_cfr": $("#downstreamelevation_cfr").val()

            };
            var unidades = {
                "bt_sel_cfr": $("#bt_sel_cfr").val().split(",")[1],
                "bte_sel_cfr": $("#bte_sel_cfr").val().split(",")[1],
                "ee_sel_cfr": $("#ee_sel_cfr").val().split(",")[1],
                "if_sel_cfr": $("#if_sel_cfr").val().split(",")[1],
                "up_sel_cfr": $("#up_sel_cfr").val().split(",")[1],
                "bp_sel_cfr": $("#bp_sel_cfr").val().split(",")[1],
                "le_sel_cfr": $("#le_sel_cfr").val().split(",")[1],
                "ue_sel_cfr": $("#ue_sel_cfr").val().split(",")[1],
                "de_sel_cfr": $("#de_sel_cfr").val().split(",")[1],
                "diam_sel_cfr": $("#diam_sel_cfr").val().split(",")[1]
            };

            // var isOk = validate(variables);

            /* if(isOk === false){
             alert("Debe diligenciar todos los campos");
             }else{*/

            var res;
            if (opcion === 'flowrate') {
                res = flowrate_cl_form(variables, unidades);
            }
            if (opcion === 'upstream') {

                res = upstream_cl_form(variables, unidades);
            }
            if (opcion === 'downstream') {
                res = downstream_cl_form(variables, unidades);
            }
            if (opcion === 'internal') {
                res = internal_cl_form(variables, unidades);
            }
            $("#resultado_cfr").val(res);


            show_OkDialog($("#calculate_Dialog_cfr"), "Proceso satisfactorio");
            // }
        }

        function deleteReg_cfr() {
            var parametros = {
                "id_cfr": $("#id_cfr").val(),
                "opcion": 3,
                "from": "cfr"
            };


            if ($("#opt_cfr").val() === 2) {
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        cleanAll_cfr();
                        $("#id_cfr").val("");
                        $("#opt_cfr").val("1");
                        show_OkDialog($("#delete_Dialog_cfr"), "Proceso satisfactorio");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_cfr"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });

            } else {
                alert("Debe cargar un registro para poder eliminarlo");
            }
        }







        function load_cfruE_sel_cfr() {
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
                    var newHtml = "<select class=\"form-control\" name=\"if_sel_cfr\" id= \"if_sel_cfr\" onchange=\"cleanOut_cfr()\">" + data;
                    $("#div_if_sel_cfr").html(newHtml);

                    $("#if_sel_cfr").val("71,MMSCFD");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_cfr"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function load_press_sel_cfr() {
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
                    var newHtml = "<select class=\"form-control\" name=\"up_sel_cfr\" id= \"up_sel_cfr\" onchange=\"onchange_pres_cfr(this)\">" + data;
                    $("#div_up_sel_cfr").html(newHtml);

                    newHtml = "<select class=\"form-control\" name=\"dp_sel_cfr\" id= \"dp_sel_cfr\" onchange=\"onchange_pres_cfr(this)\">" + data;
                    $("#div_dp_sel_cfr").html(newHtml);

                    newHtml = "<select class=\"form-control\" name=\"bp_sel_cfr\" id= \"bp_sel_cfr\" onchange=\"cleanOut_cfr()\">" + data;
                    $("#div_bp_sel_cfr").html(newHtml);

                    var newHtml = "<select class=\"form-control\" name=\"bte_sel_cfr\" id= \"bte_sel_cfr\" onchange=\"onchange_pres_cfr(this)\">" + data;
                    $("#div_bte_sel_cfr").html(newHtml);

                    /*  var newHtml = "<select class=\"form-control\" name=\"ee_sel_cfr\" id= \"ee_sel_cfr\" onchange=\"onchange_pres_cfr(this)\">" + data;
                     $("#div_ee_sel_cfr").html(newHtml);*/

                    var obj = [$("#up_sel_cfr"), $("#dp_sel_cfr"), $("#bp_sel_cfr"), $("#bte_sel_cfr")];
                    onchageGeneral(obj, "5,psia");

                    //$("#bp_sel_cfr").val("5,psia");

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_cfr"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function onchange_pres_cfr(imp) {
            cleanOut_cfr();
        }
        function load_in_sel_cfr() {
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
                    var newHtml = "<select class=\"form-control\" name=\"bc_sel_cfr\" id= \"bc_sel_cfr\" onchange=\"onchange_long_cfr(this)\">" + data;
                    $("#div_bc_sel_cfr").html(newHtml);

                    /* newHtml = "<select class=\"form-control\" name=\"ee_sel_cfr\" id= \"ee_sel_cfr\" onchange=\"onchange_long_cfr(this)\">" + data;
                     $("#div_ee_sel_cfr").html(newHtml);*/



                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_cfr"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function load_temp_sel_cfr() {
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
                    var newHtml = "<select class='form-control' name='st_sel_cfr' id= 'st_sel_cfr' onchange='cleanOut_cfr()'>" + data;
                    $("#div_st_sel_cfr").html(newHtml);

                    newHtml = "<select class='form-control' name='bt_sel_cfr' id= 'bt_sel_cfr' onchange='cleanOut_cfr()'>" + data;
                    $("#div_bt_sel_cfr").html(newHtml);

                    var newHtml = "<select class=\"form-control\" name=\"ee_sel_cfr\" id= \"ee_sel_cfr\" onchange=\"onchange_pres_cfr(this)\">" + data;
                    $("#div_ee_sel_cfr").html(newHtml)

                    var vecObj = [$("#bt_sel_cfr"), $("#ee_sel_cfr")];
                    onchageGeneral(vecObj, "3,F");


                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_cfr"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }
        function load_len_sel_cfr() {
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
                    var newHtml = "<select class='form-control' name='ue_sel_cfr' id= 'ue_sel_cfr' onchange='cleanOut_cfr()'>" + data;
                    $("#div_ue_sel_cfr").html(newHtml);

                    var newHtml = "<select class='form-control' name='de_sel_cfr' id= 'de_sel_cfr' onchange='cleanOut_cfr()'>" + data;
                    $("#div_de_sel_cfr").html(newHtml);

                    var newHtml = "<select class='form-control' name='le_sel_cfr' id= 'le_sel_cfr' onchange='cleanOut_cfr()'>" + data;
                    $("#div_le_sel_cfr").html(newHtml);

                    var vecObj = [$("#de_sel_cfr"), $("#ue_sel_cfr"), , $("#le_sel_cfr")];
                    onchageGeneral(vecObj, "2463,mt");

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_cfr"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

    </script>

</html>