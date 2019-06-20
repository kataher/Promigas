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
                                <h2><strong>Steel Pipe Design:</strong>  Hoop Stress & Longitudinal Stress </h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_hoop()">
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
                                                <div id="div-table_hoop"></div>
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
                                <input  class="form-control" type="text" id="description_hoop" name="description_hoop"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_hoop" name="proyects_sel_hoop"> </select>
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
                                                            Pipe and Operational Properties
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="form-group">
                                                                <div class="col-lg-12">
                                                                    <label>Nominal pipe size:</label>

                                                                    <div id="div_nomps_sel_hoop">
                                                                        <select class="form-control" id="div_nomps_sel_hoop" name="div_nomps_sel_hoop"> </select>
                                                                    </div>
                                                                </div> 
                                                                <div class="col-lg-12">                      
                                                                    <label>Wall Thickness [.in]:</label>

                                                                    <div id="div_wallt_sel_hoop">
                                                                        <select class="form-control" id="wthi_sel_hoop" name="wthi_sel_hoop"> </select>     
                                                                    </div>
                                                                </div>                                            
                                                            </div> 
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading"> Input parameters </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">                                    
                                                                    <div class="form-group">
                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Nominal pipe size:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="nom_pipe_hoop" name="nom_pipe_hoop" onchange='onchange_Input_hoop(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_nom_pipe_sel_hoop">
                                                                                <select class="form-control" id="nom_pipe_sel_hoop" name="nom_pipe_sel_hoop" onchange='cleanOut_hoop()'> 
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Nominal Outside Diameter:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="nomout_hoop" name="nomout_hoop" onchange='onchange_Input_hoop(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_nomout_sel_hoop">
                                                                                <select class="form-control" id="nomout_sel_hoop" name="nomout_sel_hoop" onchange='cleanOut_hoop()'> 
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Nominal Wall Thickness:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="nom_wall_hoop" name="nom_wall_hoop" onchange='onchange_Input_hoop(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_nom_wall_sel_hoop">
                                                                                <select class="form-control" id="nom_wall_sel_hoop" name="nom_wall_sel_hoop" onchange='cleanOut_hoop()'> 
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Internal Pressure:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="int_press_hoop" name="int_press_hoop" onchange='onchange_Input_hoop(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_int_press_sel_hoop">
                                                                                <select class="form-control" id="int_press_sel_hoop" name="int_press_sel_hoop" onchange='cleanOut_hoop()'> 
                                                                                    <option value="psig">psig</option>
                                                                                    <option value="psia">psia</option>
                                                                                    <option value="kpag">kPa (g)</option>
                                                                                    <option value="kpaa">kPa (a)</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Height:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="height_hoop" name="height_hoop" onchange='onchange_Input_hoop(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_height_sel_hoop">
                                                                                <select class="form-control" id="height_sel_hoop" name="height_sel_hoop" onchange='cleanOut_hoop()'> 
                                                                                </select>
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
                                                                <div class="col-sm-12">                                    
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Hoop Stress:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="hoop_press_hoop" id="hoop_press_hoop" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="hoop_press_hoop">
                                                                                <option value="psi">psi</option>
                                                                                <option value="kpa">kPa</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Longitudinal Stress:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="long_press_hoop" id="long_press_hoop" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="presf" data-output-value="long_press_hoop">
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
                                                <input type="button" id="calculateBtn_hoop" name="calculateBtn_hoop" value="Calculate" onclick="calculate_hoop()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_hoop" name="saveBtn_hoop" value="Save" onclick="save_hoop()" class="btn btn-success btn-block">   
                                                <input type="button" id="reportBtn_hoop" name="reportBtn_hoop" value="Delete" onclick="reportReg_hoop()" class="btn btn-danger btn-block">          
                                                <input type="button" id="cleanAllBtn_hoop" name="cleanBtn_hoop" value="Clean All" onclick="cleanAll_hoop()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_hoop" name="cleanBtn_hoop" value="Clean Input Data" onclick="cleanIn_hoop()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_hoop" name="cleanBtn_hoop" value="Clean Output Data" onclick="cleanOut_hoop()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_hoop" name="opt_hoop"> 
                            <input type="hidden" id="id_hoop" name="id_hoop"> 
                        </div>
                        <div id="load_Dialog_hoop" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_hoop" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_hoop" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_hoop" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_hoop" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_hoop" title="Delete record" style='display:none;'>
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
                        $("#proyects_sel_hoop"),
                        $("#error_Dialog_hoop"));
                $("#opt_hoop").val("1");
                load_np_sel_hoop("npsn");
                load_in_sel_hoop();
                load_height_sel_hoop();
            });
            
            function load_in_sel_hoop() {
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
                        var newHtml = "<select class='form-control' name='nom_pipe_sel_hoop' id='nom_pipe_sel_hoop' onchange='cleanOut_hoop()'>" + data;
                        $("#div_nom_pipe_sel_hoop").html(newHtml);

                        newHtml = "<select class='form-control' name='nomout_sel_hoop' id='nomout_sel_hoop' onchange='cleanOut_hoop()'>" + data;
                        $("#div_nomout_sel_hoop").html(newHtml);

                        newHtml = "<select class='form-control' name='nom_wall_sel_hoop' id='nom_wall_sel_hoop' onchange='cleanOut_hoop()'>" + data;
                        $("#div_nom_wall_sel_hoop").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_hoop"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

           
            function load_height_sel_hoop() {
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
                        var newHtml = "<select class='form-control' name='height_sel_hoop' id='height_sel_hoop' onchange='cleanOut_hoop()'>" + data;
                        $("#div_height_sel_hoop").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_hoop"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function calculate_hoop() {
                var variables = {
                    "nom_pipe_hoop": $("#nom_pipe_hoop").val(),
                    "nomout_hoop": $("#nomout_hoop").val(),
                    "nom_wall_hoop": $("#nom_wall_hoop").val(),
                    "int_press_hoop": $("#int_press_hoop").val(),
                    "height_hoop": $("#height_hoop").val()
                };
                
                var unidades = {
                    "nom_pipe_sel_hoop": $("#nom_pipe_sel_hoop").val().split(",")[1],
                    "nomout_sel_hoop": $("#nomout_sel_hoop").val().split(",")[1],
                    "nom_wall_sel_hoop": $("#nom_wall_sel_hoop").val().split(",")[1],
                    "int_press_sel_hoop": $("#int_press_sel_hoop").val(),
                    "height_sel_hoop": $("#height_sel_hoop").val().split(",")[1]
                };

                var res = hoop_longitudinal_form(variables, unidades);

                $("#hoop_press_hoop").val(res[0]);
                $("#long_press_hoop").val(res[1]);
                show_OkDialog($("#calculate_Dialog_hoop"), "Proceso satisfactorio");
            }

            function load_np_sel_hoop(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "type": "5l",
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
                        var newHtml = "<select class=\"form-control\" name=\"nomps_sel_hoop\" id= \"nomps_sel_hoop\" onchange=\"onchange_nps_hoop()\">" + data;

                        $("#div_nomps_sel_hoop").html(newHtml);
                        var po = $("#nomps_sel_hoop").val().trim().split(",")[1];
                        $("#nomout").val(po);
                        load_wt_sel_hoop();
                        onchange_nps_hoop();
                        onchange_wt_hoop();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_hoop"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_hoop() {
                var idOp = $("#nomps_sel_hoop").val();
                //alert(idOp);
                var parametros = {
                    "combo": "wtn",
                    "nps": idOp,
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

                        var newHtml = "<select class=\"form-control\" name=\"wthi_sel_hoop\" id= \"wthi_sel_hoop\" onchange=\"onchange_wt_hoop()\">" + data;

                        $("#div_wallt_sel_hoop").html(newHtml);


                        if (data.trim() != "") {
                            var val = $("#wthi_sel_hoop").val().trim().split(",");
                            $("#wall_pipeop_hoop").val(val[1]);
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_hoop"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_nps_hoop() {
                cleanOut_hoop();
                var po = $("#nomps_sel_hoop option:selected");
                $("#nom_pipe_hoop").val(po.html());
                $("#nomout_hoop").val(po.val());
                load_wt_sel_hoop();
            }
            function onchange_wt_hoop() {
                cleanOut_hoop();
                var val = $("#wthi_sel_hoop").val().trim().split(",");
                $("#nom_wall_hoop").val(val[1]);
            }

            function cleanOut_hoop() {
                $("#hoop_press_hoop").val("");
                $("#long_press_hoop").val("");
            }

            function cleanIn_hoop() {
                $("#nom_pipe_hoop").val("");
                $("#nomout_hoop").val("");
                $("#nom_wall_hoop").val("");
                $("#int_press_hoop").val("");
            }

            function cleanAll_hoop() {
                cleanOut_hoop();
                cleanIn_hoop();
            }
            
            function onchange_Input_hoop(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_hoop();
            }
        </script> 

</html>