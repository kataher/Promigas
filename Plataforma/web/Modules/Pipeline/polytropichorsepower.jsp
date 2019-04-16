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
                                <h2><strong>Pipe Installation:</strong> 1.1.3. Centrifugal Compressor- Required Polytropic Horsepower</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_php()">
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
                                                <div id="div-table_php"></div>
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
                                <input  class="form-control" type="text" id="description_php" name="description_php"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_php" name="proyects_sel_php"> </select>
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
                                                
                                                <div id="input_php">

                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Comprenssibility Factor 
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">

                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <input type="radio" id = "compfactors1_php" name="opz_php" value="compfactors1_php" onchange="onchange_comf_php()" required>  Calculate <br>
                                                                            <input type="radio" id = "compfactors2_php" name="opz_php" value="compfactors2_php" onchange="onchange_comf_php()" required> User Supplied
                                                                        </div>
                                                                    </div>                                    

                                                                    <div class="form-group">
                                                                        <label>Z1 - Comprenssibility Factor at Suction:</label>
                                                                        <input type="text" id="z1s_php" name="z1s_php" readonly required class="form-control" value="0" onchange="onchange_Input_php(this)">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Z2 - Compressibility Factor at Discharge Conditions:</label>
                                                                        <input type="text" id="z2d_php" name="z2d_php" readonly required class="form-control" value="0" onchange="onchange_Input_php(this)">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Input Parameters
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">

                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Height:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input value = "0" class="form-control" type="text" id="enteree_php" name="enteree_php" onchange="onchange_Input_php(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_ee_sel_php">
                                                                            <select class="form-control" id="ee_sel_php" name="ee_sel_php"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Base Temperature:</label> 
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="60" type="text" id="basetemperature_php" name="basetemperature_php" onchange="onchange_Input_php(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id="div_bt_sel_php">
                                                                            <select class="form-control" id="bt_sel_php" name="bt_sel_php"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Base Pressure:</label> 
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input  value="14.65" class="form-control" type="text" id="basepressure_php" name="basepressure_php" onchange="onchange_Input_php(this)" required><br>
                                                                        </div>
                                                                        <div class="col-md-4" id="div_bp_sel_php">
                                                                            <select class="form-control" id="bp_sel_php" name="bp_sel_php"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Suction Pressure:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="386" type="text" id="suctionp_php" name="suctionp_php" onchange="validate_pres_php(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_sp_sel_php">
                                                                            <select class="form-control" id="sp_sel_php" name="sp_sel_php"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Suction Temperature:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value="85" type="text" id="suctiont_php" name="suctiont_php" onchange="onchange_Input_php(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4"  id="div_st_sel_php">
                                                                            <select class="form-control" id="st_sel_php" name="st_sel_php"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Discharge Pressure:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value = "936" type="text" id="dischargep_php" name="dischargep_php" onchange="validate_pres_php(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id="div_dp_sel_php">
                                                                            <select class="form-control" id="dp_sel_php" name="dp_sel_php"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Capacity/Required Flow Rate:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" value = "500" type="text" id="capacityr_php" name="capacityr_php" onchange="onchange_Input_php(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id="div_cr_sel_php">
                                                                            <select class="form-control" id="cr_sel_php" name="cr_sel_php"> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Gas Specific Heat Ratio:</label>

                                                                            <input class="form-control" value="1.3" type="text" id="gass_php" name="gass_php" onchange="onchange_Input_php(this)" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Select Option:</label>
                                                                        </div>
                                                                        <div class="col-md-8" id="div_gs_sel_php">
                                                                            <select class="form-control" id="gs_sel_php" name="gs_sel_php" onchange="onchange_gravity_php()"></select> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <input class="form-control" type="text" id="gst_php" name="gst_php" onchange="onchange_Input_php(this)" required>
                                                                        </div>

                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Adiabatic Efficiency:</label>

                                                                            <input class="form-control" value = "0.7" type="text" id="adiabatice_php" name="adiabatice_php" onchange="onchange_Input_php(this)" required >
                                                                        </div>            
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Mechanical Efficiency:</label>

                                                                            <input class="form-control" value = "0.7" type="text" id="mechanicale_php" name="mechanicale_php" onchange="onchange_Input_php(this)" required >
                                                                        </div>            

                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Polytropic Efficience:</label>

                                                                            <input class="form-control" value = "0.7" type="text" id="polytropice_php" name="polytropice_php" onchange="onchange_Input_php(this)" required >
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
                                                        <div class="panel-body" id="results_php">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <label>Polytropic Exponent:</label>
                                                                        <input type="text" id="polytropicex_php" name="polytropicex_php" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label id="lab_dt_php"> DIscharge Temperature [°F]:</label>
                                                                        <input type="text" id="discharget_php" name="discharget_php" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Z1 - Compressibility Factor at Suction Conditions:</label>
                                                                        <input type="text" id="z1_php" name="z1_php" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Z2 - Compressibility Factor at Discharge Conditions:</label>
                                                                        <input type="text" id="z2_php" name="z2_php" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Zavg - Average Compressibility Factor:</label>
                                                                        <input type="text" id="zavg_php" name="zavg_php" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Adiabatic Head [ft * lbf/lbm]:</label>            
                                                                        <input type="text" id="adiabatich_php" name="adiabatich_php" readonly required class="form-control">
                                                                    </div> 
                                                                    <div class="form-group">
                                                                        <label>Polytropic GHP per Unit of the Flowrate [HP/MMSCFD]:</label>            
                                                                        <input type="text" id="adiabaticghp_php" name="adiabaticghp_php" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>GHP - Polytropic Gas Horsepower [HP]:</label>
                                                                        <input type="text" id="ghp_php" name="ghp_php" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>BHP - Polytropic Brake Horsepower [HP]:</label>            
                                                                        <input type="text" id="bhp_php" name="bhp_php" readonly required class="form-control">
                                                                    </div> 
                                                                    <div class="form-group">
                                                                        <label>ACFM -Actual Flow Rate for Sizing [ft3/min]:</label>            
                                                                        <input type="text" id="acfm_php" name="acfm_php" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_php" name="calculateBtn_php" value="Calculate" onclick="calculate_php()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_php" name="saveBtn_php" value="Save" onclick="save_php()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_php" name="delteBtn_php" value="Delete" onclick="delete_php()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_php" name="cleanBtn_php" value="Clean All Data" onclick="cleanAll_php()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_php" name="cleanBtn_php" value="Clean Input Data" onclick="cleanIn_php()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_php" name="cleanBtn_php" value="Clean Output Data" onclick="cleanOut_php()" class="btn btn-warning btn-block">
                                            </div>                            </div>
                                    </div>
                                </div>
                            </div>

                            <input type="hidden" id="opt_php" name="opt_php" value="1"> 
                            <input type="hidden" id="id_php" name="id_php" value="-1"> 
                        </div>
                        <div id="load_Dialog_php" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_php" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_php" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_php" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_php" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_php" title="Delete record" style='display:none;'>
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

                load_gs_sel_php();
                load_temp_sel_php();
                load_press_sel_php();
                load_fluE_sel_php();
                load_in_sel_php();

                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_php"),
                        $("#error_Dialog_php"));
                $('#compfactors1_php').attr('checked', 'checked');


            });

            function load_history_php() {
                var parametros = {
                    "idproyect": $("#proyects_sel_php").val(),
                    "iduser": <% out.print(session.getAttribute("idusu"));%>,
                    "opcion": "6",
                    "nombre": "historial",
                    "from": "php"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    async: false,
                    beforeSend: function (xhr) {
                        //cleanAll_php();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {

                        if (data !== null)
                        {
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
                                    html += "<td>" + data.historial[i].description_php + "</td>";
                                    html += "<td><a href='#' onClick=\"load_form_php(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                        $("#div-table_php").empty();
                        $("#div-table_php").html(html);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_php"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_comf_php() {

                var sel = $("input[type='radio'][name='opz_php']:checked");
                if (sel.val() == "compfactors1_php") {
                    $("#z1s_php").addClass("readonly");
                    $("#z1s_php").attr("readonly", true);
                    $("#z1s_php").val("0");

                    $("#z2d_php").addClass("readonly");
                    $("#z2d_php").attr("readonly", true);
                    $("#z2d_php").val("0");
                } else {
                    $("#z1s_php").removeAttr("readonly");
                    $("#z1s_php").removeClass("readOnly");
                    $("#z1s_php").val("");

                    $("#z2d_php").removeAttr("readonly");
                    $("#z2d_php").removeClass("readOnly");
                    $("#z2d_php").val("");
                }

            }

            function load_gs_sel_php() {
                var parametros = {
                    "combo": "gs_sel",
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
                        var newHtml = "<select class=\"form-control\" name=\"gs_sel_php\" id=\"gs_sel_php\" onchange=\"onchange_gravity_php()\">" + data;
                        $("#div_gs_sel_php").html(newHtml);

                        onchange_gravity_php();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_php"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_in_sel_php() {

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
                        var newHtml = "<select class='form-control' name='ee_sel_php' id= 'ee_sel_php'>" + data;
                        $("#div_ee_sel_php").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_php"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }


            function load_fluE_sel_php() {
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
                        var newHtml = "<select class=\"form-control\" name=\"cr_sel_php\" id= \"cr_sel_php\" onchange=\"cleanOut_php()\">" + data;

                        $("#div_cr_sel_php").html(newHtml);
                        $("#cr_sel_php").val("71,MMSCFD");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_php"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_php() {
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
                        var newHtml = "<select class=\"form-control\" name=\"st_sel_php\" id=\"st_sel_php\" onchange=\"onchange_temp_php(this)\">" + data;
                        $("#div_st_sel_php").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bt_sel_php\" id= \"bt_sel_php\" onchange=\"onchange_temp_php(this)\">" + data;
                        $("#div_bt_sel_php").html(newHtml);

                        var vecObj = [$("#bt_sel_php"), $("#st_sel_php")];
                        onchageGeneral(vecObj, "3,F");


                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_php"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_press_sel_php() {
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
                        var newHtml = "<select class=\"form-control\" name=\"sp_sel_php\" id= \"sp_sel_php\" onchange=\"onchange_pres_php(this)\">" + data;
                        $("#div_sp_sel_php").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"dp_sel_php\" id= \"dp_sel_php\" onchange=\"onchange_pres_php(this)\">" + data;
                        $("#div_dp_sel_php").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"bp_sel_php\" id= \"bp_sel_php\" onchange=\"cleanOut_php()\">" + data;
                        $("#div_bp_sel_php").html(newHtml);

                        var obj = [$("#dp_sel_php"), $("#sp_sel_php")];
                        onchageGeneral(obj, "65,psig");

                        $("#bp_sel_php").val("5,psia");

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_php"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_gravity_php() {
                $("#gst_php").val($("#gs_sel_php").val().trim().split(",")[1]);
                cleanOut_php();
            }

            function onchange_temp_php(imp) {
                cleanOut_php();

                var vecObj = [$("#bt_sel_php"), $("#st_sel_php")];
                onchageGeneral(vecObj, imp.value);

                var newHtml = " Temperatura de descarga °[" + imp.value.split(",")[1] + "]:";
                $("#lab_dt_php").html(newHtml);
            }

            function onchange_pres_php(imp) {
                cleanOut_php();
                var obj = [$("#dp_sel_php"), $("#sp_sel_php")];
                onchageGeneral(obj, imp.value);
            }

            function load_form_php(id) {
                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "php"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        cleanAll_php();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {

                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "opz_php")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }

                            if (data.row["opz_php"] == "compfactors1_php") {
                                $('#compfactors1p_php').attr('checked', true);
                                $("#z1s_php").addClass("readonly");
                                $("#z1s_php").attr("readonly", true);

                            } else {
                                $('#compfactors2_php').attr('checked', true);
                                $("#z1s_php").removeAttr("readonly");
                                $("#z1s_php").removeClass("readOnly");
                            }

                            $("#opt_php").val("2");
                            $("#id_php").val(data.row.id);
                            $("#proyects_sel_php").val(data.row.id_proyect);
                            
                            alert("Successfully uploaded data"); 
                        } else {
                            $("#opt_php").val("1");
                        }
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_php"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function cleanOut_php() {
                $("#results_php input[type='text'][readonly]").val("");
            }

            function cleanIn_php() {
                $("#input_php input[type='text']").val("");
            }

            function cleanAll_php() {
                cleanIn_php();
                cleanOut_php();
                $("#description_php").val("");
            }

            function validate_pres_php(inp) {
                onchange_Input_php(inp);
                validatePress(inp, $("#suctionp_php"), $("#dischargep_php"));
            }

            function onchange_Input_php(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                cleanOut_php();
            }

            function calculate_php() {
                var sel = $("input[type='radio'][name='opz_php']:checked");


                var variables = {
                    "suctionp_php": $("#suctionp_php").val(),
                    "suctiont_php": $("#suctiont_php").val(),
                    "dischargep_php": $("#dischargep_php").val(),
                    "gass_php": $("#gass_php").val(),
                    "adiabatice_php": $("#adiabatice_php").val(),
                    "gst_php": $("#gst_php").val(),
                    "basepressure_php": $("#basepressure_php").val(),
                    "basetemperature_php": $("#basetemperature_php").val(),
                    "capacityr_php": $("#capacityr_php").val(),
                    "mechanicale_php": $("#mechanicale_php").val(),
                    "polytropice_php": $("#polytropice_php").val(),
                    "gs_sel_php": $("#gs_sel_php").val().split(",")[0],
                    "enteree_php": $("#enteree_php").val(),
                    "z1s_php": $("#z1s_php").val(),
                    "z2d_php": $("#z2d_php").val(),
                    "opz_php": sel.val()
                };

                var isOk = validate(variables);

                if (isOk === false) {
                    alert("You must complete all fields");
                } else {

                    var unidades = {
                        "bt_sel_php": $("#bt_sel_php").val().split(",")[1],
                        "bp_sel_php": $("#bp_sel_php").val().split(",")[1],
                        "sp_sel_php": $("#sp_sel_php").val().split(",")[1],
                        "st_sel_php": $("#st_sel_php").val().split(",")[1],
                        "dp_sel_php": $("#dp_sel_php").val().split(",")[1],
                        "cr_sel_php": $("#cr_sel_php").val().split(",")[1],
                        "ee_sel_php": $("#ee_sel_php").val().split(",")[1]
                    };

                    var res = polytropicHorsePower_Form(variables, unidades);

                    $("#polytropicex_php").val(res[0]);
                    $("#discharget_php").val(res[1]);
                    $("#zavg_php").val(res[2]);
                    $("#adiabatich_php").val(res[3]);
                    $("#adiabaticghp_php").val(res[4]);
                    $("#ghp_php").val(res[5]);
                    $("#bhp_php").val(res[6]);
                    $("#acfm_php").val(res[7]);
                    $("#z1_php").val(res[8]);
                    $("#z2_php").val(res[9]);

                    show_OkDialog($("#calculate_Dialog_php"), "Satisfactory process");
                }
            }

            function save_php() {
               var sel = $("input[type='radio'][name='opz_php']:checked");

                var inputs = $("#page-wrapper input[type='text'],[type='hidden']").not("[readonly]");
                var selects = $("#page-wrapper select");
                var resultados = $("#page-wrapper input[type='text'][readonly]");

                var parametros = {
                    "id_user": <% out.print(session.getAttribute("idusu"));%>,
                    "from": "php"
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
                parametros["opz_php"] = sel.val();
                
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
                            $("#id_php").val(data.row.id);
                            $("#opt_php").val("2");
                            show_OkDialog($("#save_Dialog_php"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_php"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });
                }
            }

            function delete_php() {

                //Confirmacion
                if ($("#opt_php").val() == 2) {
                    $("#dialog-confirm_php").dialog({
                        resizable: false,
                        height: "auto",
                        width: 400,
                        modal: true,
                        buttons: {
                            "Delete": function () {
                                deleteReg_php();
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

            function deleteReg_php() {
                var parametros = {
                    "id_php": $("#id_php").val(),
                    "opcion": 3,
                    "iduser": <%=session.getAttribute("idusu")%>,
                    "from": "php"
                };


                if ($("#opt_php").val() == 2) {
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function (data, status, request) {
                            cleanAll_php();
                            $("#id_php").val("-1");
                            $("#opt_php").val("1");
                            $('#compfactors1_php').attr('checked', 'checked');
                            onchange_comf_php();
                            show_OkDialog($("#save_Dialog_php"), "Satisfactory process");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            alert(err);
                            show_OkDialog($("#error_Dialog_php"), "Error");
                        },
                        complete: function () {
                            unBlock();
                        }
                    });

                } else {
                    alert("You must load a record to be able to delete it");
                }
            }

        </script>

</html>