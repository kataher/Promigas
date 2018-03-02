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
                                        <label><input type="radio" id="Coption2_duc" name="Coption_duc" onclick="changePav(2)">Rigid Pavement</label>
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
                                <div class="form-group">
                                    <input class="form-control" id="paviment_duc" name="paviment_duc" type="hidden" value="0" required/>
                                    <label>Nominal Pipe Size:</label>
                                    <input class="form-control" id="nominalPipeSize_duc" name="nominalPipeSize_duc" type="text" required/>
                                    <br/>
                                    <label>Nominal Outside Diameter:</label>
                                    <input class="form-control" id="nominalOutsideDiameter_duc" name="nominalOutsideDiameter_duc" type="text" required/>
                                    <br/>
                                    <label>Nominal Wall Thickness:</label>
                                    <input class="form-control" id="nominalWallThickness_duc" name="nominalWallThickness_duc" type="text" required/>
                                    <br/>
                                    <label>Grade:</label>
                                    <input class="form-control" id="Grade_duc" name="Grade_duc" type="text" required/>
                                    <br/>
                                    <label>Specified Minimum Yield Strength:</label>
                                    <input class="form-control" id="specifiedMinimumYieldStrength_duc" name="specifiedMinimumYieldStrength_duc" type="text" required/>
                                    <br/>
                                    <label>Design Factor:</label>
                                    <input class="form-control" id="designFactor_duc" name="designFactor_duc" type="text" required/>
                                    <br/>
                                    <label>Longitudinal Joint Factor:</label>
                                    <input class="form-control" id="longitudinalJointFactor_duc" name="longitudinalJointFactor_duc" type="text" required/>
                                    <br/>
                                    <label>Temperature Derating Factor:</label>
                                    <input class="form-control" id="temperatureDeratingFactor_duc" name="temperatureDeratingFactor_duc" type="text" required/>
                                    <br/>
                                    <label>Modulus of Elasticity for Steel:</label>
                                    <input class="form-control" id="modulusOfElasticityForSteel_duc" name="modulusOfElasticityForSteel_duc" type="text" value="30000000" required/>
                                    <br/>
                                    <label>Unit of Weight of Soil:</label>
                                    <input class="form-control" id="unitOfWeightOfSoil_duc" name="unitOfWeightOfSoil_duc" type="text" value="120" required/>
                                    <br/>
                                    <label>Deflection Parameter:</label>
                                    <input class="form-control" id="deflectionParameter_duc" name="deflectionParameter_duc" type="text" required/>
                                    <br/> 
                                    <label>Bending Parameter:</label>
                                    <input class="form-control" id="bendingParameter_duc" name="bendingParameter_duc" type="text" required/>
                                    <br/>
                                    <label>Impact Factor:</label>
                                    <input class="form-control" id="impactFactor_duc" name="impactFactor_duc" type="text" required/>
                                    <br/>
                                    <label>Load Coefficient:</label>
                                    <input type="text" name="load_coeff_urpp" id="load_coeff_urpp" class="form-control">
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
                                    <label>Pipe Internal Pressure:</label>
                                    <input class="form-control" id="pipeInternalPressure_duc" name="pipeInternalPressure_duc" type="text" required/>
                                    <br/>
                                    <label>Wheel Load:</label>
                                    <input class="form-control" id="wheelLoad_duc" name="wheelLoad_duc" type="text" required/>
                                    <br/>
                                    <label>Width of Pipe Trench or Diameter of Bore:</label>
                                    <input class="form-control" id="widthOfPipeTrenchOrDiameterOfBore_duc" name="widthOfPipeTrenchOrDiameterOfBore_duc" type="text" required/>
                                    <br/>
                                    <label>Height of Soil over Pipe:</label>
                                    <input class="form-control" id="heightOfSoilOverPipe_duc" name="heightOfSoilOverPipe_duc" type="text" required/>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>    
            <div class="panel panel-default">
                <div class="panel-heading">
                    Resultados
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <form role="form">
                                <div class="form-group">
                                    <label>Load Coefficient:</label>
                                    <input class="form-control" id="loadCoefficient_duc" name="loadCoefficient_duc" type="text" required/>
                                    <br/>
                                    <label>Total External Load:</label>
                                    <input class="form-control" id="totalExteneralLoad_duc" name="totalExteneralLoad_duc" type="text" required/>
                                    <br/>
                                    <label>Hoop Strees due to Internal Pressure:</label>
                                    <input class="form-control" id="hoopStressDueToInternalPressure_duc" name="hoopStressDueToInternalPressure_duc" type="text" required/>
                                    <br/>
                                    <label>Hoop Strees due to External Loading:</label>
                                    <input class="form-control" id="hoopStressDueToIExternalLoading_duc" name="hoopStressDueToIExternalLoading_duc" type="text" required/>
                                    <br/>
                                    <label><strong>Total Calculated Combined Stress</strong></label>
                                    <input class="form-control" id="totalCalculatedCombinedStress_duc" name="totalCalculatedCombinedStress_duc" type="text" required/>
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
              $(document).ready(function() {  
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
                    load_uniform_sel_duc();
                    
                });
              function calculatebtn_duc1(){
                 var parameter = {
                      "D"    : $("#nominalOutsideDiameter_duc").val(),
                      "t"    : $("#nominalOutsideDiameter_duc").val(),
                      "SMYS" : $("#specifiedMinimumYieldStrength_duc").val(),
                      "E" : $("#modulusOfElasticityForSteel_duc").val(),
                      "g" : $("#unitOfWeightOfSoil_duc").val(),
                      "Kz" : $("#deflectionParameter_duc").val(),
                      "Kb" : $("#bendingParameter_duc").val(),
                      "I" : $("#impactFactor_duc").val(),
                      "P" : $("#pipeInternalPressure_duc").val(),
                      "L" : $("#wheelLoad_duc").val(),
                      "Bd" : $("#widthOfPipeTrenchOrDiameterOfBore_duc").val(),
                      "H" : $("#heightOfSoilOverPipe_duc").val(),
                      "Cd": $("#load_coeff_urpp").val()
                  };
                  
                  var res = designuncascro(parameter);
                  
                  $("#loadCoefficient_duc").val(res[0]);
                  $("#totalExteneralLoad_duc").val(res[1]);
                  $("#hoopStressDueToInternalPressure_duc").val(res[2]);
                  $("#hoopStressDueToIExternalLoading_duc").val(res[3]);
                  $("#totalCalculatedCombinedStress_duc").val(res[4]);
              }
              
              function load_deratingf_sel_duc(){
                    var parametros = {
                            "combo": "deratingf",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"td_sel_ma\" id=\"td_sel_ma\" onchange=\"onchange_df_duc()\">" + data;
                            $("#div_td_sel_duc").html(newHtml); 
                            
                            $("#temp_fact_duc").val($("#td_sel_duc").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ma"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
              
                function load_in_sel_duc(){
                    var parametros = {
                            "combo": "in",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"md_sel_duc\" id= \"md_sel_duc\" onchange=\"cleanOut_duc()\">" + data;
                            $("#div_md_sel_duc").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"pipeo_sel_duc\" id= \"pipeo_sel_duc\" onchange=\"cleanOut_duc()\">" + data;
                            $("#div_pipeo_sel_duc").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"np_sel_duc\" id= \"np_sel_duc\" onchange=\"cleanOut_duc()\">" + data;
                            $("#div_np_sel_duc").html(newHtml);
                            
                             newHtml = "<select class=\"form-control\" name=\"le_sel_duc\" id= \"le_sel_duc\" onchange=\"cleanOut_duc()\">" + data;
                            $("#div_le_sel_duc").html(newHtml);
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_duc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_temp_sel_duc(){
                    var parametros = {
                            "combo": "temp",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"tempd_sel_duc\" id= \"tempd_sel_duc\" onchange=\"cleanOut_duc()\">" + data;
                            $("#div_tempd_sel_duc").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_duc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_nps_sel_duc(type){
                    var parametros = {
                            "combo": "npsn",
                            "type": type,
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_duc\" id= \"nominalps_sel_duc\" onchange=\"onchange_nps_duc()\">" + data;
                            $("#div_nominalps_sel_duc").html(newHtml);
                             var res =  $("#nominalps_sel_duc option:selected").html();
                             $("#nominalPipeSize_duc").val(res); 
                            $("#nominalOutsideDiameter_duc").val($("#nominalps_sel_duc").val());
                            load_wt_sel_duc();
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_duc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                 function load_wt_sel_duc(){
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_duc").val(),
                    "opcion" : "5"
                };
                $.ajax({
                    type: "POST",
                    url: "Modules/manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {                            
                        block("Cargando...");
                    },
                    success: function(data, status, request){ 
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_duc\" id= \"wt_sel_duc\" onchange=\"onchange_wt_duc()\">" + data;
                        $("#div_wt_sel_duc").html(newHtml);                            
                        $("#nominalWallThickness_duc").val($("#wt_sel_duc").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_duc"), "Error");
                    },
                    complete: function(){
                        unBlock();
                    }
                 });
            }
                function load_press_sel_duc(){
                    var parametros = {
                            "combo": "pres",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"syms_sel_duc\" id= \"syms_sel_duc\" onchange=\"cleanOut_duc()\">" + data;
                            $("#div_syms_sel_duc").html(newHtml);  
                            
                            newHtml = "<select class=\"form-control\" name=\"mop_sel_duc\" id= \"mop_sel_duc\" onchange=\"cleanOut_duc()\">" + data;
                            $("#div_mop_sel_duc").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_duc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                 
                function load_deratingf_sel_duc(){
                    var parametros = {
                            "combo": "deratingf",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"td_sel_duc\" id=\"td_sel_duc\" onchange=\"onchange_df_duc()\">" + data;
                            $("#div_td_sel_duc").html(newHtml); 
                            $("#temperatureDeratingFactor_duc").val($("#td_sel_duc").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_duc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_grade_sel_duc(idcombo){
                    var parametros = {
                            "combo": idcombo,
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        async: false,
                        data: parametros,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"grade_sel_duc\" id=\"grade_sel_duc\" onchange=\"onchange_gra_duc()\">" + data;
                            $("#div_grade_sel_duc").html(newHtml); 
                            
                            var x = $("#grade_sel_duc").val();
                            $("#specifiedMinimumYieldStrength_duc").val(x.split(",")[1]);
                             var res =  $("#grade_sel_duc option:selected").html();
                             $("#Grade_duc").val(res); 
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_duc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                 function load_defli_sel_duc(idcombo){
                    var parametros = {
                            "combo": idcombo,
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        async: false,
                        data: parametros,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"defli_sel_duc\" id=\"defli_sel_duc\" onchange=\"onchange_defli_duc()\">" + data;
                            $("#div_defli_sel_duc").html(newHtml); 
                            
                            var x = $("#defli_sel_duc").val();
                            $("#defl_lim_duc").val(x.split(",")[1]);
                          
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_duc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_joinf_sel_duc(idcombo){
                    var parametros = {
                            "combo": idcombo,
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"longitudinal_jf_duc\" id=\"longitudinal_jf_duc\" onchange=\"onchange_jf_duc()\">" + data;
                            $("#div_jf_sel_duc").html(newHtml);
                            $("#longitudinalJointFactor_duc").val($("#longitudinal_jf_duc").val().split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_duc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_uniform_sel_duc(){
                    var parametros = {
                            "combo": "usucc",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"uniform_duc\" id=\"uniform_duc\" onchange=\"onchange_uniform_duc()\">" + data;
                            $("#div_temperature_sel_duc").html(newHtml); 
                             
                            var x = $("#uniform_duc").val();
                             
                            $("#deflectionParameter_duc").val(x.split(",")[1]);
                            $("#bendingParameter_duc").val(x.split(",")[2]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_duc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
               
                function load_desingf_sel_duc(){
                    var parametros = {
                            "combo": "desingf2",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"design_factor_sel_duc\" id=\"design_factor_sel_duc\" onchange=\"onchange_defa_duc()\">" + data;
                            $("#div_df_sel_duc").html(newHtml); 
                            
                            var x = $("#design_factor_sel_duc").val();
                            $("#designFactor_duc").val(x.split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_duc"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                 function onchange_Input_duc(inp){
                    
                    var sw = validateDecimal(inp.value);

                    if(sw != true){
                        inp.value = "";
                    }    
                    onchange_Input_zero(inp);
                   // cleanOut_duc();
                    
                }
                
                function onchange_nps_duc(){
                    var res =  $("#nominalps_sel_duc option:selected").html();
                    $("#nominalPipeSize_duc").val(res); 
                    $("#nominalOutsideDiameter_duc").val($("#nominalps_sel_duc").val());
                    load_wt_sel_duc();
                }
                
                function onchange_wt_duc(){
                    $("#nominalWallThickness_duc").val($("#wt_sel_duc").val().split(",")[1]);
                }
                
                function onchange_gra_duc(){
                    var x = $("#grade_sel_duc").val();
                           $("#specifiedMinimumYieldStrength_duc").val(x.split(",")[1]);
                             var res =  $("#grade_sel_duc option:selected").html();
                             $("#Grade_duc").val(res); 
                }
                function onchange_defli_duc(){
                    var x = $("#defli_sel_duc").val();
                            $("#defl_lim_duc").val(x.split(",")[1]);
                           /* var res =  $("#grade_sel_duc option:selected").html();
                             $("#gra_pipeop_duc").val(x.split(",")[1]); */
                   // cleanOut_duc();
                }
                
                function onchange_jf_duc(){
                    $("#longitudinalJointFactor_duc").val($("#longitudinal_jf_duc").val().split(",")[1]);
                    //cleanOut_duc();
                }
                
                function onchange_df_duc(){
                    $("#temperatureDeratingFactor_duc").val($("#td_sel_duc").val().split(",")[1]);
                    //cleanOut_duc();
                }
                
                function onchange_defa_duc(){
                    $("#designFactor_duc").val($("#design_factor_sel_duc").val().split(",")[1]);
                   // cleanOut_duc();
                }
                 function onchange_uniform_duc(){
                  var x = $("#uniform_duc").val();
                             
                            $("#deflectionParameter_duc").val(x.split(",")[1]);
                            $("#bendingParameter_duc").val(x.split(",")[2]);  
                }
                function changePav(val){
                    if(val==1){
                       // $("#paviment_duc").val("1.5");
                        $("#impactFactor_duc").val("1.5");
                    }else{
                        $("#impactFactor_duc").val("1");
                    }
                }
        </script>
    </body>
</html>