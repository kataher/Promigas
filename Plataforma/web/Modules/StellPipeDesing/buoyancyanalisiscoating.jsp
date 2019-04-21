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
                                <h2><strong>Steel Pipe Design:</strong>  Buoyancy Analysis & Concrete Coating Requeriments</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_basc()">
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
                                                <div id="div-table_basc"></div>
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
                                <input  class="form-control" type="text" id="description_basc" name="description_basc"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_basc" name="proyects_sel_basc"> </select>
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
                                                                            Datos de Tubería
                                                                        </div>
                                                                        <div class="panel-body">
                                                                            <div class="form-group">
                                                                                <div class="col-lg-12">

                                                                                    <label>Nominal pipe size:</label>

                                                                                    <div id="div_nomps_sel_basc">
                                                                                        <select class="form-control" id="div_nomps_sel_basc" name="div_nomps_sel_basc"> </select>
                                                                                    </div>

                                                                                </div>
                                                                                <div class="col-lg-12">

                                                                                    <label>Wall Thickness [.in]:</label>

                                                                                    <div id="div_wallt_sel_basc">
                                                                                        <select class="form-control" id="wthi_sel_basc" name="wthi_sel_basc"> </select>     
                                                                                    </div>

                                                                                </div>
                                                                            </div> 
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Water Density:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" value="62.40" id="water_dens" name="water_dens" onchange='onchange_Input_basc(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_water_dens_sel_basc">
                                                                            <select class="form-control" id="water_dens_sel_basc" name="water_dens_sel_basc" onchange='cleanOut_basc()'> 
                                                                                <option value="lbft3">lb/ft3</option>
                                                                                <option value="kgm3">kg/m3</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Concrete Coating Density:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" value="143" id="conc_water_dens" name="conc_water_dens" onchange='onchange_Input_basc(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_ccoat_dens_sel_basc">
                                                                            <select class="form-control" id="ccoat_dens_sel_basc" name="ccoat_dens_sel_basc" onchange='cleanOut_basc()'> 
                                                                                <option value="lbft3">lb/ft3</option>
                                                                                <option value="kgm3">kg/m3</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Corrosion Coating Density:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" value="71.80" id="corr_coa" name="corr_coa" onchange='onchange_Input_basc(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_corr_dens_sel_basc">
                                                                            <select class="form-control" id="corr_dens_sel_basc" name="corr_dens_sel_basc" onchange='cleanOut_basc()'> 
                                                                                <option value="lbft3">lb/ft3</option>
                                                                                <option value="kgm3">kg/m3</option>
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
                                                        <div class="panel-heading"> Input Parameters </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">                                    
                                                                    <div class="form-group">
                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Nominal Outside Diameter:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="nomout_basc" name="nomout_basc" onchange='onchange_Input_basc(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_nomout_sel_basc">
                                                                                <select class="form-control" id="nomout_sel_basc" name="nomout_sel_basc" onchange='cleanOut_basc()'> 
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Nominal Wall Thickness:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="nom_wall_basc" name="nom_wall_basc" onchange='onchange_Input_basc(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_nom_wall_sel_basc">
                                                                                <select class="form-control" id="nom_wall_sel_basc" name="nom_wall_sel_basc" onchange='cleanOut_basc()'> 
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Design Specific Gravity Ratio:</label>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <input type="text" class="form-control" id="spec_gra_basc" name="spec_gra_basc" onchange='onchange_Input_basc(this)' required> 
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Corrosion Coating Thickness:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="corr_coa_thick_basc" name="corr_coa_thick_basc" onchange='onchange_Input_basc(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_corr_coa_thick_sel_basc">
                                                                                <select class="form-control" id="corr_coa_thick_sel_basc" name="corr_coa_thick_sel_basc" onchange='cleanOut_basc()'> 
                                                                                    <option>MIL</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Pipe Length between joins:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" class="form-control" id="pipe_lenght_basc" name="pipe_lenght_basc" onchange='onchange_Input_basc(this)' required> 
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_pipe_len_sel_basc">
                                                                                <select class="form-control" id="pipe_len_sel_basc" name="pipe_len_sel_basc" onchange='cleanOut_basc()'> 
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
                                                                            <label>Pipe Weight:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="pipe_weight_basc" id="pipe_weight_basc" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="weight_long" data-output-value="pipe_weight_basc" id="pipe_weight_sel_basc">
                                                                                <option value="lbs/ft">lbs/ft</option>
                                                                                <option value="kg/m">kg/m</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        
                                                                        
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Total Volume:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="total_vol_basc" id="total_vol_basc" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="volume" data-output-value="total_vol_basc" id="total_vol_sel_basc">
                                                                                <option value="ft3">ft3</option>
                                                                                <option value="m3">m3</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Corrosion Coating Volume:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="corr_coat_vol_basc" id="corr_coat_vol_basc" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="volume" data-output-value="corr_coat_vol_basc">
                                                                                <option value="ft3">ft3</option>
                                                                                <option value="m3">m3</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Concrete Coating Thickness:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="conc_coat_thick_basc" id="conc_coat_thick_basc" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="long" data-output-value="conc_coat_thick_basc">
                                                                                <option value="in">in</option>
                                                                                <option value="mm">mm</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Concrete Coating Volume:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="max_stress_basc" id="max_stress_basc" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="volume" data-output-value="max_stress_basc">
                                                                                <option value="ft3">ft3</option>
                                                                                <option value="m3">m3</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Weight of Pipe in Air:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="weight_pipe_air_basc" id="weight_pipe_air_basc" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="weight_long" data-output-value="weight_pipe_air_basc">
                                                                                <option value="lbs/ft">lbs/ft</option>
                                                                                <option value="kg/m">kg/m</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Weight of Water Displaced:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="weight_wat_dis_basc" id="weight_wat_dis_basc" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="weight_long" data-output-value="weight_wat_dis_basc">
                                                                                <option value="lbs/ft">lbs/ft</option>
                                                                                <option value="kg/m">kg/m</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">
                                                                            <label>Weight of Submerged Pipe:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="weight_sugm_pipe_basc" id="weight_sugm_pipe_basc" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="weight_long" data-output-value="weight_sugm_pipe_basc">
                                                                                <option value="lbs/ft">lbs/ft</option>
                                                                                <option value="kg/m">kg/m</option>
                                                                            </select>
                                                                        </div>
                                                                        
                                                                        <div class="col-md-12">                      
                                                                            <label>Weight per Joint:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" name="weight_joint_basc" id="weight_joint_basc" class="form-control" readonly> 
                                                                        </div>
                                                                        <div class="col-md-4">
                                                                            <select class="form-control output-unit-select" data-output-type="weight" data-output-value="weight_joint_basc">
                                                                                <option value="lbs">lbs/joint</option>
                                                                                <option value="kg">kg/joint</option>
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

                                                <input type="button" id="calculateBtn_basc" name="calculateBtn_basc" value="Calculate" onclick="calculate_basc()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_basc" name="saveBtn_basc" value="Save" onclick="save_basc()" class="btn btn-success btn-block">   
                                                <input type="button" id="reportBtn_basc" name="reportBtn_basc" value="Delete" onclick="reportReg_basc()" class="btn btn-danger btn-block">          
                                                <input type="button" id="cleanAllBtn_basc" name="cleanBtn_basc" value="Clean All" onclick="cleanAll_basc()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_basc" name="cleanBtn_basc" value="Clean Input Data" onclick="cleanIn_basc()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_basc" name="cleanBtn_basc" value="Clean Output Data" onclick="cleanOut_basc()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="opt_basc" name="opt_basc"> 
                            <input type="hidden" id="id_basc" name="id_basc">
                        </div>
                        <div id="load_Dialog_basc" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_basc" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_basc" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_basc" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_basc" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_basc" title="Delete record" style='display:none;'>
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
                        $("#proyects_sel_basc"),
                        $("#error_Dialog_basc"));

                $("#opt_basc").val("1");
                load_np_sel_basc("npsn");
                load_in_sel_basc();
            });

            function load_in_sel_basc() {
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
                        var newHtml = "<select class='form-control' name='nom_wall_sel_basc' id= 'nom_wall_sel_basc' onchange='cleanOut_basc()'>" + data;
                        $("#div_nom_wall_sel_basc").html(newHtml);

                        newHtml = "<select class='form-control' name='nomout_sel_basc' id= 'nomout_sel_basc' onchange='cleanOut_basc()'>" + data;
                        $("#div_nomout_sel_basc").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_basc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function calculate_basc() {
                var variables = {
                    "water_dens": $("#water_dens").val(),
                    "conc_water_dens": $("#conc_water_dens").val(),
                    "corr_coa": $("#corr_coa").val(),
                    "nomout_basc": $("#nomout_basc").val(),
                    "nom_wall_basc": $("#nom_wall_basc").val(),
                    "spec_gra_basc": $("#spec_gra_basc").val(),
                    "corr_coa_thick_basc": $("#corr_coa_thick_basc").val(),
                    "pipe_lenght_basc": $("#pipe_lenght_basc").val(),

                };
                
                var unidades = {
                    "pipe_len_sel_basc": $("#pipe_len_sel_basc").val(),
                    "nom_wall_sel_basc": $("#nom_wall_sel_basc").val().split(",")[1],
                    "nomout_sel_basc": $("#nomout_sel_basc").val().split(",")[1],
                    "water_dens_sel_basc": $("#water_dens_sel_basc").val(),
                    "ccoat_dens_sel_basc": $("#ccoat_dens_sel_basc").val(),
                    "corr_dens_sel_basc": $("#corr_dens_sel_basc").val()
                    
                };
                
                var res = buoyancy_analisis_form(variables, unidades);

                $("#pipe_weight_basc").val(res[0]);
                $("#total_vol_basc").val(res[1]);
                $("#corr_coat_vol_basc").val(res[2]);
                $("#conc_coat_thick_basc").val(res[3]);
                $("#max_stress_basc").val(res[4]);
                $("#weight_pipe_air_basc").val(res[5]);
                $("#weight_wat_dis_basc").val(res[6]);
                $("#weight_sugm_pipe_basc").val(res[7]);
                $("#weight_joint_basc").val(res[8]);










                show_OkDialog($("#calculate_Dialog_basc"), "Proceso satisfactorio");
            }

            function load_np_sel_basc(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"nomps_sel_basc\" id= \"nomps_sel_basc\" onchange=\"onchange_nps_basc()\">" + data;

                        $("#div_nomps_sel_basc").html(newHtml);
                        var po = $("#nomps_sel_basc").val().trim().split(",")[1];
                        $("#nomout").val(po);
                        load_wt_sel_basc();
                        onchange_nps_basc();
                        onchange_wt_basc();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_basc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_basc() {
                var idOp = $("#nomps_sel_basc").val();
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

                        var newHtml = "<select class=\"form-control\" name=\"wthi_sel_basc\" id= \"wthi_sel_basc\" onchange=\"onchange_wt_basc()\">" + data;

                        $("#div_wallt_sel_basc").html(newHtml);


                        if (data.trim() != "") {
                            var val = $("#wthi_sel_basc").val().trim().split(",");
                            $("#wall_pipeop_basc").val(val[1]);
                        }

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_basc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_nps_basc() {
                var po = $("#nomps_sel_basc option:selected");
                $("#nom_pipe_basc").val(po.html());
                $("#nomout_basc").val(po.val());
                load_wt_sel_basc();
                cleanOut_basc();
            }
            function onchange_wt_basc() {
                var val = $("#wthi_sel_basc").val().trim().split(",");
                $("#nom_wall_basc").val(val[1]);
                cleanOut_basc();
            }

            function cleanOut_basc() {
                $("#pipe_weight_basc").val("");
                $("#total_vol_basc").val("");
                $("#corr_coat_vol_basc").val("");
                $("#conc_coat_thick_basc").val("");
                $("#max_stress_basc").val("");
                $("#weight_pipe_air_basc").val("");
                $("#weight_wat_dis_basc").val("");
                $("#weight_sugm_pipe_basc").val("");
                $("#weight_joint_basc").val("");
            }

            function cleanIn_basc() {
                $("#nomout_basc").val("");
                $("#nom_wall_basc").val("");
                $("#spec_gra_basc").val("");
                $("#corr_coa_thick_basc").val("");
                $("#pipe_lenght_basc").val("");
            }

            function cleanAll_basc() {
                cleanOut_basc();
                cleanIn_basc();
                $("#water_dens").val("");
                $("#conc_water_dens").val("");
                $("#corr_coa").val("");
            }
            
            function onchange_Input_basc(inp) {

                var sw = validateDecimal(inp.value);

                if (sw !== true) {
                    inp.value = "";
                }

                onchange_Input_zero(inp);
                cleanOut_basc();
            }
        </script> 

</html>