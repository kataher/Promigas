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
                                <h2><strong>Steel Pipe Design:</strong>  Maximum Impact Load & Penetration Depth</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_milpd()">
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
                                                <div id="div-table_milpd"></div>
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
                                <input  class="form-control" type="text" id="description_milpd" name="description_milpd"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_milpd" name="proyects_sel_milpd"> </select>
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
                                                                            <label>Weight of Falling Object:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="weight_fall_milpd" id="weight_fall_milpd" class="form-control" onchange="onchange_Input_milpd(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_weight_fall_sel_milpd">
                                                                            <select class="form-control" id="weight_fall_sel_milpd" name="weight_fall_sel_milpd" onchange='cleanOut_milpd()'> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Drop Height:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="drop_height_milpd" id="drop_height_milpd" class="form-control" onchange="onchange_Input_milpd(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_drop_height_sel_milpd">
                                                                            <select class="form-control" id="drop_height_sel_milpd" name="drop_height_sel_milpd" onchange='cleanOut_milpd()'> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Impact Area Diameter:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="imp_area_milpd" id="imp_area_milpd" class="form-control" onchange="onchange_Input_milpd(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_imp_area_sel_milpd">
                                                                            <select class="form-control" id="imp_area_sel_milpd" name="imp_area_sel_milpd" onchange='cleanOut_milpd()'> </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Unit Weight of Soil [lbs/ft<sup>3</sup>]:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="text" name="weight_soil_milpd" id="weight_soil_milpd" class="form-control" onchange="onchange_Input_milpd(this)" required>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Poisson's Ratio for Soil:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="text" name="poi_soil_milpd" id="poi_soil_milpd" class="form-control" onchange="onchange_Input_milpd(this)" required>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Shear Wave Velocity of Near Surface Soil [in./sec]:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="text" name="wave_vel_milpd" id="wave_vel_milpd" class="form-control" onchange="onchange_Input_milpd(this)" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-12">
                                                                        <br>
                                                                        <div class="panel panel-default">
                                                                            <div class="panel-heading">
                                                                                Empirical Coefficient of Penetration:
                                                                            </div>
                                                                            <div class="panel-body">
                                                                                <div class="form-group">
                                                                                    <div class="col-lg-8">
                                                                                        <div id="div_cole_sel_milpd" name="div_cole_sel_milpd">
                                                                                            <select class="form-control" id="sel_emp_coef" name="sel_emp_coef_milpd" onchange="onchange_nps_milpd()">
                                                                                                <option value=",0.0367">Sandy Soil</option>
                                                                                                <option value=",0.0482">Soil with vegetation</option>
                                                                                                <option value=",0.0732">Soft Soil</option>
                                                                                            </select>
                                                                                        </div>
                                                                                    </div> 
                                                                                    <div class="col-lg-4">
                                                                                        <input type="text" value="0.0367" class="form-control" id="emp_coef" name="emp_coef_milpd">
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
                                                                            <label>Soil Shear Modulus:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="soil_mod_milpd" id="soil_mod_milpd" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="soil_mod_milpd">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Maximum Load at the Soil Surface:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="max_soil_milpd" id="max_soil_milpd" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="weight" data-output-value="max_soil_milpd">
                                                                                <option value="lbs">lbs</option>
                                                                                <option value="kg">kg</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Impact Velocity:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="imp_vel_milpd" id="imp_vel_milpd" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="speed" data-output-value="imp_vel_milpd">
                                                                                <option value="ft/s">ft/s</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Impact Pressure:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="imp_press_milpd" id="imp_press_milpd" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="imp_press_milpd">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Weight per Unit of Impact Area:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="weight_imparea_milpd" id="weight_imparea_milpd" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="weight_imparea_milpd">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Penetration Depth:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="pen_depth_milpd" id="pen_depth_milpd" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="long" data-output-value="pen_depth_milpd">
                                                                                <option value="ft">ft</option>
                                                                                <option value="mt">m</option>
                                                                            </select>
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
                                                <input type="button" id="calculateBtn_milpd" name="calculateBtn_milpd" value="Calculate" onclick="calculate_milpd()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_milpd" name="saveBtn_milpd" value="Save" onclick="save_milpd()" class="btn btn-success btn-block">   
                                                <input type="button" id="reportBtn_milpd" name="reportBtn_milpd" value="Delete" onclick="reportReg_milpd()" class="btn btn-danger btn-block">          

                                                <input type="button" id="cleanAllBtn_milpd" name="cleanBtn_milpd" value="Clean All" onclick="cleanAll_milpd()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_milpd" name="cleanBtn_milpd" value="Clean Input Data" onclick="cleanIn_milpd()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_milpd" name="cleanBtn_milpd" value="Clean Output Data" onclick="cleanOut_milpd()" class="btn btn-warning btn-block">


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_milpd" name="opt_milpd"> 
                            <input type="hidden" id="id_milpd" name="id_milpd">   

                        </div>
                        <div id="load_Dialog_milpd" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_milpd" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_milpd" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_milpd" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_milpd" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_milpd" title="Delete record" style='display:none;'>
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
                    $("#proyects_sel_milpd"),
                    $("#error_Dialog_milpd"));
            $("#opt_milpd").val("1");
            load_peso_sel_milpd();
            load_in_sel_milpd();
        });

        function onchange_Input_milpd(inp) {

            var sw = validateDecimal(inp.value);

            if (sw !== true) {
                inp.value = "";
            }

            // onchange_Input_zero(inp);
            cleanOut_milpd();
        }

        function load_peso_sel_milpd() {
            
            var parametros = {
                "combo": "peso",
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
                    var newHtml = "<select class='form-control' id='weight_fall_sel_milpd' name='weight_fall_sel_milpd' onchange='cleanOut_milpd()'>" + data;
                    $("#div_weight_fall_sel_milpd").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_milpd"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_in_sel_milpd() {
            var parametros = {
                "combo": "in",
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
                    var newHtml = "<select class='form-control' id='drop_height_sel_milpd' name='drop_height_sel_milpd' onchange='cleanOut_milpd()'>" + data;
                    $("#div_drop_height_sel_milpd").html(newHtml);

                    var newHtml = "<select class='form-control' id='imp_area_sel_milpd' name='imp_area_sel_milpd' onchange='cleanOut_milpd()'>" + data;
                    $("#div_imp_area_sel_milpd").html(newHtml);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_milpd"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function calculate_milpd() {
            var variables = {
                "weight_fall_milpd": $("#weight_fall_milpd").val(),
                "drop_height_milpd": $("#drop_height_milpd").val(),
                "imp_area_milpd": $("#imp_area_milpd").val(),
                "weight_soil_milpd": $("#weight_soil_milpd").val(),
                "poi_soil_milpd": $("#poi_soil_milpd").val(),
                "wave_vel_milpd": $("#wave_vel_milpd").val(),
                "emp_coef": $("#emp_coef").val()
            };

            var unidades = {
                "weight_fall_sel_milpd": $("#weight_fall_sel_milpd").val().split(",")[1],
                "drop_height_sel_milpd": $("#drop_height_sel_milpd").val().split(",")[1],
                "imp_area_sel_milpd": $("#imp_area_sel_milpd").val().split(",")[1]
            };

            var res = maximun_impact_form(variables, unidades);

            $("#soil_mod_milpd").val(res[0]);
            $("#max_soil_milpd").val(res[1]);
            $("#imp_vel_milpd").val(res[2]);
            $("#imp_press_milpd").val(res[3]);
            $("#weight_imparea_milpd").val(res[4]);
            $("#pen_depth_milpd").val(res[5]);
            show_OkDialog($("#calculate_Dialog_milpd"), "Proceso satisfactorio");
        }

        function onchange_nps_milpd() {
            var po = $("#sel_emp_coef").val();
            $("#emp_coef").val(po.split(",")[1]);
        }

        function cleanOut_milpd() {
            $("#soil_mod_milpd").val("");
            $("#max_soil_milpd").val("");
            $("#imp_vel_milpd").val("");
            $("#imp_press_milpd").val("");
            $("#weight_imparea_milpd").val("");
            $("#pen_depth_milpd").val("");
        }

        function cleanIn_milpd() {
            $("#weight_fall_milpd").val("");
            $("#drop_height_milpd").val("");
            $("#imp_area_milpd").val("");
            $("#weight_soil_milpd").val("");
            $("#poi_soil_milpd").val("");
            $("#wave_vel_milpd").val("");
            $("#emp_coef").val("");
        }

        function cleanAll_milpd() {
            cleanOut_milpd();
            cleanIn_milpd();
        }
    </script>      
</html>