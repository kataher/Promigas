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
                                <h2><strong>Steel Pipe Design:</strong>  Linear Thermal Pipeline Expansion </h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_lther()">
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
                                                <div id="div-table_lther"></div>
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
                                <input  class="form-control" type="text" id="description_lther" name="description_lther"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_lther" name="proyects_sel_lther"> </select>
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
                                                                            <label>Pipe Length:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="pipe_lenght_lther" name="pipe_lenght_lther" onchange='onchange_Input_lther(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_pipe_lenght_sel_lther">
                                                                            <select class="form-control" id="pipe_lenght_sel_lther" name="pipe_lenght_sel_lther" onchange='cleanOut_lther()'>
                                                                                <option value="ft">ft</option>
                                                                                <option value="mt">m</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Coefficient of Linear Expansion [in./in.°F]:</label>
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <div id="div_cole_sel_lther">
                                                                                <select class="form-control" id="cole_sel_coef_lther" name="cole_sel_coef_lther" onchange='cleanOut_lther()'> </select>
                                                                            </div>

                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input class="form-control" type="text" id="coeff_exp_lther" name="coeff_exp_lther" onchange='onchange_Input_lther(this)' required><br>                  
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Temperature Change [°F]:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="text" class="form-control" id="temp_chan_lther" name="temp_chan_lther" onchange='onchange_Input_lther(this)' required> 
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Modulus of Elasticity:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" value="30000" class="form-control" id="mod_elas_lther" name="mod_elas_lther" onchange='onchange_Input_lther(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_mod_elas_sel_lther">
                                                                            <select class="form-control" id="mod_elas_sel_lther" name="mod_elas_sel_lther" onchange='cleanOut_lther()'> 
                                                                                <option value="ksi">ksi</option>
                                                                                <option value="psi">psi</option>
                                                                                <option value="MPa">MPa</option>
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
                                                        <div class="panel-heading">
                                                            Results                        
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">                                    
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Pipe Linear Elongation:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="pipe_linear_lther" id="pipe_linear_lther" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="long" data-output-value="pipe_linear_lther">
                                                                                <option value="in">in</option>
                                                                                <option value="mt">m</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Longitudinal Stress Due to Temperature Change:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="long_temp_lther" id="long_temp_lther" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="long_temp_lther">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
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

                                                <input type="button" id="calculateBtn_lther" name="calculateBtn_lther" value="Calculate" onclick="calculate_lther()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_lther" name="saveBtn_lther" value="Save" onclick="save_lther()" class="btn btn-success btn-block">   
                                                <input type="button" id="reportBtn_lther" name="reportBtn_lther" value="Delete" onclick="reportReg_lther()" class="btn btn-danger btn-block">          

                                                <input type="button" id="cleanAllBtn_lther" name="cleanBtn_lther" value="Clean All" onclick="cleanAll_lther()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_lther" name="cleanBtn_lther" value="Clean Input Data" onclick="cleanIn_lther()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_lther" name="cleanBtn_lther" value="Clean Output Data" onclick="cleanOut_lther()" class="btn btn-warning btn-block">


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_lther" name="opt_lther"> 
                            <input type="hidden" id="id_lther" name="id_lther">
                        </div>
                        <div id="load_Dialog_lther" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_lther" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_lther" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_lther" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_lther" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_lther" title="Delete record" style='display:none;'>
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
                        $("#proyects_sel_lther"),
                        $("#error_Dialog_lther"));
                $("#opt_lther").val("1");
                load_np_sel_lther("ltpe");
            });
           
            function calculate_lther() {
                var variables = {
                    "pipe_lenght_lther": $("#pipe_lenght_lther").val(),
                    "coeff_exp_lther": $("#coeff_exp_lther").val(),
                    "temp_chan_lther": $("#temp_chan_lther").val(),
                    "mod_elas_lther": $("#mod_elas_lther").val()
                };

                var unidades = {
                    "pipe_lenght_sel_lther": $("#pipe_lenght_sel_lther").val(),
                    "mod_elas_sel_lther": $("#mod_elas_sel_lther").val()
                };

                var res = linear_thermal_form(variables, unidades);

                $("#pipe_linear_lther").val(res[0]);
                $("#long_temp_lther").val(res[1]);
                show_OkDialog($("#calculate_Dialog_lther"), "Proceso satisfactorio");
            }

            function load_np_sel_lther(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"cole_sel_coef_lther\" id= \"cole_sel_coef_lther\" onchange=\"onchange_nps_lther()\">" + data;

                        $("#div_cole_sel_lther").html(newHtml);
                        var po = $("#cole_sel_coef_lther").val().trim().split(",")[1];
                        $("#coeff_exp_lther").val(po.split(",")[1]);
                        onchange_nps_lther();

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_lther"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_nps_lther() {
                var po = $("#cole_sel_coef_lther").val();
                $("#coeff_exp_lther").val(po.split(",")[1]);
                cleanOut_lther();
            }

            function cleanOut_lther() {
                $("#pipe_linear_lther").val("");
                $("#long_temp_lther").val("");
            }

            function cleanIn_lther() {
                $("#pipe_lenght_lther").val("");
                $("#coeff_exp_lther").val("");
                $("#temp_chan_lther").val("");
                $("#mod_elas_lther").val("");
            }

            function cleanAll_lther() {
                cleanOut_lther();
                cleanIn_lther();
            }

            function onchange_Input_lther(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_lther();
            }
        </script> 

</html>