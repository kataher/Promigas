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
                                <h2><strong>Steel Pipe Design:</strong>  Wall Thickness - Straight Steel Pipe</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_wts()">
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
                                                <div id="div-table_wts"></div>
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
                                <input  class="form-control" type="text" id="description_wts" name="description_wts"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_wts" name="proyects_sel_wts"> </select>
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
                                                        <div class="panel-heading"> Select Pipe and Location Data </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="checkbox">
                                                                        <input type="radio" id = "api5l_wts" name="linepipe_wts" value="api5l_wts" onchange="onchange_linepipe_wts()" required> Tubería - especificación API 5L <br>
                                                                        <input type="radio" id = "astm_wts" name="linepipe_wts" value="astm_wts" onchange="onchange_linepipe_wts()" required> Standart Steel Pipe - ASTM - ANSI B36.10
                                                                    </div>                                    

                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Line Pipe API 5L
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-12">
                                                                                    <div class="form-group">
                                                                                        <div class="col-md-12">
                                                                                            <label>Nominal pipe size:</label> 
                                                                                        </div>
                                                                                        <div class="col-md-12">
                                                                                            <div id="div_nominalps_sel_wts">
                                                                                                <select class="form-control" id="nominalps_sel_wts" name="nominalps_sel_wts"> </select></div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <div class="col-md-12">
                                                                                            <label>Grade:</label> 
                                                                                        </div>
                                                                                        <div class="col-md-12">
                                                                                            <div id="div_grade_sel_wts">
                                                                                                <select class="form-control" id="grade_sel_wts" name="grade_sel_wts"> </select>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div> 
                                                                        </div>
                                                                    </div>
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Design Factor -F                       
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="row">
                                                                                <div class="col-lg-12">
                                                                                    <div class="form-group">

                                                                                        <div class="col-md-12">
                                                                                            <div id="div_df_sel_wts">
                                                                                                <select class="form-control" id="design_factor_sel_wts" name="design_factor_sel_wts"> </select>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>  
                                                                    </div>
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Longitudinal Joint Factor - E
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="row">
                                                                                <div class="col-lg-12">
                                                                                    <div class="form-group">

                                                                                        <div class="col-md-12">
                                                                                            <div id="div_jf_sel_wts">
                                                                                                <select class="form-control" id="longitudinal_jf_wts" name="longitudinal_jf_wts"> </select>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>  
                                                                    </div>
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Temperature Derating Factor -E
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="row">
                                                                                <div class="col-lg-12">
                                                                                    <div class="form-group">
                                                                                        <div class="col-md-12">
                                                                                            <label>Temperature [°F]:</label> 
                                                                                        </div>
                                                                                        <div class="col-md-12">
                                                                                            <div  id="div_td_sel_wts">                    
                                                                                                <select class="form-control" id="temperature_wts" name="temperature_wts"> </select>
                                                                                            </div>                  
                                                                                        </div>
                                                                                    </div>


                                                                                </div>
                                                                            </div>
                                                                        </div>  
                                                                    </div>
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            About thickness corrosion:
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="col-lg-6">
                                                                                <input type="radio" id = "espesor_wts" name="oppl_wts" onchange="onchange_esp_wts(1)" required> Si<br> 
                                                                                <input type="radio" id = "espesor_wts" name="oppl_wts" onchange="onchange_esp_wts(0)" required checked> No <br>                   
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
                                                        <div class="panel-heading"> Input Parameters </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">                                    
                                                                    <div class="form-group">
                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Nominal pipe size:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="nom_pipeop_wts" name="nom_pipeop_wts" required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_nom_pipeop_sel_wts">
                                                                                <select class="form-control" id="nom_pipeop_sel_wts" name="nom_pipeop_sel_wts" onchange='cleanOut_wts()'> 
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Nominal Outside Diameter:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="nomout_pipeop_wts" name="nomout_pipeop_wts" onchange='onchange_Input_wts(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_nomout_pipeop_sel_wts">
                                                                                <select class="form-control" id="nomout_pipeop_sel_wts" name="nomout_pipeop_sel_wts" onchange='cleanOut_wts()'> 
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Height:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="height_wts" name="height_wts" onchange='onchange_Input_wts(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_height_sel_wts">
                                                                                <select class="form-control" id="height_sel_wts" name="height_sel_wts" onchange='cleanOut_wts()'> 
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Design Pressure:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="despress_pipeop_wts" name="despress_pipeop_wts" onchange='onchange_Input_wts(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_despress_pipeop_sel_wts">
                                                                                <select class="form-control" id="despress_pipeop_sel_wts" name="despress_pipeop_sel_wts" onchange='cleanOut_wts()'> 
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Grade:</label>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <input type="text" class="form-control" id="gra_pipeop_wts" name="gra_pipeop_wts" required> 
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Specified Minimum Yield Strength:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="yield_pipeop_wts" name="yield_pipeop_wts" onchange='onchange_Input_wts(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_yield_pipeop_sel_wts">
                                                                                <select class="form-control" id="yield_pipeop_sel_wts" name="yield_pipeop_sel_wts" onchange='cleanOut_wts()'> 
                                                                                    <option value="psi">psi</option>
                                                                                    <option value="MPa">MPa</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Design Factor:</label>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <input type="text" class="form-control" id="fact_pipeop_wts" name="fact_pipeop_wts" onchange='onchange_Input_wts(this)' required> 
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Longitudinal Join Factor:</label>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <input type="text" class="form-control" id="long_pipeop_wts" name="long_pipeop_wts" onchange='onchange_Input_wts(this)' required> 
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Temperature Derating Factor:</label>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <input type="text" class="form-control" id="temp_pipeop_wts" name="temp_pipeop_wts" onchange='onchange_Input_wts(this)' required> 
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group" id="aboutthi" style="display:none">
                                                                            <div class="col-md-12">
                                                                                <label>About thickness corrosion:</label>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <input type="text" class="form-control" id="about_thick_wts" value="0" name="about_thick_wts" onchange='onchange_Input_wts(this)' required> 
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
                                                                            <label>Espesor mínimo de la pared de la tubería:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="minpipe_wts" id="minpipe_wts" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="long" data-output-value="minpipe_wts">
                                                                                <option value="in">in</option>
                                                                                <option value="mm">mm</option>
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
                                                <input type="button" id="calculateBtn_wt" name="calculateBtn_wts" value="Calculate" onclick="calculate_wts()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_wt" name="saveBtn_wts" value="Save" onclick="save_wts()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_wt" name="delteBtn_wts" value="Eliminar" onclick="deleteReg_wts()" class="btn btn-danger btn-block">          

                                                <input type="button" id="cleanAllBtn_wts" name="cleanBtn_wts" value="Clean All" onclick="cleanAll_wts()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_wts" name="cleanBtn_wts" value="Clean Input Data" onclick="cleanIn_wts()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_wts" name="cleanBtn_wts" value="Clean Output Data" onclick="cleanOut_wts()" class="btn btn-warning btn-block">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_wts" name="opt_wts"> 
                            <input type="hidden" id="id_wts" name="id_wts">    
                        </div>
                        <div id="load_Dialog_wts" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_wts" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_wts" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_wts" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_wts" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_wts" title="Delete record" style='display:none;'>
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
                
                load_in_sel_wts();
                load_pres_sel_wts();
                
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_wts"),
                        $("#error_Dialog_wts"));

                $('#api5l_wts').attr('checked', 'checked');
                load_nps_sel_wts("5l");
                load_deratingf_sel_wts();
                load_grade_sel_wts("gra5l");
                load_joinf_sel_wts("jointf5l");
                load_desingf_sel_wts();
                load_in_sel_wts();
                load_in2_sel_wts();
                load_pres_sel_wts();
            });
            
            function load_pres_sel_wts() {
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
                        var newHtml = "<select class='form-control' name='despress_sel_wts' id='despress_sel_wts' onchange='cleanOut_wts()'>" + data;
                        $("#div_despress_sel_wts").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_in_sel_wts() {
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
                        var newHtml = "<select class='form-control' name='nomout_sel_wts' id='nomout_sel_wts' onchange='cleanOut_wts()'>" + data;
                        $("#div_nomout_sel_wts").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_in_sel_wts() {
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
                        var newHtml = "<select class='form-control' id='height_sel_wts' name='height_sel_wts' onchange='cleanOut_wts()'> " + data;
                        $("#div_height_sel_wts").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_in2_sel_wts() {
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
                        var newHtml = "<select class='form-control' id='nom_pipeop_sel_wts' name='nom_pipeop_sel_wts' onchange='cleanOut_wts()'> " + data;
                        $("#div_nom_pipeop_sel_wts").html(newHtml);

                        newHtml = "<select class='form-control' id='nomout_pipeop_sel_wts' name='nomout_pipeop_sel_wts' onchange='cleanOut_wts()'> " + data;
                        $("#div_nomout_pipeop_sel_wts").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_pres_sel_wts() {
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
                        var newHtml = "<select class='form-control' id='despress_pipeop_sel_wts' name='despress_pipeop_sel_wts' onchange='cleanOut_wts()'> " + data;
                        $("#div_despress_pipeop_sel_wts").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function onchange_esp_wts(val) {
                if (val === 1) {
                    document.getElementById("aboutthi").style.display = "block";
                    document.getElementById("about_thick_wts").value = 0;
                } else {
                    document.getElementById("aboutthi").style.display = "none";
                    document.getElementById("about_thick_wts").value = 0;
                }
            }

            function load_desingf_sel_wts() {
                var parametros = {
                    "combo": "desingf2",
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
                        var newHtml = "<select class=\"form-control\" name=\"design_factor_sel_wts\" id=\"design_factor_sel_wts\" onchange=\"onchange_defa_wts()\">" + data;
                        $("#div_df_sel_wts").html(newHtml);

                        var x = $("#design_factor_sel_wts").val();
                        $("#fact_pipeop_wts").val(x.split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_joinf_sel_wts(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"longitudinal_jf_wts\" id=\"longitudinal_jf_wts\" onchange=\"onchange_jf_wts()\">" + data;
                        $("#div_jf_sel_wts").html(newHtml);
                        $("#long_pipeop_wts").val($("#longitudinal_jf_wts").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_nps_sel_wts(type) {
                var parametros = {
                    "combo": "npsn",
                    "type": type,
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
                        var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_wts\" id= \"nominalps_sel_wts\" onchange=\"onchange_nps_wts()\">" + data;
                        $("#div_nominalps_sel_wts").html(newHtml);
                        var res = $("#nominalps_sel_wts option:selected").html();
                        $("#nom_pipeop_wts").val(res);
                        $("#nomout_pipeop_wts").val($("#nominalps_sel_wts").val());
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_deratingf_sel_wts() {
                var parametros = {
                    "combo": "deratingf",
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
                        var newHtml = "<select class=\"form-control\" name=\"td_sel_wts\" id=\"td_sel_wts\" onchange=\"onchange_df_wts()\">" + data;
                        $("#div_td_sel_wts").html(newHtml);
                        $("#temp_pipeop_wts").val($("#td_sel_wts").val().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_grade_sel_wts(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    async: false,
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"grade_sel_wts\" id=\"grade_sel_wts\" onchange=\"onchange_gra_wts()\">" + data;
                        $("#div_grade_sel_wts").html(newHtml);

                        var x = $("#grade_sel_wts").val();
                        $("#specifiedmys_wts").val(x.split(",")[1]);
                        var res = $("#grade_sel_wts option:selected").html();
                        $("#gra_pipeop_wts").val(res);
                        $("#yield_pipeop_wts").val(x.split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_wts"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_linepipe_wts() {

                var sel = $("input[type='radio'][name='linepipe_wts']:checked");
                if (sel.val() == "api5l_wts") {
                    load_grade_sel_wts("gra5l");
                    load_joinf_sel_wts("jointf5l");
                    load_nps_sel_wts("5l");

                } else {
                    load_grade_sel_wts("graastm");
                    load_joinf_sel_wts("jointf");
                    load_nps_sel_wts("astm");
                }

                cleanOut_wts();
            }

            function onchange_nps_wts() {
                var res = $("#nominalps_sel_wts option:selected").html();
                $("#nom_pipeop_wts").val(res);
                $("#nomout_pipeop_wts").val($("#nominalps_sel_wts").val());
                cleanOut_wts();
            }

            function calculate_wts() {

                var variables = {
                    "nomout_pipeop_wts": $("#nomout_pipeop_wts").val(),
                    "height_wts": $("#height_wts").val(),
                    "despress_pipeop_wts": $("#despress_pipeop_wts").val(),
                    "gra_pipeop_wts": $("#gra_pipeop_wts").val(),
                    "yield_pipeop_wts": $("#yield_pipeop_wts").val(),
                    "fact_pipeop_wts": $("#fact_pipeop_wts").val(),
                    "long_pipeop_wts": $("#long_pipeop_wts").val(),
                    "temp_pipeop_wts": $("#temp_pipeop_wts").val(),
                    "about_thick_wts": $("#about_thick_wts").val()
                };
                
                var unidades = {
                    "nomout_pipeop_sel_wts": $("#nomout_pipeop_sel_wts").val().split(",")[1],
                    "height_sel_wts": $("#height_sel_wts").val().split(",")[1],
                    "despress_pipeop_sel_wts": $("#despress_pipeop_sel_wts").val().split(",")[1],
                    "yield_pipeop_sel_wts": $("#yield_pipeop_sel_wts").val()
                };
                
                var res = wallthickness_ssp(variables, unidades);

                $("#minpipe_wts").val(res[0]);

                show_OkDialog($("#calculate_Dialog_wdp"), "Proceso satisfactorio");
            }

            function cleanOut_wts() {
                $("#minpipe_wts").val("");
            }

            function cleanIn_wts() {
                $("#nom_pipeop_wts").val("");
                $("#nomout_pipeop_wts").val("");
                $("#despress_pipeop_wts").val("");
                $("#gra_pipeop_wts").val("");
                $("#yield_pipeop_wts").val("");
                $("#fact_pipeop_wts").val("");
                $("#long_pipeop_wts").val("");
                $("#temp_pipeop_wts").val("");
            }

            function cleanAll_wts() {
                cleanOut_wts();
                cleanIn_wts();
            }
            
            function onchange_gra_wts() {
                var x = $("#grade_sel_wts").val();
                $("#specifiedmys_wts").val(x.split(",")[1]);
                var res = $("#grade_sel_wts option:selected").html();
                //$("#gra_pipeop_wts").val(x.split(",")[1]);
                $("#gra_pipeop_wts").val(res);
                $("#yield_pipeop_wts").val(x.split(",")[1]);
                cleanOut_wts();
            }
            
            function onchange_defa_wts() {
                $("#fact_pipeop_wts").val($("#design_factor_sel_wts").val().split(",")[1]);
                cleanOut_wts();
            }
            
            function onchange_jf_wts() {
                $("#long_pipeop_wts").val($("#longitudinal_jf_wts").val().split(",")[1]);
                cleanOut_wts();
            }

            function onchange_df_wts() {
                $("#temp_pipeop_wts").val($("#td_sel_wts").val().split(",")[1]);
                cleanOut_wts();
            }
            
            function onchange_Input_wts(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_wts();
            }
        </script>       
</html>