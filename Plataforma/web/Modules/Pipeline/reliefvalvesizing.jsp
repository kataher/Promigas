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
                                <h2><strong>Pipe Installation:</strong> 1.4. Relief Valve Sizing</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_rvs()">
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
                                                <div id="div-table_rvs"></div>
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
                                <input  class="form-control" type="text" id="description_rvs" name="description_rvs"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_rvs" name="proyects_sel_rvs"> </select>
                            </div>
                        </div>

                        <hr>
                        <div class="row">

                            <div class="col-lg-9">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Input Parameters
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-12">

                                                <div class="col-lg-12">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Options
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-6">

                                                                    <div class="form-group">            
                                                                        <div class="col-md-12">           
                                                                            <label>Sizing Option:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="radio" id="sizingo1_rvs"  name="sizingo_rvs" value="sizingo1_rvs" required onchange="onchange_sizingop_rvs('')"> Required Effective Discharge Area<br>
                                                                            <input type="radio" id="sizingo2_rvs" name="sizingo_rvs" value="sizingo2_rvs" required onchange="onchange_sizingop_rvs('')"> Required Flow through the Valve
                                                                        </div>
                                                                    </div> 
                                                                </div>
                                                                <div class="col-lg-6">

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">           
                                                                            <label>Select Known Variable:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="radio" id="selectk1_rvs" name="selectk_rvs" value="selectk1_rvs" required onchange="onchange_selectk_rvs()"> Molecular Weight of Gas or Vapor<br>
                                                                            <input type="radio" id="selectk2_rvs" name="selectk_rvs" value="selectk2_rvs" required onchange="onchange_selectk_rvs()"> Specific Gravity of Gas or Vapor
                                                                        </div>
                                                                    </div>                                    

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>



                                                <div class="col-lg-12">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Select Gas or Vapor:
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">

                                                                    <div class="form-group">

                                                                    </div>


                                                                    <div class="form-group">

                                                                        <div class="col-md-12">
                                                                            <div id="div_selectgv_sel_rvs">
                                                                                <select class="form-control" id="selectgv_sel_rvs" name="selectgv_sel_rvs" onchange="onchange_gasvp_rvs()"> </select> <br>
                                                                            </div>
                                                                            <div id="ocu_molecularws_rvs">
                                                                                <label>Molecular Weight:</label>           
                                                                                <input class="form-control" type="text" id="molecularws_rvs" name="molecularws_rvs" onchange="onchange_Input_rvs(this)" required>
                                                                            </div>
                                                                            <div id="ocu_specificg_rvs">
                                                                                <label>Specific Gravity:</label>           
                                                                                <input class="form-control" type="text" id="specificg_rvs" name="specificg_rvs" onchange="onchange_Input_rvs(this)" required>
                                                                            </div>
                                                                            <label>Specific Heat Ratio:</label><input class="form-control" type="text" id="specifich_rvs" name="specifich_rvs" onchange="onchange_Input_rvs(this)" required><br>
                                                                            <label>Critical Flow Ratio:</label><input class="form-control" type="text" id="criticalf_rvs" name="criticalf_rvs" onchange="onchange_Input_rvs(this)" required>

                                                                        </div>
                                                                    </div>


                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Height:</label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input value = "0" class="form-control" type="text" id="enteree_rvs" name="enteree_rvs" onchange="onchange_Input_rvs(this)" required>
                                                    </div>
                                                    <div class="col-md-4" id = "div_ee_sel_rvs">
                                                        <select class="form-control" id="ee_sel_rvs" name="ee_sel_rvs"> </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Relief Valve Set Pressure:</label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input class="form-control" value="500" type="text" id="relief_rvs" name="relief_rvs" onchange="onchange_Input_rvs(this)" required>
                                                    </div>
                                                    <div class="col-md-4" id = "div_rv_sel_rvs">
                                                        <select class="form-control" id="rv_sel_rvs" name="rv_sel_rvs"> </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Gas or Vapor Flowing Temperature:</label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input class="form-control" value="60" type="text" id="gasvaporf_rvs" name="gasvaporf_rvs" onchange="onchange_Input_rvs(this)" required>
                                                    </div>
                                                    <div class="col-md-4" id = "div_gfv_sel_rvs">
                                                        <select class="form-control" id="gfv_sel_rvs" name="gfv_sel_rvs"> </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Back pressure:</label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input class="form-control" type="text" value="0" id="gasp_rvs" name="gasp_rvs" onchange="onchange_Input_rvs(this)" required>
                                                    </div>
                                                    <div class="col-md-4" id = "div_bp_sel_rvs">
                                                        <select class="form-control" id="bp_sel_rvs" name="bp_sel_rvs"> </select>
                                                    </div>
                                                </div>
                                                <div class="form-group" id="ocu_requiredf_rvs">
                                                    <div class="col-md-12">
                                                        <label>Required Flow through the Valve [MSCFH]:</label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input class="form-control" value="1000" type="text" id="requiredf_rvs" name="requiredf_rvs" onchange="onchange_Input_rvs(this)" required>
                                                    </div>
                                                    <div class="col-md-4" id = "div_rf_sel_rvs">
                                                        <select class="form-control" id="rf_sel_rvs" name="rf_sel_rvs"> </select>
                                                    </div>
                                                </div>

                                                <div class="form-group" id="ocu_requiredeff_rvs">
                                                    <div class="col-md-12">
                                                        <label>Required Effective Discharge Area[in2]:</label>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <input class="form-control" type="text" id="requiredeff_rvs" name="requiredeff_rvs" onchange="onchange_Input_rvs(this)" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Kd- Effective Coefficient of Discharge:</label>

                                                        <input class="form-control" value="0.975" type="text" id="effectivec_rvs" name="entere_rvs" onchange="onchange_Input_rvs(this)" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Kb- Capacity Correction Factor:</label>
                                                    </div>
                                                    <div class="col-md-8" id = "div_cc_sel_rvs">
                                                        <select class="form-control" id="cc_sel_rvs" name="cc_sel_rvs" onchange="onchange_capacity_rvs()"> </select>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <input class="form-control" type="text" id="capacityc_rvs" name="capacityc_rvs" onchange="onchange_Input_rvs(this)" required>
                                                    </div>

                                                </div>
                                                <div class="form-group">
                                                    <div class="col-md-12">
                                                        <label>Compressibility Factor of Gas or Vapor:</label>

                                                        <input class="form-control" type="text" value="0.97" id="compressibilityf_rvs" name="compressibilityf_rvs" onchange="onchange_Input_rvs(this)" required>
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
                                                    <label>Z - Compressibility Factor:</label>
                                                    <input type="text" id="z_rvs" name="z_rvs" readonly required class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Critical Flow Ratio:</label>
                                                    <input type="text" id="criticafr_rvs" name="criticafr_rvs" readonly required class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>Flowing Conditions: </label>
                                                    <input type="text" id="flowingc_rvs" name="flowingc_rvs" readonly required class="form-control">
                                                </div>
                                                <div class="form-group" id="ocu_requirede_rvs">
                                                    <label>Required Effective Dscharge Area [in2]: </label>            
                                                    <input type="text" id="requirede_rvs" name="requirede_rvs" readonly required class="form-control">
                                                </div>
                                                <div class="form-group" id="ocu_requiredfo_rvs">
                                                    <label>Required Flow Rate [MSCFH]:</label>
                                                    <input type="text" id="requiredfo_rvs" name="requiredfo_rvs"  readonly required class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label>C - Coefficient</label>            
                                                    <input type="text" id="ccoefficient_rvs" name="ccoefficient_rvs" readonly required class="form-control">
                                                </div> 
                                                <input type="button" id="calculateBtn_rvs" name="calculateBtn_rvs" value="Calculate" onclick="calculate_rvs()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_rvs" name="saveBtn_rvs" value="Save" onclick="save_rvs()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_rvs" name="delteBtn_rvs" value="Delete" onclick="delete_rvs()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_rvs" name="cleanBtn_rvs" value="Clean All Data" onclick="cleanAll_rvs()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_rvs" name="cleanBtn_rvs" value="Clean Input Data" onclick="cleanIn_rvs()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_rvs" name="cleanBtn_rvs" value="Clean Output Data" onclick="cleanOut_rvs()" class="btn btn-warning btn-block">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_rvs" name="id_rvs" value="-1">  
                            <input type="hidden" id="opt_rvs" name="opt_rvs" value="-1">
                        </div>
                        <div id="load_Dialog_rvs" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_rvs" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_rvs" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_rvs" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_rvs" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_rvs" title="Delete record" style='display:none;'>
                            <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                                Are you sure you want to permanently delete this record?
                            </p>
                        </div>
                    </div>
                </div>

            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->
    </body>

    <script>
            $(document).ready(function () {

                $('#sizingo1_rvs').attr('checked', 'checked');
                $('#selectk1_rvs').attr('checked', 'checked');

                $('#ocu_requirede_rvs').show();
                $('#ocu_requiredfo_rvs').hide();
                $('#requiredfo_rvs').val("0");

                $('#ocu_requiredf_rvs').show();
                $('#ocu_requiredeff_rvs').hide();
                $('#requiredeff_rvs').val("0");

                $('#ocu_molecularws_rvs').show();
                $('#ocu_specificg_rvs').hide();
                $('#specificg_rvs').val("0");
                $("#opt_rvs").val("1");

                load_press_sel_rvs();
                load_temp_sel_rvs();
                load_gasvap_sel_rvs();
                load_flue_sel_rvs();
                load_capfac_sel_rvs();
                load_in_sel_rvs();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_rvs"),
                        $("#error_Dialog_rvs"));


            });

            function load_history_rvs() {
                var parametros = {
                    "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "rvs"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        cleanAll_rvs();
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
                                    html += "<td>" + data.historial[i].description_rvs + "</td>";
                                    html += "<td><a href='#' onClick=\"load_form_rvs(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_rvs").empty();
                        $("#div-table_rvs").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rvs"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_capacity_rvs() {
                $("#capacityc_rvs").val($("#cc_sel_rvs").val().split(",")[1]);
            }

            function onchange_gasvp_rvs() {
                var x = $("#selectgv_sel_rvs").val().split(",");
                var G = x[1] / 28.96443;
                $("#molecularws_rvs").val(x[1]);
                $("#specifich_rvs").val(x[2]);
                $("#criticalf_rvs").val(x[3]);

                $("#specificg_rvs").val(G.toFixed(2));
            }

            function onchange_pres_rvs(imp) {
                cleanOut_rvs();
                var obj = [$("#rv_sel_rvs"), $("#bp_sel_rvs")];
                onchageGeneral(obj, imp.value);

            }

            function onchange_sizingop_rvs(valin, valout) {
                var sel = $("input[type='radio'][name='sizingo_rvs']:checked");
                if (sel.val() === "sizingo1_rvs") {
                    $('#ocu_requirede_rvs').show();
                    $('#ocu_requiredfo_rvs').hide();
                    $('#requiredfo_rvs').val("0");
                    $('#requirede_rvs').val(valout);

                    $('#ocu_requiredf_rvs').show();
                    $('#ocu_requiredeff_rvs').hide();
                    $('#requiredeff_rvs').val("0");
                    $('#requiredf_rvs').val(valin);
                } else {
                    $('#ocu_requirede_rvs').hide();
                    $('#ocu_requiredfo_rvs').show();
                    $('#requirede_rvs').val("0");
                    $('#requiredfo_rvs').val(valout);

                    $('#ocu_requiredf_rvs').hide();
                    $('#ocu_requiredeff_rvs').show();
                    $('#requiredeff_rvs').val(valin);
                    $('#requiredf_rvs').val("0");
                }
            }

            function onchange_selectk_rvs(val) {

                var sel = $("input[type='radio'][name='selectk_rvs']:checked");
                if (sel.val() === "selectk1_rvs") {
                    $('#ocu_molecularws_rvs').show();
                    $('#ocu_specificg_rvs').hide();
                    $('#specificg_rvs').val("0");
                    $('#molecularws_rvs').val(val);
                } else {
                    $('#ocu_molecularws_rvs').hide();
                    $('#ocu_specificg_rvs').show();
                    $('#specificg_rvs').val(val);
                    $('#molecularws_rvs').val("0");
                }

                onchange_gasvp_rvs();

            }

            function load_capfac_sel_rvs() {
                var parametros = {
                    "combo": "capfac",
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
                        var newHtml = "<select class=\"form-control\" name=\"cc_sel_rvs\" id= \"cc_sel_rvs\" onchange=\"onchange_capacity_rvs()\">" + data;
                        $("#div_cc_sel_rvs").html(newHtml);

                        $("#capacityc_rvs").val($("#cc_sel_rvs").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rvs"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_flue_sel_rvs() {
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
                        var newHtml = "<select class=\"form-control\" name=\"rf_sel_rvs\" id= \"rf_sel_rvs\">" + data;
                        $("#div_rf_sel_rvs").html(newHtml);

                        $("#rf_sel_rvs").val("67,MSCFH");


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rvs"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_press_sel_rvs() {
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
                        var newHtml = "<select class=\"form-control\" name=\"rv_sel_rvs\" id= \"rv_sel_rvs\" onchange=\"onchange_pres_rvs(this)\">" + data;
                        $("#div_rv_sel_rvs").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bp_sel_rvs\" id= \"bp_sel_rvs\" onchange=\"onchange_pres_rvs(this)\">" + data;
                        $("#div_bp_sel_rvs").html(newHtml);

                        var obj = [$("#rv_sel_rvs"), $("#bp_sel_rvs")];
                        onchageGeneral(obj, "65,psig");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rvs"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_gasvap_sel_rvs() {
                var parametros = {
                    "combo": "gasvap",
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
                        var newHtml = "<select class=\"form-control\" name=\"selectgv_sel_rvs\" id= \"selectgv_sel_rvs\" onchange=\"onchange_gasvp_rvs()\">" + data;
                        $("#div_selectgv_sel_rvs").html(newHtml);

                        var x = $("#selectgv_sel_rvs").val().split(",");
                        $("#molecularws_rvs").val(x[1]);
                        $("#specifich_rvs").val(x[2]);
                        $("#criticalf_rvs").val(x[3]);


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rvs"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_rvs() {
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
                        var newHtml = "<select class=\"form-control\" name=\"gfv_sel_rvs\" id= \"gfv_sel_rvs\">" + data;
                        $("#div_gfv_sel_rvs").html(newHtml);

                        $("#gfv_sel_rvs").val("3,F");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rvs"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_form_rvs(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "rvs"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_rvs();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "opso_rvs" && tags[i] != "opsk_rvs")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }

                            var valoutOp, valinOp, valinK;
                            if (data.row["opso_rvs"] === "sizingo1_rvs") {
                                $('#sizingo1_rvs').attr('checked', true);
                                valoutOp = data.row["requirede_rvs"];
                                valinOp = data.row["requiredf_rvs"];
                            } else {
                                $('#sizingo2_rvs').attr('checked', true);
                                valoutOp = data.row["requiredfo_rvs"];
                                valinOp = data.row["requiredeff_rvs"];
                            }

                            if (data.row["opsk_rvs"] === "selectk1_rvs") {
                                $('#selectk1_rvs').attr('checked', true);
                                $('#ocu_molecularws_rvs').show();
                                $('#ocu_specificg_rvs').hide();
                            } else {
                                $('#selectk2_rvs').attr('checked', true);
                                $('#ocu_molecularws_rvs').hide();
                                $('#ocu_specificg_rvs').show();
                            }

                            onchange_sizingop_rvs(valinOp, valoutOp);

                            $("#proyects_sel_rvs").val(data.row.id_proyect);
                            $("#opt_rvs").val("2");
                            $("#id_rvs").val(data.row.id);
                        } else {
                            $("#opt_rvs").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_rvs").val("1");
                        show_OkDialog($("#error_Dialog_rvs"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_rvs() {
                $("#criticafr_rvs").val("");
                $("#flowingc_rvs").val("");
                $("#ccoefficient_rvs").val("");
                $("#z_rvs").val("");



                var sel = $("input[type='radio'][name='sizingo_rvs']:checked");
                if (sel.val() == "sizingo1_rvs") {
                    $('#requirede_rvs').val("");
                } else {
                    $('#requiredfo_rvs').val("");
                }
            }

            function cleanIn_rvs() {
                $("#molecularws_rvs").val("");
                $("#specifich_rvs").val("");
                $("#criticalf_rvs").val("");
                $("#relief_rvs").val("");
                $("#gasvaporf_rvs").val("");
                $("#gasp_rvs").val("");
                $("#requiredf_rvs").val("");
                $("#effectivec_rvs").val("");
                $("#capacityc_rvs").val("");
                $("#compressibilityf_rvs").val("");
                $("#molecularws_rvs").val("");
            }

            function cleanAll_rvs() {
                cleanIn_rvs();
                cleanOut_rvs();
                $("#description_rvs").val("");
            }

            function onchange_Input_rvs(inp) {
                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_rvs();
            }

            function load_in_sel_rvs() {
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
                        var newHtml = "<select class='form-control' name='ee_sel_rvs' id= 'ee_sel_rvs'>" + data;
                        $("#div_ee_sel_rvs").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rvs"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function calculate_rvs() {
                var sel1 = $("input[type='radio'][name='sizingo_rvs']:checked");
                var sel2 = $("input[type='radio'][name='selectk_rvs']:checked");

                var variables = {
                    "opso": sel1.val(),
                    "opsk": sel2.val(),
                    "relief_rvs": $("#relief_rvs").val(),
                    "gasvaporf_rvs": $("#gasvaporf_rvs").val(),
                    "gasp_rvs": $("#gasp_rvs").val(),
                    "requiredf_rvs": $("#requiredf_rvs").val(),
                    "requiredeff_rvs": $("#requiredeff_rvs").val(),
                    "effectivec_rvs": $("#effectivec_rvs").val(),
                    "capacityc_rvs": $("#capacityc_rvs").val(),
                    "compressibilityf_rvs": $("#compressibilityf_rvs").val(),
                    "molecularws_rvs": $("#molecularws_rvs").val(),
                    "specificg_rvs": $("#specificg_rvs").val(),
                    "enteree_rvs": $("#enteree_rvs").val(),
                    "specifich_rvs": $("#specifich_rvs").val()

                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var unidades = {
                        "gfv_sel_rvs": $("#gfv_sel_rvs").val().split(",")[1],
                        "rv_sel_rvs": $("#rv_sel_rvs").val().split(",")[1],
                        "bp_sel_rvs": $("#bp_sel_rvs").val().split(",")[1],
                        "ee_sel_rvs": $("#ee_sel_rvs").val().split(",")[1]


                    };

                    var res = reliefValveSizing_Form(variables, unidades);

                    $("#criticafr_rvs").val(res[0]);
                    $("#ccoefficient_rvs").val(res[3]);
                    $("#z_rvs").val(res[4]);

                    var sel = $("input[type='radio'][name='sizingo_rvs']:checked");
                    if (sel.val() == "sizingo1_rvs") {
                        $('#requirede_rvs').val(res[2]);
                    } else {
                        $('#requiredfo_rvs').val(res[2]);
                    }

                    if (res[1] === "1") {
                        $("#flowingc_rvs").val("Sonic Flow");
                    } else {
                        $("#flowingc_rvs").val("Subsonic Flow");
                    }

                    show_OkDialog($("#calculate_Dialog_rvs"), "Satisfactory process");
                }
            }

            function save_rvs() {
                var sel1 = $("input[type='radio'][name='sizingo_rvs']:checked");
                var sel2 = $("input[type='radio'][name='selectk_rvs']:checked");
                
                var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
                var selects = $("#page-wrapper select");
                var resultados = $("#page-wrapper input[type='text'][readonly]");

                var parametros = {
                    "id_user": <% out.print(session.getAttribute("idusu"));%>,
                    "from": "rvs"
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
                parametros["sizingo_rvs"] = sel1.val();
                parametros["selectk_rvs"] = sel2.val();
                
                alert(JSON.stringify(parametros));

                var isOk = validate(parametros);

                if (isOk === false) {
                    alert("You must perform the calculation and fill out the description");
                } else {

                    if ($("#opt_rvs").val() == 2) {
                        parametros.id_rvs = $("#id_rvs").val();
                    }

                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            $("#id_rvs").val(data.row.id);
                            $("#opt_rvs").val("2");
                            show_OkDialog($("#save_Dialog_rvs"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_rvs"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_rvs() {

                //Confirmacion
                if ($("#opt_rvs").val() == 2) {
                    $("#dialog-confirm_rvs").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_rvs();
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

            function deleteReg_rvs() {
                var parametros = {
                    "id_rvs": $("#id_rvs").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "3",
                    "from": "rvs"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_rvs").val("");
                        $("#opt_rvs").val("1");
                        cleanAll_rvs();
                        show_OkDialog($("#delete_Dialog_rvs"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_rvs"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


        </script>

</html>