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
                                <h2><strong>Steel Pipe Design:</strong>  Maximum Allowable Pipe Span Length </h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_max()">
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
                                                <div id="div-table_max"></div>
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
                                <input  class="form-control" type="text" id="description_max" name="description_max"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_max" name="proyects_sel_max"> </select>
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
                                                            Pipe Properties
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-heading">
                                                                            Line Pipe API 5L
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="row">
                                                                                <div class="col-lg-12">
                                                                                    <div class="form-group">
                                                                                        <div class="col-md-12">
                                                                                            <label>Nominal pipe size:</label> 
                                                                                        </div>
                                                                                        <div class="col-md-12">
                                                                                            <div id="div_nominalps_sel_max">
                                                                                                <select class="form-control" id="nominalps_sel_max" name="nominalps_sel_max"> </select></div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="form-group">
                                                                                        <div class="col-lg-12">                      
                                                                                            <label>Wall Thickness [.in]:</label>
                                                                                        </div> 
                                                                                        <div class="col-lg-12" id="div_wt_sel_max">
                                                                                            <select class="form-control" id="wt_sel_max" name="wt_sel_max"> </select>
                                                                                        </div>
                                                                                    </div> 
                                                                                    <div class="form-group">
                                                                                        <div class="col-md-12">
                                                                                            <label>Grade:</label> 
                                                                                        </div>
                                                                                        <div class="col-md-12">
                                                                                            <div id="div_grade_sel_max">
                                                                                                <select class="form-control" id="grade_sel_max" name="grade_sel_max"> </select>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                        </div> 
                                                                    </div>                          
                                                                    <div class="panel panel-default">
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-12"> 
                                                                                    <div class="col-lg-12">
                                                                                        <label>Pipe Class:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-12">
                                                                                        <div id="div_jf_sel_max">
                                                                                            <select class="form-control" id="longitudinal_jf_max" name="longitudinal_jf_max"> </select>
                                                                                        </div>
                                                                                    </div> 
                                                                                </div>
                                                                                <div class="col-lg-12"> 
                                                                                    <div class="col-lg-12">                      
                                                                                        <label>Young's Modulus for Steel [ksi]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-12">
                                                                                        <input type="text" name="youn__maxallo_max" id="youn__maxallo_max" class="form-control" value="29000">
                                                                                    </div>               
                                                                                </div>
                                                                                <div class="col-lg-12"> 
                                                                                    <div class="col-lg-12">                      
                                                                                        <label>Poisson's Ratio for Steel:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-12">
                                                                                        <input type="text" name="poi_maxallo_max" id="poi_maxallo_max" class="form-control" value="0.30">
                                                                                    </div>                  
                                                                                </div>
                                                                                <div class="col-lg-12">   
                                                                                    <div class="col-lg-12">                      
                                                                                        <label>Average Unit Weight of Steel [lb/ft<sup>3</sup>]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-12">
                                                                                        <input type="text" name="ave_weight_max" id="ave_weight_max" class="form-control" value="490">
                                                                                    </div>                  
                                                                                </div>

                                                                                <div class="col-lg-12"> 
                                                                                    <div class="col-lg-12">
                                                                                        <label>Location Class:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-12">
                                                                                        <div id="div_df_sel_max">
                                                                                            <select class="form-control" id="design_factor_sel_max" name="design_factor_sel_max"> </select>
                                                                                        </div>
                                                                                    </div>  
                                                                                </div>
                                                                                <div class="col-lg-12"> 
                                                                                    <div class="col-lg-12">
                                                                                        <label>Operating Temperature [°F]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-12">
                                                                                        <div  id="div_td_sel_max">                    
                                                                                            <select class="form-control" id="temperature_max" name="temperature_max"> </select>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="col-lg-12"> 
                                                                                    <div class="col-lg-12">                      
                                                                                        <label>Pipe Hydrotest:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-12">
                                                                                        <input type="radio" id ="pipe_hyd" name="pipe_hyd" selected onchange="onchange_line_maxallo(1)" required> Yes
                                                                                        <input type="radio" id ="pipe_hyd" name="pipe_hyd" onchange="onchange_line_maxallo(0)" required> No
                                                                                        <input type="hidden" name="pipe_hydSel" id="pipehydSel" value="1"/>
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
                                                        <div class="panel-heading"> Input Parameters </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">         
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Height:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="height_max" id="height_max" class="form-control" onchange="onchange_Input_max(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_height_sel_max">
                                                                            <select class="form-control" id="height_sel_max" name="height_sel_max" onchange='cleanOut_max()'> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Operating Pressure [psi]:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="oper_press_max" id="oper_press_max" class="form-control" onchange="onchange_Input_max(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_oper_press_sel_max">
                                                                            <select class="form-control" id="oper_press_sel_max" name="oper_press_sel_max" onchange='cleanOut_max()'>
                                                                                <option value="psig">psig</option>
                                                                                <option value="psia">psia</option>
                                                                                <option value="kpag">kPa (g)</option>
                                                                                <option value="kpaa">kPa (a)</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Pipe outside diameter [in]:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="pipe_dia_max" id="pipe_dia_max" class="form-control" onchange="onchange_Input_max(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_pipe_dia_sel_max">
                                                                            <select class='form-control' id='pipe_dia_sel_max' name='pipe_dia_sel_max' onchange='cleanOut_max()'> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Wall Thickness [in]:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="pipe_wt_max" id="pipe_wt_max" class="form-control" onchange="onchange_Input_max(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_pipe_wt_sel_max">
                                                                            <select class='form-control' id='pipe_wt_sel_max' name='pipe_wt_sel_max' onchange='cleanOut_max()'> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Specified Minimum Yield Stress [psi]:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="min_yield_max" id="min_yield_max" class="form-control" onchange="onchange_Input_max(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_min_yield_sel_max">
                                                                            <select class='form-control' id='min_yield_sel_max' name='min_yield_sel_max' onchange='cleanOut_max()'> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Design Factor:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="text" name="fact_pipeop_max" id="fact_pipeop_max" class="form-control" onchange="onchange_Input_max(this)" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Longitudinal Join Factor:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="text" name="long_fact_max" id="long_fact_max" class="form-control" onchange="onchange_Input_max(this)" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Temperature Derating Factor:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="text" name="temp_fact_max" id="temp_fact_max" class="form-control" onchange="onchange_Input_max(this)" required>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Additional Uniform Load and Pipe:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="add_maxallo_max" id="add_maxallo_max" class="form-control" onchange="onchange_Input_max(this)" required>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-4" id = "div_add_maxallo_sel_max">
                                                                            <select class="form-control" id="add_maxallo_sel_max" name="add_maxallo_sel_max">
                                                                                <option value="lbs/ft">lb/ft</option>
                                                                                <option value="kg/m">kg/m</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Deflection Limited to:</label>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <input type="text" value="360" name="defl_lim_max" id="defl_lim_max" class="form-control" onchange="onchange_Input_max(this)" required>
                                                                        </div>
                                                                        <div class="col-md-6" id = "div_defl_lim_sel_max">
                                                                            <select class="form-control" id="defl_lim_sel_max" name="defl_lim_sel_max" onchange='changeDeflection()'>
                                                                                <option value="360">L/360</option>
                                                                                <option value="240">L/240</option>
                                                                                <option value="">Otro</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Maximum Test Pressure [psi]:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="max_press_max" id="max_press_max" class="form-control" onchange="onchange_Input_max(this)" required>
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_max_press_sel_max">
                                                                            <select class='form-control' id='max_press_sel_max' name='max_press_sel_max' onchange='cleanOut_max()'>
                                                                                <option value="psig">psig</option>
                                                                                <option value="psia">psia</option>
                                                                                <option value="kpag">kPa (g)</option>
                                                                                <option value="kpaa">kPa (a)</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Maximum Allowable % of SMYS for Testing [%]:</label>
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <input type="text" name="max_SMYS_max" id="max_SMYS_max" class="form-control" onchange="onchange_Input_max(this)" required>
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
                                                                        <div class="panel panel-default">
                                                                            <div class="panel-body">
                                                                                <label>MAOP - Maximum Allowable Operating Pressure [psig]:</label>
                                                                                <input type="text" name="max_allow" id="max_allow" class="form-control" readonly>
                                                                                <label>Hoop/Barlow Stress [psi]:</label>
                                                                                <input type="text" class="form-control" id="hoop_bar" name="hoop_bar" readonly>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-default">
                                                                            <div class="panel-body">
                                                                                <label>Maximum Allowable Bending Stress [psi]:</label>
                                                                                <input type="text" name="max_allow_bend" id="max_allow_bend" class="form-control" readonly>
                                                                                <label>Moment of Inertia [in^4]:</label>
                                                                                <input type="text" class="form-control" id="mom_iner" name="mom_iner" readonly>
                                                                                <label>Section Modulus [in<sup>3</sup>]:</label>
                                                                                <input type="text" name="sec_modu" id="sec_modu" class="form-control" readonly>
                                                                                <label>Bending Moment [lb-ft]:</label>
                                                                                <input type="text" class="form-control" id="bend_mom" name="bend_mom" readonly>
                                                                            </div>
                                                                        </div>    
                                                                        <div class="panel panel-default">
                                                                            <div class="panel-body">
                                                                                <label>Maximum Pipe Span Length Due to Bending [ft]:</label>
                                                                                <input type="text" name="max_span_bend" id="max_span_bend" class="form-control" readonly>
                                                                                <label>Deflection [in]:</label>
                                                                                <input type="text" name="defl_msb" id="defl_msb" class="form-control" readonly>
                                                                            </div>
                                                                        </div> 
                                                                        <div class="panel panel-default">
                                                                            <div class="panel-body">
                                                                                <label>Maximum Pipe Span Length Due to Deflection [ft]:</label>
                                                                                <input type="text" name="max_span_defl" id="max_span_defl" class="form-control" readonly>
                                                                                <label>Deflection [in]:</label>
                                                                                <input type="text" name="defl_msd" id="defl_msd" class="form-control" readonly>
                                                                            </div>
                                                                        </div>
                                                                        <div class="panel panel-default">
                                                                            <div class="panel-body">
                                                                                <label>MAXIMUM ALLOWABLE PIPE SPAN LENGTH [ft]:</label>
                                                                                <input type="text" name="max_allow_span_length" id="max_allow_span_length" class="form-control" readonly>
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
                            </div>  

                            <div class="col-lg-3">

                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        Actions
                                    </div>
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <input type="button" id="calculateBtn_max" name="calculateBtn_max" value="Calculate" onclick="calculate_max()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_max" name="saveBtn_max" value="Save" onclick="save_max()" class="btn btn-success btn-block">   
                                                <input type="button" id="reportBtn_max" name="reportBtn_max" value="Delete" onclick="reportReg_max()" class="btn btn-danger btn-block">          
                                                <input type="button" id="cleanAllBtn_max" name="cleanBtn_max" value="Clean All" onclick="cleanAll_max()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_max" name="cleanBtn_max" value="Clean Input Data" onclick="cleanIn_max()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_max" name="cleanBtn_max" value="Clean Output Data" onclick="cleanOut_max()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_max" name="opt_max"> 
                            <input type="hidden" id="id_max" name="id_max">  
                        </div>
                        <div id="load_Dialog_max" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_max" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_max" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_max" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_max" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_max" title="Delete record" style='display:none;'>
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
            function onchange_line_maxallo(value) {
                $("#pipehydSel").val(value);
            }
            function calculate_max() {
                //  alert("Entro");
                /*
                 * S se calcula 
                 * MOAP se calcula
                 * I se calcula
                 * 
                 */
                var variables = {
                    "height": $("#height_max").val(),
                    "D": $("#pipe_dia_max").val(),
                    "W": $("#ave_weight_max").val(),
                    "MOP": $("#oper_press_max").val(),
                    "t": $("#pipe_wt_max").val(),
                    "SMYS": $("#min_yield_max").val(),
                    "E": $("#youn__maxallo_max").val(),
                    "L": $("#long_fact_max").val(),
                    "d": $("#defl_lim_max").val(),
                    "temde": $("#temp_fact_max").val(),
                    "aul": $("#add_maxallo_max").val(),
                    "mtp": $("#max_press_max").val(),
                    "maSMYS": $("#max_SMYS_max").val(),
                    "F": $("#fact_pipeop_max").val(),
                    "Pmod": $("#pipehydSel").val()
                };
                
                var unidades = {
                    "height_sel_max": $("#height_sel_max").val().split(",")[1],
                    "pipe_dia_sel_max": $("#pipe_dia_sel_max").val().split(",")[1],
                    "oper_press_sel_max": $("#oper_press_sel_max").val(),
                    "min_yield_sel_max": $("#min_yield_sel_max").val().split(",")[1],
                    "pipe_wt_sel_max": $("#pipe_wt_sel_max").val().split(",")[1],
                    "max_press_sel_max": $("#max_press_sel_max").val(),
                    "add_maxallo_sel_max": $("#add_maxallo_sel_max").val()
                };
                var res = maximunallowable(variables, unidades);

                $("#max_allow").val(res[0]);
                $("#hoop_bar").val(res[1]);
                $("#max_allow_bend").val(res[2]);
                $("#mom_iner").val(res[3]);
                $("#sec_modu").val(res[4]);
                $("#bend_mom").val(res[5]);
                $("#max_span_bend").val(res[6]);
                $("#defl_msb").val(res[7]);
                $("#max_span_defl").val(res[8]);
                $("#defl_msd").val(res[9]);
                $("#max_allow_span_length").val(res[10]);
                //  show_OkDialog($("#calculate_Dialog_ipsmys"), "Proceso satisfactorio");


            }
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_max"),
                        $("#error_Dialog_max"));

                $("#opt_max").val("1");
                $('#api5l_max').attr('checked', 'checked');
                load_nps_sel_max("5l");
                load_grade_sel_max("gra5l");
                load_deratingf_sel_max();
                load_joinf_sel_max("jointf5l");
                load_desingf_sel_max();
                load_presf_sel_max();
                load_in_sel_max();
                load_in2_sel_max();
            });

            function load_in_sel_max() {
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
                        var newHtml = "<select class='form-control' id='height_sel_max' name='height_sel_max' onchange='cleanOut_max()'>" + data;
                        $("#div_height_sel_max").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_max"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_in2_sel_max() {
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
                        var newHtml = "<select class='form-control' id='pipe_dia_sel_max' name='pipe_dia_sel_max' onchange='cleanOut_max()'>" + data;
                        $("#div_pipe_dia_sel_max").html(newHtml);
                        
                        newHtml = "<select class='form-control' id='pipe_wt_sel_max' name='pipe_wt_sel_max' onchange='cleanOut_max()'>" + data;
                        $("#div_pipe_wt_sel_max").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_max"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function changeDeflection() {
                cleanOut_max();
                
                var newValue = $("#defl_lim_sel_max").val();
                $("#defl_lim_max").val(newValue);
            }
            
            function load_presf_sel_max() {
                var parametros = {
                    "combo": "presf",
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
                        var newHtml = "<select class='form-control' id='min_yield_sel_max' name='min_yield_sel_max' onchange='cleanOut_max()'>" + data;
                        $("#div_min_yield_sel_max").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_max"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_deratingf_sel_max() {
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
                        var newHtml = "<select class=\"form-control\" name=\"td_sel_max\" id=\"td_sel_max\" onchange=\"onchange_df_max()\">" + data;
                        $("#div_td_sel_max").html(newHtml);

                        $("#temp_fact_max").val($("#td_sel_max").val().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ma"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_form_max(id) {

                var parametros = {
                    "id": id,
                    "opcion": "4",
                    "from": "ppw"
                };

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        // cleanAll_max();
                        block("Cargado datos...");
                    },
                    success: function (data, status, request) {
                        if (data != null)
                        {
                            var tags = Object.keys(data.row);

                            for (var i = 0; i < tags.length; i++) {
                                if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "linepipe_max")
                                {
                                    $("#" + tags[i]).val(data.row[tags[i]]);
                                }
                            }

                            if (data.row["linepipe_max"] == "api5l_max") {
                                document.getElementById("api5l_max").checked = true;
                                load_grade_sel_max("gra5l");
                                load_joinf_sel_max("jointf5l");
                            } else {//astm_max
                                document.getElementById("astm_max").checked = true;
                                load_grade_sel_max("graastm");
                                load_joinf_sel_max("jointf");
                            }

                            $("#grade_sel_max").val(data.row["grade_sel_max"]);
                            $("#grade_max").val(data.row["grade_max"]);

                            $("#jf_sel_max").val(data.row["jf_sel_max"]);
                            $("#jf_max").val(data.row["jf_max"]);

                            $("#opt_max").val("2");
                            $("#id_max").val(data.row.id);
                        } else {
                            $("#opt_max").val("1");
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        $("#opt_max").val("1");
                        show_OkDialog($("#error_Dialog_max"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

           
            function load_temp_sel_max() {
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
                        var newHtml = "<select class=\"form-control\" name=\"tempd_sel_max\" id= \"tempd_sel_max\" onchange=\"cleanOut_max()\">" + data;
                        $("#div_tempd_sel_max").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_max"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_nps_sel_max(type) {
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
                        var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_max\" id= \"nominalps_sel_max\" onchange=\"onchange_nps_max()\">" + data;
                        $("#div_nominalps_sel_max").html(newHtml);
                        var res = $("#nominalps_sel_max option:selected").html();
                        $("#pipe_dia_max").val($("#nominalps_sel_max").val());
                        load_wt_sel_max();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_max"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_max() {
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_max").val(),
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
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_max\" id= \"wt_sel_max\" onchange=\"onchange_wt_max()\">" + data;
                        $("#div_wt_sel_max").html(newHtml);
                        $("#pipe_wt_max").val($("#wt_sel_max").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_max"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_press_sel_max() {
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
                        var newHtml = "<select class=\"form-control\" name=\"syms_sel_max\" id= \"syms_sel_max\" onchange=\"cleanOut_max()\">" + data;
                        $("#div_syms_sel_max").html(newHtml);

                        newHtml = "<select class=\"form-control\" name=\"mop_sel_max\" id= \"mop_sel_max\" onchange=\"cleanOut_max()\">" + data;
                        $("#div_mop_sel_max").html(newHtml);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_max"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_grade_sel_max(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"grade_sel_max\" id=\"grade_sel_max\" onchange=\"onchange_gra_max()\">" + data;
                        $("#div_grade_sel_max").html(newHtml);

                        var x = $("#grade_sel_max").val();
                        $("#min_yield_max").val(x.split(",")[1]);
                        /* var res =  $("#grade_sel_max option:selected").html();
                         $("#gra_pipeop_max").val(res); 
                         $("#yield_pipeop_max").val(x.split(",")[1]); */
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_max"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_joinf_sel_max(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"longitudinal_jf_max\" id=\"longitudinal_jf_max\" onchange=\"onchange_jf_max()\">" + data;
                        $("#div_jf_sel_max").html(newHtml);
                        $("#long_fact_max").val($("#longitudinal_jf_max").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_max"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_desingf_sel_max() {
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
                        var newHtml = "<select class=\"form-control\" name=\"design_factor_sel_max\" id=\"design_factor_sel_max\" onchange=\"onchange_defa_max()\">" + data;
                        $("#div_df_sel_max").html(newHtml);

                        var x = $("#design_factor_sel_max").val();
                        $("#fact_pipeop_max").val(x.split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_max"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_Input_max(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_max();
            }

            function onchange_nps_max() {
                var res = $("#nominalps_sel_max option:selected").html();
                $("#pipe_dia_max").val($("#nominalps_sel_max").val());
                load_wt_sel_max();
            }

            function onchange_wt_max() {
                $("#pipe_wt_max").val($("#wt_sel_max").val().split(",")[1]);
            }

            function onchange_gra_max() {
                var x = $("#grade_sel_max").val();
                $("#min_yield_max").val(x.split(",")[1]);
                /* var res =  $("#grade_sel_max option:selected").html();
                 $("#gra_pipeop_max").val(x.split(",")[1]); */
                cleanOut_max();
            }
            function onchange_defli_max() {
                var x = $("#defl_lim_sel_max").val();
                $("#defl_lim_max").val(x.split(",")[1]);
                cleanOut_max();
            }

            function onchange_jf_max() {
                $("#long_fact_max").val($("#longitudinal_jf_max").val().split(",")[1]);
                cleanOut_max();
            }

            function onchange_df_max() {
                $("#temp_fact_max").val($("#td_sel_max").val().split(",")[1]);
                cleanOut_max();
            }

            function onchange_defa_max() {
                $("#fact_pipeop_max").val($("#design_factor_sel_max").val().split(",")[1]);
                cleanOut_max();
            }

        function cleanOut_max() {
            $("[readonly]").val("");
        }
        </script>

</html>