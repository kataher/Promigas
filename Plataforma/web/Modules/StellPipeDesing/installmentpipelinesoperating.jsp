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
                                <h2><strong>Steel Pipe Design:</strong>  Installment of Pipelines by Horizontal Directional Drilling - Operation Stress Analysis </h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_ippo()">
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
                                                <div id="div-table_ippo"></div>
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
                                <input  class="form-control" type="text" id="description_ippo" name="description_ippo"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_ippo" name="proyects_sel_ippo"> </select>
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
                                                        <div class="panel-heading"> Input Parameters </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Height:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="height_ippo" id="height_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_height_sel_ippo">
                                                                            <select class="form-control" id="height_sel_ippo" name="height_sel_ippo" onchange='cleanOut_ippo()'> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Operating Pressure:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="oper_press_ippo" id="oper_press_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_oper_press_sel_ippo">
                                                                            <select class="form-control" id="oper_press_sel_ippo" name="oper_press_sel_ippo" onchange='cleanOut_ippo()'> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Pipe outside diameter:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="pipe_dia_ippo" id="pipe_dia_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_pipe_dia_sel_ippo">
                                                                            <select class="form-control" id="pipe_dia_sel_ippo" name="pipe_dia_sel_ippo" onchange='cleanOut_ippo()'> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Wall Thickness:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="pipe_wall_ippo" id="pipe_wall_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_pipe_wall_sel_ippo">
                                                                            <select class="form-control" id="pipe_wall_sel_ippo" name="pipe_wall_sel_ippo" onchange='cleanOut_ippo()'> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Specified Minimum Yield Strength:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="min_yield_ippo" id="min_yield_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_min_yield_sel_ippo">
                                                                            <select class="form-control" id="min_yield_sel_ippo" name="min_yield_sel_ippo" onchange='cleanOut_ippo()'> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Installation Temperature:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="inst_temp_ippo" id="inst_temp_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_inst_temp_sel_ippo">
                                                                            <select class="form-control" id="inst_temp_sel_ippo" name="inst_temp_sel_ippo" onchange='cleanOut_ippo()'> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Operating Temperature:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="oper_temp_ippo" id="oper_temp_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_oper_temp_sel_ippo">
                                                                            <select class="form-control" id="oper_temp_sel_ippo" name="oper_temp_sel_ippo" onchange='cleanOut_ippo()'> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Depth of the Pipe at Horizontal Section:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="depth_pipe_ippo" id="depth_pipe_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_depth_pipe_sel_ippo">
                                                                            <select class="form-control" id="depth_pipe_sel_ippo" name="depth_pipe_sel_ippo" onchange='cleanOut_ippo()'> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Groundwater Table below Datum:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="ground_table_ippo" id="ground_table_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_ground_table_sel_ippo">
                                                                            <select class="form-control" id="ground_table_sel_ippo" name="ground_table_sel_ippo" onchange='cleanOut_ippo()'> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Shortest Radius of Curvature:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="short_rad_ippo" id="short_rad_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_short_rad_sel_ippo">
                                                                            <select class="form-control" id="short_rad_sel_ippo" name="short_rad_sel_ippo" onchange='cleanOut_ippo()'> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Poisson's Ratio for Steel:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="text" value="0.3" name="poi_rat_ippo" id="poi_rat_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Young's Modulus for Steel:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" value="30000" name="youn_steel_ippo" id="youn_steel_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_youn_steel_sel_ippo">
                                                                            <select class="form-control" id="youn_steel_sel_ippo" name="youn_steel_sel_ippo" onchange='cleanOut_ippo()'> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Coefficient of Thermal Expansion [per°F]:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="text" value="0.0000065" name="coeff_therm_ippo" id="coeff_therm_ippo" class="form-control" onchange="onchange_Input_ippo(this)" required>
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
                                                                        <div class="col-md-12">
                                                                            <label>Bending Stress:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="bend_stress_ippo" id="bend_stress_ippo" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="bend_stress_ippo">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Hoop Stress:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="hoop_stress_ippo" id="hoop_stress_ippo" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="hoop_stress_ippo">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Thermal Stress:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="ther_stress_ippo" id="ther_stress_ippo" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="ther_stress_ippo">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Total Longitudinal Compressive Stress:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="total_long_comp_ippo" id="total_long_comp_ippo" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="total_long_comp_ippo">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Maximum Shear Stress:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="max_shear_ippo" id="max_shear_ippo" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="max_shear_ippo">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Maximum Allowable Shear Stress (45% of SMYS):</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="total_pull_force_ippo" id="total_pull_force_ippo" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="total_pull_force_ippo">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Operating Conditions:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="acceptablep_ippo" id="acceptablep_ippo" class="form-control" readonly> 
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
                            </div>  

                            <div class="col-lg-3">

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Actions
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-12">

                                                <input type="button" id="calculateBtn_ippo" name="calculateBtn_ippo" value="Calculate" onclick="calculate_ippo()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_ippo" name="saveBtn_ippo" value="Save" onclick="save_ippo()" class="btn btn-success btn-block">   
                                                <input type="button" id="reportBtn_ippo" name="reportBtn_ippo" value="Delete" onclick="reportReg_ippo()" class="btn btn-danger btn-block">          

                                                <input type="button" id="cleanAllBtn_ippo" name="cleanBtn_ippo" value="Clean All" onclick="cleanAll_ippo()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_ippo" name="cleanBtn_ippo" value="Clean Input Data" onclick="cleanIn_ippo()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_ippo" name="cleanBtn_ippo" value="Clean Output Data" onclick="cleanOut_ippo()" class="btn btn-warning btn-block">


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_ippo" name="opt_ippo"> 
                            <input type="hidden" id="id_ippo" name="id_ippo">  
                        </div>
                        <div id="load_Dialog_ippo" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_ippo" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_ippo" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_ippo" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_ippo" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_ippo" title="Delete record" style='display:none;'>
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
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_ippo"),
                        $("#error_Dialog_ippo"));
                $("#opt_ippo").val("1");
                //load_np_sel_ippo("npsn");
                load_in_sel_ippo();
                load_in2_sel_ippo();
                load_presf_sel_ippo();
                load_pres_sel_ippo();
                load_temp_sel_ippo();
            });
            
            function onchange_Input_ippo(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_ippo();
            }
            
            function load_in_sel_ippo() {
                var parametros = {
                    "combo": "in5",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: true,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' id='height_sel_ippo' name='height_sel_ippo' onchange='cleanOut_ippo()'>" + data;
                        $("#div_height_sel_ippo").html(newHtml);
                        
                        newHtml = "<select class='form-control' id='depth_pipe_sel_ippo' name='depth_pipe_sel_ippo' onchange='cleanOut_ippo()'>" + data;
                        $("#div_depth_pipe_sel_ippo").html(newHtml);
                        
                        newHtml = "<select class='form-control' id='ground_table_sel_ippo' name='ground_table_sel_ippo' onchange='cleanOut_ippo()'>" + data;
                        $("#div_ground_table_sel_ippo").html(newHtml);
                        
                        newHtml = "<select class='form-control' id='short_rad_sel_ippo' name='short_rad_sel_ippo' onchange='cleanOut_ippo()'>" + data;
                        $("#div_short_rad_sel_ippo").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ippo"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_in2_sel_ippo() {
                var parametros = {
                    "combo": "in2",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: true,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' id='pipe_dia_sel_ippo' name='pipe_dia_sel_ippo' onchange='cleanOut_ippo()'>" + data;
                        $("#div_pipe_dia_sel_ippo").html(newHtml);

                        newHtml = "<select class='form-control' id='pipe_wall_sel_ippo' name='pipe_wall_sel_ippo' onchange='cleanOut_ippo()'>" + data;
                        $("#div_pipe_wall_sel_ippo").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ippo"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_presf_sel_ippo() {
                var parametros = {
                    "combo": "presf2",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: true,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' id='min_yield_sel_ippo' name='min_yield_sel_ippo' onchange='cleanOut_ippo()'>" + data;
                        $("#div_min_yield_sel_ippo").html(newHtml);

                        newHtml = "<select class='form-control' id='youn_steel_sel_ippo' name='youn_steel_sel_ippo' onchange='cleanOut_ippo()'>" + data;
                        $("#div_youn_steel_sel_ippo").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ippo"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_pres_sel_ippo() {
                var parametros = {
                    "combo": "pres",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: true,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' id='oper_press_sel_ippo' name='oper_press_sel_ippo' onchange='cleanOut_ippo()'>" + data;
                        $("#div_oper_press_sel_ippo").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ippo"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_temp_sel_ippo() {
                var parametros = {
                    "combo": "temp",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: true,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' id='inst_temp_sel_ippo' name='inst_temp_sel_ippo' onchange='cleanOut_ippo()'>" + data;
                        $("#div_inst_temp_sel_ippo").html(newHtml);

                        newHtml = "<select class='form-control' id='oper_temp_sel_ippo' name='oper_temp_sel_ippo' onchange='cleanOut_ippo()'>" + data;
                        $("#div_oper_temp_sel_ippo").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ippo"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function calculate_ippo() {
                var variables = {
                    "height_ippo": $("#height_ippo").val(),
                    "oper_press_ippo": $("#oper_press_ippo").val(),
                    "pipe_dia_ippo": $("#pipe_dia_ippo").val(),
                    "pipe_wall_ippo": $("#pipe_wall_ippo").val(),
                    "min_yield_ippo": $("#min_yield_ippo").val(),
                    "inst_temp_ippo": $("#inst_temp_ippo").val(),
                    "oper_temp_ippo": $("#oper_temp_ippo").val(),
                    "depth_pipe_ippo": $("#depth_pipe_ippo").val(),
                    "ground_table_ippo": $("#ground_table_ippo").val(),
                    "short_rad_ippo": $("#short_rad_ippo").val(),
                    "poi_rat_ippo": $("#poi_rat_ippo").val(),
                    "youn_steel_ippo": $("#youn_steel_ippo").val(),
                    "coeff_therm_ippo": $("#coeff_therm_ippo").val()
                };
                
                var unidades = {
                    "height_sel_ippo": $("#height_sel_ippo").val().split(",")[1],
                    "oper_press_sel_ippo": $("#oper_press_sel_ippo").val().split(",")[1],
                    "pipe_dia_sel_ippo": $("#pipe_dia_sel_ippo").val().split(",")[1],
                    "pipe_wall_sel_ippo": $("#pipe_wall_sel_ippo").val().split(",")[1],
                    "min_yield_sel_ippo": $("#min_yield_sel_ippo").val().split(",")[1],
                    "inst_temp_sel_ippo": $("#inst_temp_sel_ippo").val().split(",")[1],
                    "oper_temp_sel_ippo": $("#oper_temp_sel_ippo").val().split(",")[1],
                    "depth_pipe_sel_ippo": $("#depth_pipe_sel_ippo").val().split(",")[1],
                    "ground_table_sel_ippo": $("#ground_table_sel_ippo").val().split(",")[1],
                    "short_rad_sel_ippo": $("#short_rad_sel_ippo").val().split(",")[1],
                    "youn_steel_sel_ippo": $("#youn_steel_sel_ippo").val().split(",")[1]
                };
                
                var res = installment_pipe_opera_form(variables, unidades);
                $("#bend_stress_ippo").val(res[0]);
                $("#hoop_stress_ippo").val(res[1]);
                $("#ther_stress_ippo").val(res[2]);
                $("#total_long_comp_ippo").val(res[3]);
                $("#max_shear_ippo").val(res[4]);
                $("#total_pull_force_ippo").val(res[5]);
                $("#acceptablep_ippo").val(res[6]);
                show_OkDialog($("#calculate_Dialog_ippo"), "Proceso satisfactorio");
            }

            function cleanOut_ippo() {
                $("#bend_stress_ippo").val("");
                $("#hoop_stress_ippo").val("");
                $("#ther_stress_ippo").val("");
                $("#total_long_comp_ippo").val("");
                $("#max_shear_ippo").val("");
                $("#total_pull_force_ippo").val("");
                $("#acceptablep_ippo").val("");
            }

            function cleanIn_ippo() {
                $("#oper_press_ippo").val("");
                $("#pipe_dia_ippo").val("");
                $("#pipe_wall_ippo").val("");
                $("#min_yield_ippo").val("");
                $("#inst_temp_ippo").val("");
                $("#oper_temp_ippo").val("");
                $("#depth_pipe_ippo").val("");
                $("#ground_table_ippo").val("");
                $("#short_rad_ippo").val("");
                $("#poi_rat_ippo").val("");
                $("#youn_steel_ippo").val("");
                $("#coeff_therm_ippo").val("");
            }

            function cleanAll_ippo() {
                cleanOut_ippo();
                cleanIn_ippo();
            }

        </script>

</html>