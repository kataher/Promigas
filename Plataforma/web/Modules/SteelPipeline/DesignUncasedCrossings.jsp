<%-- 
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <jsp:include page="../../head.jsp" />
    <head>
        <%@include file="../../includehead2.html" %>
    </head>
    <body>
        <div class="row">
            <div class="col-lg-9">
                <h2><strong>Steel Pipeline Crossings: </strong> Design of Uncased Crossings</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_duc()">
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
                                <div id="div-table_duc"></div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- FIN MODAL -->
            </div>

            <div class="col-lg-9">
                Description: 
                <input  class="form-control" type="text" id="description_duc" name="description_duc"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_duc" name="proyects_sel_duc"> </select>
            </div>
        </div>
        <hr> 
        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Datos de Tuberia y Lugar
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">

                                    <div id="Lpipe">
                                        <h3>Line Pipe API 5L</h3>
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Nominal Pipe Size:</label> 
                                            </div>
                                            <div class="col-md-12">
                                                <div id="div_nominalps_sel_duc">
                                                    <select class="form-control" id="nominalps_sel_duc" name="nominalps_sel_duc"> </select></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-lg-12">                      
                                                <label>Wall Thickness [.in]:</label>
                                            </div> 
                                            <div class="col-lg-12" id="div_wt_sel_duc">
                                                <select class="form-control" id="wt_sel_duc" name="wt_sel_duc"> </select>
                                            </div>
                                        </div> 
                                        <div class="form-group">
                                            <div class="col-md-12">
                                                <label>Grade:</label> 
                                            </div>
                                            <div class="col-md-12">
                                                <div id="div_grade_sel_duc">
                                                    <select class="form-control" id="grade_sel_duc" name="grade_sel_duc"> </select>
                                                </div>
                                            </div>
                                        </div>
                                        <label>F - Design Factor:</label>
                                        <div id="div_df_sel_duc">
                                            <select class="form-control" id="design_factor_sel_duc" name="design_factor_sel_duc"> </select>
                                        </div>
                                        <br/>
                                        <label>E - Longitudinal Joint Factor:</label>
                                        <div id="div_jf_sel_duc">
                                            <select class="form-control" id="longitudinal_jf_duc" name="longitudinal_jf_duc"> </select>
                                        </div>
                                        <br/>
                                        <label>T - Temperature Derating Factor:</label>
                                        <div  id="div_td_sel_duc">                    
                                            <select class="form-control" id="temperature_duc" name="temperature_duc"> </select>
                                        </div>
                                        <hr/>
                                    </div>    

                                    <label>Uniform Support Under-Pipe and Crossing Condition:</label>
                                    <div  id="div_temperature_sel_duc">                    
                                        <select class="form-control" id="uniform_duc" name="uniform_duc"> </select>
                                    </div>
                                    <br/>
                                    <label>Soil Type:</label>
                                    <select class="form-control">
                                        <option>Granular filling material before tamping or setting</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                    </select>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    Impact Factor
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">
                                    <div class="radio" >
                                        <label><input type="radio" id="Coption1_duc" name="Coption_duc" onclick="changePav(1)">Non-Rigid Pavement</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" id="Coption2_duc" name="Coption_duc" onclick="changePav(2)" checked>Rigid Pavement</label>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Datos Operacionales y de la Tuberia
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <input class="form-control" id="paviment_duc" name="paviment_duc" type="hidden" value="0" required>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Nominal Pipe Size:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="nominalPipeSize_duc" id="nominalPipeSize_duc" class="form-control" required>
                                    </div>
                                    <div class="col-md-4" id = "div_nominalPipeSize_sel_duc">
                                        <select class="form-control" id="nominalPipeSize_sel_duc" name="nominalPipeSize_sel_duc" onchange='cleanOut_duc()'> </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Nominal Outside Diameter:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="nominalOutsideDiameter_duc" id="nominalOutsideDiameter_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                    <div class="col-md-4" id = "div_nominalOutsideDiameter_sel_duc">
                                        <select class="form-control" id="nominalOutsideDiameter_sel_duc" name="nominalOutsideDiameter_sel_duc" onchange='cleanOut_duc()'> </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Nominal Wall Thickness:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="nominalWallThickness_duc" id="nominalWallThickness_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                    <div class="col-md-4" id = "div_nominalWallThickness_sel_duc">
                                        <select class="form-control" id="nominalWallThickness_sel_duc" name="nominalWallThickness_sel_duc" onchange='cleanOut_duc()'> </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Grade:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="Grade_duc" id="Grade_duc" class="form-control" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Specified Minimum Yield Strength:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="specifiedMinimumYieldStrength_duc" id="specifiedMinimumYieldStrength_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                    <div class="col-md-4" id = "div_specifiedMinimumYieldStrength_sel_duc">
                                        <select class="form-control" id="specifiedMinimumYieldStrength_sel_duc" name="specifiedMinimumYieldStrength_sel_duc" onchange='cleanOut_duc()'> </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Design Factor:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="designFactor_duc" id="designFactor_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Longitudinal Joint Factor:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="longitudinalJointFactor_duc" id="longitudinalJointFactor_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Temperature Derating Factor:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="temperatureDeratingFactor_duc" id="temperatureDeratingFactor_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Modulus of Elasticity for Steel:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="modulusOfElasticityForSteel_duc" id="modulusOfElasticityForSteel_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                    <div class="col-md-4" id = "div_modulusOfElasticityForSteel_sel_duc">
                                        <select class="form-control" id="modulusOfElasticityForSteel_sel_duc" name="modulusOfElasticityForSteel_sel_duc" onchange='cleanOut_duc()'> </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Unit of Weight of Soil:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="unitOfWeightOfSoil_duc" id="unitOfWeightOfSoil_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Deflection Parameter:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="deflectionParameter_duc" id="deflectionParameter_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Bending Parameter:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="bendingParameter_duc" id="bendingParameter_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Impact Factor:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="impactFactor_duc" id="impactFactor_duc" value="1" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Load Coefficient:</label>
                                    </div>
                                    <div class="col-md-12">
                                        <input type="text" name="load_coeff_duc" id="load_coeff_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <div class="col-lg-4">
            <div class="panel panel-default"> 
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Pipe Internal Pressure:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="pipeInternalPressure_duc" id="pipeInternalPressure_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                    <div class="col-md-4" id = "div_pipeInternalPressure_sel_duc">
                                        <select class="form-control" id="pipeInternalPressure_sel_duc" name="pipeInternalPressure_sel_duc" onchange='cleanOut_duc()'> </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Wheel Load:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="wheelLoad_duc" id="wheelLoad_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                    <div class="col-md-4" id = "div_wheelLoad_sel_duc">
                                        <select class="form-control" id="wheelLoad_sel_duc" name="wheelLoad_sel_duc" onchange='cleanOut_duc()'> </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Width of Pipe Trench or Diameter of Bore:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="widthOfPipeTrenchOrDiameterOfBore_duc" id="widthOfPipeTrenchOrDiameterOfBore_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                    <div class="col-md-4" id = "div_widthOfPipeTrenchOrDiameterOfBore_sel_duc">
                                        <select class="form-control" id="widthOfPipeTrenchOrDiameterOfBore_sel_duc" name="widthOfPipeTrenchOrDiameterOfBore_sel_duc" onchange='cleanOut_duc()'> </select>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12">
                                        <label>Height of Soil over Pipe:</label>
                                    </div>
                                    <div class="col-md-8">
                                        <input type="text" name="heightOfSoilOverPipe_duc" id="heightOfSoilOverPipe_duc" class="form-control" onchange="onchange_Input_duc(this)" required>
                                    </div>
                                    <div class="col-md-4" id = "div_heightOfSoilOverPipe_sel_duc">
                                        <select class="form-control" id="heightOfSoilOverPipe_sel_duc" name="heightOfSoilOverPipe_sel_duc" onchange='cleanOut_duc()'> </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>    
            <div class="panel panel-default">
                <div class="panel-heading">
                    Results
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">
                                    <label>Load Coefficient:</label>
                                    <input class="form-control" id="loadCoefficient_duc" name="loadCoefficient_duc" type="text" required readonly>
                                    <br/>
                                    <label>Total External Load:</label>
                                    <input class="form-control" id="totalExteneralLoad_duc" name="totalExteneralLoad_duc" type="text" required  readonly>
                                    <br/>
                                    <label>Hoop Stress due to Internal Pressure:</label>
                                    <input class="form-control" id="hoopStressDueToInternalPressure_duc" name="hoopStressDueToInternalPressure_duc" type="text" required readonly>
                                    <br/>
                                    <label>Hoop Stress due to External Loading:</label>
                                    <input class="form-control" id="hoopStressDueToIExternalLoading_duc" name="hoopStressDueToIExternalLoading_duc" type="text" required readonly>
                                    <br/>
                                    <label><strong>Total Calculated Combined Stress</strong></label>
                                    <input class="form-control" id="totalCalculatedCombinedStress_duc" name="totalCalculatedCombinedStress_duc" type="text" required readonly>
                                    <br/>
                                    <p><strong>Note: The total calculated combined stress should not exceed 100% of SMYS</strong></p>
                                    <br/>
                                    <input type="button" value="Calculate" id="calculatebtn_duc" name="calculatebtn_duc" onclick="calculatebtn_duc1()" class="btn btn-info btn-block">
                                    <input type="button" value="Save" id="savebtn_duc" name="savebtn_duc" class="btn btn-success btn-block">   
                                    <input type="button" value="Reportar" id="report_duc" name="report_duc" class="btn btn-warning btn-block">   
                                </div>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>
        </div>
        <script>
            $(document).ready(function () {
                getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_duc"),
                        $("#error_Dialog_duc"));

                $("#opt_duc").val("1");
                $('#api5l_duc').attr('checked', 'checked');
                load_nps_sel_duc("5l");
                load_grade_sel_duc("gra5l");
                /*load_defli_sel_duc("dlt");*/
                load_deratingf_sel_duc();
                load_joinf_sel_duc("jointf5l");
                load_desingf_sel_duc();
                //load_uniform_sel_duc();
                load_in_sel_duc();
                load_press_sel_duc();
                load_presf_sel_duc();
            });

            function load_in_sel_duc() {
                var parametros = {
                    "combo": "in",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: true,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' id='nominalPipeSize_sel_duc' name='nominalPipeSize_sel_duc' onchange='cleanOut_duc()'>" + data;
                        $("#div_nominalPipeSize_sel_duc").html(newHtml);

                        newHtml = "<select class='form-control' id='nominalOutsideDiameter_sel_duc' name='nominalOutsideDiameter_sel_duc' onchange='cleanOut_duc()'>" + data;
                        $("#div_nominalOutsideDiameter_sel_duc").html(newHtml);

                        newHtml = "<select class='form-control' id='nominalWallThickness_sel_duc' name='nominalWallThickness_sel_duc' onchange='cleanOut_duc()'>" + data;
                        $("#div_nominalWallThickness_sel_duc").html(newHtml);

                        newHtml = "<select class='form-control' id='widthOfPipeTrenchOrDiameterOfBore_sel_duc' name='widthOfPipeTrenchOrDiameterOfBore_sel_duc' onchange='cleanOut_duc()'>" + data;
                        $("#div_widthOfPipeTrenchOrDiameterOfBore_sel_duc").html(newHtml);

                        newHtml = "<select class='form-control' id='heightOfSoilOverPipe_sel_duc' name='heightOfSoilOverPipe_sel_duc' onchange='cleanOut_duc()'>" + data;
                        $("#div_heightOfSoilOverPipe_sel_duc").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function calculatebtn_duc1() {
                var parameter = {
                    "D": $("#nominalOutsideDiameter_duc").val(),
                    "t": $("#nominalWallThickness_duc").val(),
                    "SMYS": $("#specifiedMinimumYieldStrength_duc").val(),
                    "E": $("#modulusOfElasticityForSteel_duc").val(),
                    "g": $("#unitOfWeightOfSoil_duc").val(),
                    "Kz": $("#deflectionParameter_duc").val(),
                    "Kb": $("#bendingParameter_duc").val(),
                    "I": $("#impactFactor_duc").val(),
                    "P": $("#pipeInternalPressure_duc").val(),
                    "L": $("#wheelLoad_duc").val(),
                    "Bd": $("#widthOfPipeTrenchOrDiameterOfBore_duc").val(),
                    "H": $("#heightOfSoilOverPipe_duc").val(),
                    "Cd": $("#load_coeff_duc").val()
                };

                var unidades = {
                    "nominalOutsideDiameter_sel_duc": $("#nominalOutsideDiameter_sel_duc").val(),
                    "nominalWallThickness_sel_duc": $("#nominalWallThickness_sel_duc").val(),
                    "specifiedMinimumYieldStrength_sel_duc": $("#specifiedMinimumYieldStrength_sel_duc").val(),
                    "modulusOfElasticityForSteel_sel_duc": $("#modulusOfElasticityForSteel_sel_duc").val(),
                    "pipeInternalPressure_sel_duc": $("#pipeInternalPressure_sel_duc").val(),
                    "widthOfPipeTrenchOrDiameterOfBore_sel_duc": $("#widthOfPipeTrenchOrDiameterOfBore_sel_duc").val(),
                    "heightOfSoilOverPipe_sel_duc": $("#heightOfSoilOverPipe_sel_duc").val()
                };

                var res = designuncascro(parameter, unidades);

                $("#loadCoefficient_duc").val(res[0]);
                $("#totalExteneralLoad_duc").val(res[1]);
                $("#hoopStressDueToInternalPressure_duc").val(res[2]);
                $("#hoopStressDueToIExternalLoading_duc").val(res[3]);
                $("#totalCalculatedCombinedStress_duc").val(res[4]);
            }

            function load_deratingf_sel_duc() {
                var parametros = {
                    "combo": "deratingf",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"td_sel_ma\" id=\"td_sel_ma\" onchange=\"onchange_df_duc()\">" + data;
                        $("#div_td_sel_duc").html(newHtml);

                        $("#temp_fact_duc").val($("#td_sel_duc").val().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ma"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_temp_sel_duc() {
                var parametros = {
                    "combo": "temp",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"tempd_sel_duc\" id= \"tempd_sel_duc\" onchange=\"cleanOut_duc()\">" + data;
                        $("#div_tempd_sel_duc").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_nps_sel_duc(type) {
                var parametros = {
                    "combo": "npsn",
                    "type": type,
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_duc\" id= \"nominalps_sel_duc\" onchange=\"onchange_nps_duc()\">" + data;
                        $("#div_nominalps_sel_duc").html(newHtml);
                        var res = $("#nominalps_sel_duc option:selected").html();
                        $("#nominalPipeSize_duc").val(res);
                        $("#nominalOutsideDiameter_duc").val($("#nominalps_sel_duc").val());
                        load_wt_sel_duc();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_duc() {
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_duc").val(),
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_duc\" id= \"wt_sel_duc\" onchange=\"onchange_wt_duc()\">" + data;
                        $("#div_wt_sel_duc").html(newHtml);
                        $("#nominalWallThickness_duc").val($("#wt_sel_duc").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_press_sel_duc() {
                var parametros = {
                    "combo": "pres",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' id='pipeInternalPressure_sel_duc' name='pipeInternalPressure_sel_duc' onchange='cleanOut_duc()'>" + data;
                        $("#div_pipeInternalPressure_sel_duc").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_presf_sel_duc() {
                var parametros = {
                    "combo": "presf",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class='form-control' id='specifiedMinimumYieldStrength_sel_duc' name='specifiedMinimumYieldStrength_sel_duc' onchange='cleanOut_duc()'>" + data;
                        $("#div_specifiedMinimumYieldStrength_sel_duc").html(newHtml);

                        newHtml = "<select class='form-control' id='modulusOfElasticityForSteel_sel_duc' name='modulusOfElasticityForSteel_sel_duc' onchange='cleanOut_duc()'>" + data;
                        $("#div_modulusOfElasticityForSteel_sel_duc").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_deratingf_sel_duc() {
                var parametros = {
                    "combo": "deratingf",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"td_sel_duc\" id=\"td_sel_duc\" onchange=\"onchange_df_duc()\">" + data;
                        $("#div_td_sel_duc").html(newHtml);
                        $("#temperatureDeratingFactor_duc").val($("#td_sel_duc").val().split(",")[1]);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_grade_sel_duc(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    async: false,
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"grade_sel_duc\" id=\"grade_sel_duc\" onchange=\"onchange_gra_duc()\">" + data;
                        $("#div_grade_sel_duc").html(newHtml);

                        var x = $("#grade_sel_duc").val();
                        $("#specifiedMinimumYieldStrength_duc").val(x.split(",")[1]);
                        var res = $("#grade_sel_duc option:selected").html();
                        $("#Grade_duc").val(res);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_defli_sel_duc(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    async: false,
                    data: parametros,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"defli_sel_duc\" id=\"defli_sel_duc\" onchange=\"onchange_defli_duc()\">" + data;
                        $("#div_defli_sel_duc").html(newHtml);

                        var x = $("#defli_sel_duc").val();
                        $("#defl_lim_duc").val(x.split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_joinf_sel_duc(idcombo) {
                var parametros = {
                    "combo": idcombo,
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"longitudinal_jf_duc\" id=\"longitudinal_jf_duc\" onchange=\"onchange_jf_duc()\">" + data;
                        $("#div_jf_sel_duc").html(newHtml);
                        $("#longitudinalJointFactor_duc").val($("#longitudinal_jf_duc").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_uniform_sel_duc() {
                var parametros = {
                    "combo": "usucc",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"uniform_duc\" id=\"uniform_duc\" onchange=\"onchange_uniform_duc()\">" + data;
                        $("#div_temperature_sel_duc").html(newHtml);

                        var x = $("#uniform_duc").val();

                        $("#deflectionParameter_duc").val(x.split(",")[1]);
                        $("#bendingParameter_duc").val(x.split(",")[2]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_desingf_sel_duc() {
                var parametros = {
                    "combo": "desingf2",
                    "opcion": "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        var newHtml = "<select class=\"form-control\" name=\"design_factor_sel_duc\" id=\"design_factor_sel_duc\" onchange=\"onchange_defa_duc()\">" + data;
                        $("#div_df_sel_duc").html(newHtml);

                        var x = $("#design_factor_sel_duc").val();
                        $("#designFactor_duc").val(x.split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_Input_duc(inp) {

                var sw = validateDecimal(inp.value);

                if (sw != true) {
                    inp.value = "";
                }
                onchange_Input_zero(inp);
                // cleanOut_duc();

            }

            function onchange_nps_duc() {
                var res = $("#nominalps_sel_duc option:selected").html();
                $("#nominalPipeSize_duc").val(res);
                $("#nominalOutsideDiameter_duc").val($("#nominalps_sel_duc").val());
                load_wt_sel_duc();
            }

            function onchange_wt_duc() {
                $("#nominalWallThickness_duc").val($("#wt_sel_duc").val().split(",")[1]);
            }

            function onchange_gra_duc() {
                var x = $("#grade_sel_duc").val();
                $("#specifiedMinimumYieldStrength_duc").val(x.split(",")[1]);
                var res = $("#grade_sel_duc option:selected").html();
                $("#Grade_duc").val(res);
            }
            function onchange_defli_duc() {
                var x = $("#defli_sel_duc").val();
                $("#defl_lim_duc").val(x.split(",")[1]);
                /* var res =  $("#grade_sel_duc option:selected").html();
                 $("#gra_pipeop_duc").val(x.split(",")[1]); */
                // cleanOut_duc();
            }

            function onchange_jf_duc() {
                $("#longitudinalJointFactor_duc").val($("#longitudinal_jf_duc").val().split(",")[1]);
                //cleanOut_duc();
            }

            function onchange_df_duc() {
                $("#temperatureDeratingFactor_duc").val($("#td_sel_duc").val().split(",")[1]);
                //cleanOut_duc();
            }

            function onchange_defa_duc() {
                $("#designFactor_duc").val($("#design_factor_sel_duc").val().split(",")[1]);
                // cleanOut_duc();
            }
            function onchange_uniform_duc() {
                var x = $("#uniform_duc").val();

                $("#deflectionParameter_duc").val(x.split(",")[1]);
                $("#bendingParameter_duc").val(x.split(",")[2]);
            }
            function changePav(val) {
                if (val == 1) {
                    // $("#paviment_duc").val("1.5");
                    $("#impactFactor_duc").val("1.5");
                } else {
                    $("#impactFactor_duc").val("1");
                }
            }
        </script>
    </body>
</html>