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
                                <h2><strong>Steel Pipe Design:</strong>  Pipe Anchor Force Analysis</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_paf()">
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
                                                <div id="div-table_paf"></div>
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
                                <input  class="form-control" type="text" id="description_paf" name="description_paf"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_paf" name="proyects_sel_paf"> </select>
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
                                                        <div class="panel-heading"> Select Pipe Properties </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="col-lg-12">

                                                                        <label>Nominal pipe size:</label>

                                                                        <div id="div_nomps_sel_paf">
                                                                            <select class="form-control" id="div_nomps_sel_paf" name="div_nomps_sel_paf"> </select>
                                                                        </div>

                                                                    </div>
                                                                    <div class="col-lg-12">

                                                                        <label>Wall Thickness [.in]:</label>

                                                                        <div id="div_wallt_sel_paf">
                                                                            <select class="form-control" id="wthi_sel_paf" name="wthi_sel_paf"> </select>     
                                                                        </div>

                                                                    </div>



                                                                    <div class="col-lg-12">
                                                                        <label>Poisson's Ratio<sup>3</sup></label>                    
                                                                    </div>
                                                                    <div class="col-lg-12">
                                                                        <input type="text" class="form-control" id="poi_paf" name="poi_paf" value="0.3">
                                                                    </div>  
                                                                    <div class="col-lg-12">
                                                                        <label>Young's Modulus of Elasticity [psi]</label>                    
                                                                    </div>
                                                                    <div class="col-lg-12">
                                                                        <input type="text" class="form-control" id="you_elas_paf" name="you_elas_paf" value="29000000">
                                                                    </div>
                                                                    <div class="col-lg-12">
                                                                        <label>Thermal Expansion Coefficient [in./in.°F]</label>                    
                                                                    </div>
                                                                    <div class="col-lg-12">
                                                                        <input type="text" class="form-control" id="ther_exp_paf" name="ther_exp_paf" value="0.0000065">
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
                                                                        <div class="col-md-12">
                                                                            <label>Height:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="height_paf" name="height_paf" onchange='onchange_Input_paf(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_height_sel_paf">
                                                                            <select class="form-control" id="height_sel_paf" name="height_sel_paf" onchange='cleanOut_paf()'> 
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Design Pressure:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="design_press_paf" name="design_press_paf" onchange='onchange_Input_paf(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_design_press_sel_paf">
                                                                            <select class="form-control" id="design_press_sel_paf" name="design_press_sel_paf" onchange='cleanOut_paf()'> 
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Nominal Outside Diameter:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="nomout_paf" name="nomout_paf" onchange='onchange_Input_paf(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_nomout_sel_paf">
                                                                            <select class="form-control" id="nomout_sel_paf" name="nomout_sel_paf" onchange='cleanOut_paf()'> 
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Nominal Inside Diameter:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="nomin_paf" name="nomin_paf" onchange='onchange_Input_paf(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_nomin_sel_paf">
                                                                            <select class="form-control" id="nomin_sel_paf" name="nomin_sel_paf" onchange='cleanOut_paf()'> 
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Nominal Wall Thickness:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="nom_wall_paf" name="nom_wall_paf" onchange='onchange_Input_paf(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_nom_wall_sel_paf">
                                                                            <select class="form-control" id="nom_wall_sel_paf" name="nom_wall_sel_paf" onchange='cleanOut_paf()'> 
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Installation Temperature:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="temp_paf" name="temp_paf" onchange='onchange_Input_paf(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_temp_sel_paf">
                                                                            <select class="form-control" id="temp_sel_paf" name="temp_sel_paf" onchange='cleanOut_paf()'> 
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Operating Temperature:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="oper_temp_paf" name="oper_temp_paf" onchange='onchange_Input_paf(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_oper_temp_sel_paf">
                                                                            <select class="form-control" id="oper_temp_sel_paf" name="oper_temp_sel_paf" onchange='cleanOut_paf()'> 
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
                                                                        <label>Hoop Stress [psi]:</label>
                                                                        <input type="text" name="hoop_stress_paf" id="hoop_stress_paf" class="form-control" readonly> 
                                                                        <BR>
                                                                        <label>Compressive Stress Due to Temperature Change [psi]:</label>
                                                                        <input type="text" name="comp_stress_paf" id="comp_stress_paf" class="form-control" readonly> 
                                                                        <BR>
                                                                        <label>Net Longitudinal Stress at Point A [psi>]:</label>
                                                                        <input type="text" name="netA_paf" id="netA_paf" class="form-control" readonly> 
                                                                        <BR>
                                                                        <label>Net Longitudinal Stress at Point B [psi>]:</label>
                                                                        <input type="text" name="netB_paf" id="netB_paf" class="form-control" readonly> 
                                                                        <BR>
                                                                        <label>Net Longitudinal Strain at Point B [in./in.]:</label>
                                                                        <input type="text" name="net_strain_A_paf" id="net_strain_A_paf" class="form-control" readonly> 
                                                                        <BR>                                      
                                                                        <label>Soil Resistance [lb./ft]:</label>
                                                                        <input type="text" name="soil_res_paf" id="soil_res_paf" class="form-control" readonly> 
                                                                        <BR>                      
                                                                        <label>Length of the Transition Zone A-B [ft.]:</label>
                                                                        <input type="text" name="lenght_zone_paf" id="lenght_zone_paf" class="form-control" readonly> 
                                                                        <BR>
                                                                        <label>Total Pipe Movement at Point B [in.]:</label>
                                                                        <input type="text" name="total_pipe_paf" id="total_pipe_paf" class="form-control" readonly> 
                                                                        <BR>    
                                                                        <label>Anchor Force [lbs.]:</label>
                                                                        <input type="text" name="anchor_force_paf" id="anchor_force_paf" class="form-control" readonly> 

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
                                                <input type="button" id="calculateBtn_paf" name="calculateBtn_paf" value="Calculate" onclick="calculate_paf()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_paf" name="saveBtn_paf" value="Save" onclick="save_paf()" class="btn btn-success btn-block">   
                                                <input type="button" id="reportBtn_paf" name="reportBtn_paf" value="Delete" onclick="reportReg_paf()" class="btn btn-danger btn-block">          

                                                <input type="button" id="cleanAllBtn_paf" name="cleanBtn_paf" value="Clean All" onclick="cleanAll_paf()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_paf" name="cleanBtn_paf" value="Clean Input Data" onclick="cleanIn_paf()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_paf" name="cleanBtn_paf" value="Clean Output Data" onclick="cleanOut_paf()" class="btn btn-warning btn-block">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_paf" name="opt_paf"> 
                            <input type="hidden" id="id_paf" name="id_paf">      

                        </div>
                        <div id="load_Dialog_paf" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_paf" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_paf" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_paf" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_paf" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_paf" title="Delete record" style='display:none;'>
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
                        $("#proyects_sel_paf"),
                        $("#error_Dialog_paf"));

                $("#opt_paf").val("1");
                load_np_sel_paf("npsn");
                load_in_sel_paf();
                load_in2_sel_paf();
                load_temp_sel_paf();
                load_pres_sel_paf();
            });
            
            function load_in_sel_paf() {
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
                        var newHtml = "<select class='form-control' id='height_sel_paf' name='height_sel_paf' onchange='cleanOut_paf()'> " + data;
                        $("#div_height_sel_paf").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_paf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_in2_sel_paf() {
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
                        var newHtml = "<select class='form-control' id='nomout_sel_paf' name='nomout_sel_paf' onchange='cleanOut_paf()'>" + data;
                        $("#div_nomout_sel_paf").html(newHtml);
                        
                        newHtml = "<select class='form-control' id='nomin_sel_paf' name='nomin_sel_paf' onchange='cleanOut_paf()'> " + data;
                        $("#div_nomin_sel_paf").html(newHtml);
                        
                        newHtml = "<select class='form-control' id='nom_wall_sel_paf' name='nom_wall_sel_paf' onchange='cleanOut_paf()'> " + data;
                        $("#div_nom_wall_sel_paf").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_paf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_temp_sel_paf() {
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
                        var newHtml = "<select class='form-control' id='temp_sel_paf' name='temp_sel_paf' onchange='cleanOut_paf()'> " + data;
                        $("#div_temp_sel_paf").html(newHtml);
                        
                        newHtml = "<select class='form-control' id='oper_temp_sel_paf' name='oper_temp_sel_paf' onchange='cleanOut_paf()'> " + data;
                        $("#div_oper_temp_sel_paf").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_paf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_pres_sel_paf() {
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
                        var newHtml = "<select class='form-control' id='design_press_sel_paf' name='design_press_sel_paf' onchange='cleanOut_paf()'> " + data;
                        $("#div_design_press_sel_paf").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_paf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function calculate_paf() {
                var variables = {
                    "poi_paf": $("#poi_paf").val(),
                    "you_elas_paf": $("#you_elas_paf").val(),
                    "ther_exp_paf": $("#ther_exp_paf").val(),
                    "height_paf": $("#height_paf").val(),
                    "design_press_paf": $("#design_press_paf").val(),
                    "nomout_paf": $("#nomout_paf").val(),
                    "nomin_paf": $("#nomin_paf").val(),
                    "nom_wall_paf": $("#nom_wall_paf").val(),
                    "temp_paf": $("#temp_paf").val(),
                    "oper_temp_paf": $("#oper_temp_paf").val()
                };
                
                var unidades = {
                    "height_sel_paf": $("#height_sel_paf").val().split(",")[1],
                    "design_press_sel_paf": $("#design_press_sel_paf").val().split(",")[1],
                    "nomout_sel_paf": $("#nomout_sel_paf").val().split(",")[1],
                    "nomin_sel_paf": $("#nomin_sel_paf").val().split(",")[1],
                    "nom_wall_sel_paf": $("#nom_wall_sel_paf").val().split(",")[1],
                    "temp_sel_paf": $("#temp_sel_paf").val().split(",")[1],
                    "oper_temp_sel_paf": $("#oper_temp_sel_paf").val().split(",")[1]
                };

                var res = pipeanchorforce_form(variables, unidades);

                $("#hoop_stress_paf").val(res[0]);
                $("#comp_stress_paf").val(res[1]);
                $("#netA_paf").val(res[2]);
                $("#netB_paf").val(res[3]);
                $("#net_strain_A_paf").val(res[4]);
                $("#soil_res_paf").val(res[5]);
                $("#lenght_zone_paf").val(res[6]);
                $("#total_pipe_paf").val(res[7]);
                $("#anchor_force_paf").val(res[8]);


                show_OkDialog($("#calculate_Dialog_paf"), "Proceso satisfactorio");
            }

            function load_np_sel_paf(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"nomps_sel_paf\" id= \"nomps_sel_paf\" onchange=\"onchange_nps_paf()\">" + data;

                        $("#div_nomps_sel_paf").html(newHtml);
                        var po = $("#nomps_sel_paf").val().trim().split(",")[1];
                        $("#nomout").val(po);
                        load_wt_sel_paf();
                        onchange_nps_paf();
                        onchange_wt_paf();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_paf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_paf() {
                var idOp = $("#nomps_sel_paf").val();
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

                        var newHtml = "<select class=\"form-control\" name=\"wthi_sel_paf\" id= \"wthi_sel_paf\" onchange=\"onchange_wt_paf()\">" + data;

                        $("#div_wallt_sel_paf").html(newHtml);


                        if (data.trim() != "") {
                            var val = $("#wthi_sel_paf").val().trim().split(",");
                            $("#wall_pipeop_paf").val(val[1]);
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_paf"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_nps_paf() {
                //cleanOut_paf();
                var po = $("#nomps_sel_paf").val();
                $("#nomout_paf").val(po);
                
                var thickness = parseFloat($("#wthi_sel_paf").val().split(",")[1]);
                var outside_diam = parseFloat($("#nomout_paf").val());
                $("#nomin_paf").val((outside_diam - 2 * thickness).toFixed(3));
            
                load_wt_sel_paf();
            }
            function onchange_wt_paf() {
                //cleanOut_paf();
                var val = $("#wthi_sel_paf").val().trim().split(",");
                $("#nom_wall_paf").val(val[1]);
                
                var thickness = parseFloat($("#wthi_sel_paf").val().split(",")[1]);
                var outside_diam = parseFloat($("#nomout_paf").val());
                $("#nomin_paf").val((outside_diam - 2 * thickness).toFixed(3));
            }

            function cleanOut_paf() {
                $("#hoop_stress_paf").val("");
                $("#comp_stress_paf").val("");
                $("#netA_paf").val("");
                $("#netB_paf").val("");
                $("#net_strain_A_paf").val("");
                $("#soil_res_paf").val("");
                $("#lenght_zone_paf").val("");
                $("#total_pipe_paf").val("");
                $("#anchor_force_paf").val("");
            }

            function cleanIn_paf() {
                $("#poi_paf").val("");
                $("#you_elas_paf").val("");
                $("#ther_exp_paf").val("");
                $("#design_press_paf").val("");
                $("#nomout_paf").val("");
                $("#nomin_paf").val("");
                $("#nom_wall_paf").val("");
                $("#temp_paf").val("");
                $("#oper_temp_paf").val("");
            }

            function cleanAll_paf() {
                cleanOut_paf();
                cleanIn_paf();
            }
        </script>       
</html>