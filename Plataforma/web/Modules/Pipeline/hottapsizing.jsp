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
                                <h2><strong>Pipe Installation:</strong> 1.6. Hot Tap Sizing</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_htz()">
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
                                                <div id="div-table_htz"></div>
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
                                <input  class="form-control" type="text" id="description_htz" name="description_htz"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_htz" name="proyects_sel_htz"> </select>
                            </div>
                        </div>

                        <hr>
                        <div class="col-lg-9">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    Input Parameters
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    Compressibility Factor
                                                </div>
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="form-group">
                                                                <div class="col-md-12">
                                                                    <input type="radio" id = "compfactors1_htz" name="opz_htz" value="compfactors1_htz" onchange="onchange_comf_htz()" required>  Calculate <br>
                                                                    <input type="radio" id = "compfactors2_htz" name="opz_htz" value="compfactors2_htz" onchange="onchange_comf_htz()" required> User Supplied
                                                                </div>
                                                            </div>                                    

                                                            <div class="form-group">
                                                                <label>Gas Compressibility Factor:</label>
                                                                <input type="text" id="z1s_htz" name="z1s_htz" readonly required class="form-control" value="0" onchange="onchange_Input_htz(this)">
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    Select Gas or Vapor
                                                </div>
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="form-group">

                                                                <div class="col-md-12">
                                                                    <div id="div_selectgv_sel_htz">
                                                                        <select class="form-control" id="selectgv_sel_htz" name="selectgv_sel_htz" onchange="onchange_gasvp_htz()"> </select>
                                                                    </div>
                                                                    <label>Molecular Weight:</label><input class="form-control" type="text" id="molecularws_htz" name="molecularws_htz" onchange="onchange_Input_htz(this)" required><br>
                                                                    <label>Specific Heat Ratio:</label><input class="form-control" type="text" id="specifich_htz" name="specifich_htz" onchange="onchange_Input_htz(this)" required><br>
                                                                    <label>Critical FLow Ratio:</label><input class="form-control" type="text" id="criticalf_htz" name="criticalf_htz" onchange="onchange_Input_htz(this)" required>

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
                                                    Reference fot Hole Cutter Sizes
                                                </div>
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="form-group">

                                                                <div class="col-md-12">
                                                                    <label>Nominal Branch Size::</label>
                                                                    <div id="div_nominalb_sel_htz">
                                                                        <select class="form-control" id="nominalb_sel_htz" name="nominalb_sel_htz" onchange="onchange_nominalb_htz()"> </select> 
                                                                    </div>
                                                                    <label>Hole Cutter Diamater [in]:</label>
                                                                    <input class="form-control" type="text" id="holec_htz" name="holec_htz" onchange="onchange_Input_htz(this)" required>
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
                                                <input value = "0" class="form-control" type="text" id="enteree_htz" name="enteree_htz" onchange="onchange_Input_htz(this)" required>
                                            </div>
                                            <div class="col-md-4" id = "div_ee_sel_htz">
                                                <select class="form-control" id="ee_sel_htz" name="ee_sel_htz"> </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Base Pressure:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input value="14.65" class="form-control" type="text" id="pressureb_htz" name="pressureb_htz" onchange="onchange_Input_htz(this)" required>
                                            </div>
                                            <div class="col-md-4" id = "div_preb_sel_htz">
                                                <select class="form-control" id="preb_sel_htz" name="preb_sel_htz"> </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Base Temperature:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input value="60" class="form-control" type="text" id="baset_htz" name="baset_htz" onchange="onchange_Input_htz(this)" required>
                                            </div>
                                            <div class="col-md-4" id = "div_bt_sel_htz">
                                                <select class="form-control" id="bt_sel_htz" name="bt_sel_htz"> </select>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Pressure:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input value="1200" class="form-control" type="text" id="pressure_htz" name="pressure_htz" onchange="onchange_Input_htz(this)" required>
                                            </div>
                                            <div class="col-md-4" id = "div_pre_sel_htz">
                                                <select class="form-control" id="pre_sel_htz" name="pre_sel_htz"> </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Flowing Temperature:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input value="90" class="form-control" type="text" id="flowingt_htz" name="flowingt_htz" onchange="onchange_Input_htz(this)" required>
                                            </div>
                                            <div class="col-md-4" id = "div_flowt_sel_htz">
                                                <select class="form-control" id="flowt_sel_htz" name="flowt_sel_htz"> </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Pressure Loss through Orifice [psi]:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input value="1" class="form-control" type="text" id="pressurel_htz" name="pressurel_htz" onchange="onchange_Input_htz(this)" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Flow Rate:</label>
                                            </div>
                                            <div class="col-md-8">
                                                <input value="10" class="form-control" type="text" id="flowrate_htz" name="flowrate_htz" onchange="onchange_Input_htz(this)" required>
                                            </div>
                                            <div class="col-md-4" id = "div_fr_sel_htz">
                                                <select class="form-control" id="fr_sel_htz" name="fr_sel_htz"> </select>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Orifice Coefficient:</label>
                                            </div>
                                            <div class="col-md-8" id = "div_oc_sel_htz">
                                                <select class="form-control" id="oc_sel_htz" name="oc_sel_htz"> </select>
                                            </div>
                                            <div class="col-md-4" >
                                                <input class="form-control" type="text" id="orificec_htz" name="entere_htz" onchange="onchange_Input_htz(this)" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Gas Specific Gravity:</label>
                                                <input class="form-control" type="text" id="gsg_htz" name="gsg_htz" onchange="onchange_Input_htz(this)" required>
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
                                                <label>Gas Compressibility Factor:</label>
                                                <input type="text" id="compressibilityf_htz" name="compressibilityf_htz" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Branch Gas Velocity [ft/sec]:</label>
                                                <input type="text" id="branchgv_htz" name="branchgv_htz" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Flowing Conditions:</label>            
                                                <input type="text" id="condflujo_htz" name="condflujo_htz" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Calculated Orifice Area [in2]:</label>            
                                                <input type="text" id="calculatedoa_htz" name="calculatedoa_htz" readonly required class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label>Calculate Tap Diameter[in]:</label>            
                                                <input type="text" id="calculatedtd_htz" name="calculatedtd_htz" readonly required class="form-control">
                                            </div> 
                                            <input type="button" id="calculateBtn_htz" name="calculateBtn_htz" value="Calculate" onclick="calculate_htz()" class="btn btn-info btn-block">
                                            <input type="button" id="saveBtn_htz" name="saveBtn_htz" value="Save" onclick="save_htz()" class="btn btn-success btn-block">   
                                            <input type="button" id="delteBtn_htz" name="delteBtn_htz" value="Delete" onclick="delete_htz()" class="btn btn-danger btn-block">
                                            <input type="button" id="cleanAllBtn_htz" name="cleanBtn_htz" value="Clean All Data" onclick="cleanAll_htz()" class="btn btn-warning btn-block">
                                            <input type="button" id="cleanInputBtn_htz" name="cleanBtn_htz" value="Clean Input Data" onclick="cleanIn_htz()" class="btn btn-warning btn-block">
                                            <input type="button" id="cleanOutputBtn_htz" name="cleanBtn_htz" value="Clean Output Data" onclick="cleanOut_htz()" class="btn btn-warning btn-block">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" id="id_htz" name="id_htz">  
                        <input type="hidden" id="opt_htz" name="opt_htz">

                        <div id="load_Dialog_htz" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_htz" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_htz" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_htz" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_htz" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_htz" title="Delete record" style='display:none;'>
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
            $("#opt_htz").val("1");
            $('#compfactors1_htz').attr('checked', 'checked');
            load_gsg_sel_htz();
            load_nbs_sel_htz();
            load_press_sel_htz();
            load_temp_sel_htz();
            load_fluE_sel_htz();
            load_orico_sel_htz();
            load_in_sel_htz();
            load_he_sel_htz();

            getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_htz"),
                    $("#error_Dialog_htz"));


        });

        function onchange_comf_htz() {
            var sel = $("input[type='radio'][name='opz_htz']:checked");

            if (sel.val() === "compfactors1_htz") {
                $("#z1s_htz").addClass("readonly");
                $("#z1s_htz").attr("readonly", true);
                $("#z1s_htz").val("0");

            } else {
                $("#z1s_htz").removeAttr("readonly");
                $("#z1s_htz").removeClass("readOnly");
                $("#z1s_htz").val("");
            }

            cleanOut_htz();

        }

        function onchange_orico_htz() {
            var x = $("#oc_sel_htz").val().split(",");
            $("#orificec_htz").val(x[1]);
        }

        function onchange_gasvp_htz() {
            var x = $("#selectgv_sel_htz").val().split(",");
            $("#molecularws_htz").val(x[1]);
            $("#specifich_htz").val(x[2]);
            $("#molecularws_htz").val(x[1]);
            $("#specifich_htz").val(x[2]);
            $("#criticalf_htz").val(x[3]);
            $("#gsg_htz").val(x[4]);
        }

        function onchange_nominalb_htz() {
            var x = $("#nominalb_sel_htz").val().split(",");
            $("#holec_htz").val(x[1]);
        }

        function load_in_sel_htz() {
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
                    var newHtml = "<select class='form-control' name='db_sel_htz' id= 'db_sel_htz' onchange='cleanOut_htz()'>" + data;
                    $("#div_db_sel_htz").html(newHtml);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_htz"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_he_sel_htz() {
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
                    var newHtml = "<select class='form-control' name='ee_sel_htz' id= 'ee_sel_htz' onchange='cleanOut_htz()'>" + data;
                    $("#div_ee_sel_htz").html(newHtml);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_htz"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_fluE_sel_htz() {
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
                    var newHtml = "<select class='form-control' name='fr_sel_htz' id= 'fr_sel_htz' >" + data;
                    $("#div_fr_sel_htz").html(newHtml);

                    $("#fr_sel_htz").val("66,SCFH");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_htz"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_orico_sel_htz() {
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
                    var newHtml = "<select class='form-control' name='oc_sel_htz' id= 'oc_sel_htz' onchange='onchange_orico_htz()'>" + data;
                    $("#div_oc_sel_htz").html(newHtml);
                    onchange_orico_htz();
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_htz"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_nbs_sel_htz() {
            var parametros = {
                "combo": "nbs",
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
                    var newHtml = "<select class='form-control' name='nominalb_sel_htz' id= 'nominalb_sel_htz' onchange='onchange_nominalb_htz()'>" + data;
                    $("#div_nominalb_sel_htz").html(newHtml);
                    onchange_nominalb_htz();
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_htz"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_gsg_sel_htz() {
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
                    var newHtml = "<select class='form-control' name='selectgv_sel_htz' id= 'selectgv_sel_htz' onchange='onchange_gasvp_htz()'>" + data;
                    $("#div_selectgv_sel_htz").html(newHtml);

                    onchange_gasvp_htz();

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_htz"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_temp_sel_htz() {
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
                    var newHtml = "<select class='form-control' name='flowt_sel_htz' id= 'flowt_sel_htz'>" + data;
                    $("#div_flowt_sel_htz").html(newHtml);

                    newHtml = "<select class='form-control' name='bt_sel_htz' id= 'bt_sel_htz'>" + data;
                    $("#div_bt_sel_htz").html(newHtml);

                    $("#flowt_sel_htz").val("3,F");
                    $("#bt_sel_htz").val("3,F");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_htz"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_press_sel_htz() {
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
                    var newHtml = "<select class='form-control' name='pre_sel_htz' id= 'pre_sel_htz' onchange='cleanOut_htz()'>" + data;
                    $("#div_pre_sel_htz").html(newHtml);

                    newHtml = "<select class='form-control' name='preb_sel_htz' id= 'preb_sel_htz'  onchange='cleanOut_htz()'>" + data;
                    $("#div_preb_sel_htz").html(newHtml);

                    $("#preb_sel_htz").val("5,psia");

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_htz"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_history_htz() {
            var parametros = {
                "idproyect": $("#proyects_sel_htz").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "opcion": "6",
                "nombre": "historial",
                "from": "htz"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    cleanAll_htz();
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
                                html += "<td>" + data.historial[i].description_htz + "</td>";
                                html += "<td><a href='#' onClick='load_form_htz(" + data.historial[i].id + ")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                    $("#div-table_htz").empty();
                    $("#div-table_htz").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_htz"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_htz(id) {

            var parametros = {
                "id": id,
                "opcion": "4",
                "from": "htz"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_htz();
                    block("Cargado datos...");
                },
                success: function (data, status, request) {
                    if (data != null)
                    {
                        var tags = Object.keys(data.row);

                        for (var i = 0; i < tags.length; i++) {
                            if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id")
                            {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }
                        }

                        $("#proyects_sel_htz").val(data.row.id_proyect);
                        $("#opt_htz").val("2");
                        $("#id_htz").val(data.row.id);
                    } else {
                        $("#opt_htz").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_htz").val("1");
                    show_OkDialog($("#error_Dialog_htz"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function cleanOut_htz() {
            $("#branchgv_htz").val("");
            $("#calculatedoa_htz").val("");
            $("#calculatedtd_htz").val("");
            $("#compressibilityf_htz").val("");
            $("#condflujo_htz").val("");
        }

        function cleanIn_htz() {
            $("#molecularws_htz").val("");
            $("#specifich_htz").val("");
            $("#criticalf_htz").val("");
            $("#holec_htz").val("");
            $("#pressure_htz").val("");
            $("#flowingt_htz").val("");
            $("#pressurel_htz").val("");
            $("#flowrate_htz").val("");
            $("#orificec_htz").val("");
            $("#gsg_htz").val("");
            $("#molecularws_htz").val("");
            $("#enteree_htz").val("");
            $("#pressureb_htz").val("");
            $("#baset_htz").val("");
        }

        function cleanAll_htz() {
            cleanIn_htz();
            cleanOut_htz();
            $("#description_htz").val("");
        }

        function onchange_Input_htz(inp) {
            var sw = validateDecimal(inp.value);

            if (sw != true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_htz();

        }

        function calculate_htz() {

            var sel = $("input[type='radio'][name='opz_htz']:checked");

            var variables = {
                "specifich_htz": $("#specifich_htz").val(),
                "holec_htz": $("#holec_htz").val(),
                "pressure_htz": $("#pressure_htz").val(),
                "flowingt_htz": $("#flowingt_htz").val(),
                "pressurel_htz": $("#pressurel_htz").val(),
                "flowrate_htz": $("#flowrate_htz").val(),
                "orificec_htz": $("#orificec_htz").val(),
                "gsg_htz": $("#gsg_htz").val(),
                "enteree_htz": $("#enteree_htz").val(),
                "pressureb_htz": $("#pressureb_htz").val(),
                "baset_htz": $("#baset_htz").val(),
                "z1s_htz": $("#z1s_htz").val(),
                "opz_htz": sel.val()
            };

            var isOk = validate(variables);

            if (isOk === false) {
                alert("You must complete all fields");
            } else {
                var unidades = {
                    "flowt_sel_htz": $("#flowt_sel_htz").val().split(",")[1],
                    "pre_sel_htz": $("#pre_sel_htz").val().split(",")[1],
                    "fr_sel_htz": $("#fr_sel_htz").val().split(",")[1],
                    "ee_sel_htz": $("#ee_sel_htz").val().split(",")[1],
                    "preb_sel_htz": $("#preb_sel_htz").val().split(",")[1],
                    "bt_sel_htz": $("#bt_sel_htz").val().split(",")[1]
                };

                var res = hotTapSizing_Form(variables, unidades);

                $("#compressibilityf_htz").val(res[0]);
                $("#branchgv_htz").val(res[1]);
                $("#calculatedoa_htz").val(res[3]);
                $("#calculatedtd_htz").val(res[4]);

                if (res[2] === "1") {
                    $("#condflujo_htz").val("Sonic Flow");
                } else {
                    $("#condflujo_htz").val("Subsonic Flow");
                }


                show_OkDialog($("#calculate_Dialog_htz"), "Satisfactory process");
            }
        }

        function save_htz() {
            var parametros = {
                "nominalb_sel_htz": $("#nominalb_sel_htz").val(),
                "molecularws_htz": $("#molecularws_htz").val(),
                "specifich_htz": $("#specifich_htz").val(),
                "criticalf_htz": $("#criticalf_htz").val(),
                "holec_htz": $("#holec_htz").val(),
                "pressure_htz": $("#pressure_htz").val(),
                "flowingt_htz": $("#flowingt_htz").val(),
                "pressurel_htz": $("#pressurel_htz").val(),
                "flowrate_htz": $("#flowrate_htz").val(),
                "orificec_htz": $("#orificec_htz").val(),
                "gsg_htz": $("#gsg_htz").val(),
                "compressibilityf_htz": $("#compressibilityf_htz").val(),
                "selectgv_sel_htz": $("#selectgv_sel_htz").val(),
                "oc_sel_htz": $("#oc_sel_htz").val(),
                "pre_sel_htz": $("#pre_sel_htz").val(),
                "flowt_sel_htz": $("#flowt_sel_htz").val(),
                "fr_sel_htz": $("#fr_sel_htz").val(),
                "branchgv_htz": $("#branchgv_htz").val(),
                "calculatedoa_htz": $("#calculatedoa_htz").val(),
                "calculatedtd_htz": $("#calculatedtd_htz").val(),
                "idproyect": $("#proyects_sel_htz").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "id_htz": 1,
                "description_htz": $("#description_htz").val(),
                "opcion": $("#opt_htz").val(),
                "from": "htz"

            };

            var isOk = validate(parametros);

            if (isOk === false)
            {
                alert("You must perform the calculation and fill out the description");
            } else {

                if ($("#opt_htz").val() == 2) {
                    parametros.id_htz = $("#id_htz").val();
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
                        $("#id_htz").val(data.row.id);
                        $("#opt_htz").val("2");
                        show_OkDialog($("#save_Dialog_htz"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        alert(err);
                        show_OkDialog($("#error_Dialog_htz"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

        }

        function delete_htz() {

            //Confirmacion
            if ($("#opt_htz").val() == 2) {
                $("#dialog-confirm_htz").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_htz();
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

        function deleteReg_htz() {
            var parametros = {
                "id_htz": $("#id_htz").val(),
                "opcion": "3",
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "from": "htz"
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
                    $("#id_htz").val("");
                    $("#opt_htz").val("1");
                    cleanAll_htz();
                    show_OkDialog($("#delete_Dialog_htz"), "Satisfactory process");
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_htz"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }


    </script>

</html>