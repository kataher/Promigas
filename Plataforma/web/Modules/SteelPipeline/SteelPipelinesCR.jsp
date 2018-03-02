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
                <h2><strong>Steel Pipeline Crossings:</strong> API 1102 - Gas Pipeline Crossing Railroad</h2>
            </div>
            <div class="col-lg-3"> 

                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_spcr()">
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
                                <div id="div-table_spcr"></div>
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
                <input  class="form-control" type="text" id="description_spcr" name="description_spcr"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_spcr" name="proyects_sel_spcr"> </select>
            </div>
        </div>
        <hr>
        <div class ="form-group">
            <ul class="nav nav-tabs nav-justified" role="tablist">
                <li role="presentation" class="active"><a href="#PaOC" aria-controls="PaOC" role="tab" data-toggle="tab">Pipe and Operational Characteristics</a></li>
                <li role="presentation"><a href="#IaSC" aria-controls="IaSC" role="tab" data-toggle="tab">Installation and Site Characteristics</a></li>
                <li role="presentation"><a href="#results" aria-controls="results" role="tab" data-toggle="tab">Results</a></li>
            </ul>      
        </div>  
        <div class="tab-content">
            <div id="PaOC" class="tab-pane fade in active">
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Propiedades de tuberia
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">
                                           
                                            <div id="Lpipe">
                                               
                                                <hr/>   
                                                <div class="col-md-12">
                                                  <label>Nominal Pipe Size:</label>
                                                  <div id="div_nominalps_sel_spcr">
                                                  <select class="form-control" id="nominalps_sel_spcr" name="nominalps_sel_spcr"> </select></div>
                                                </div>
                                                    <br/>
                                                <div class="form-group">
                                                  <div class="col-lg-12">                      
                                                    <label>Wall Thickness [.in]:</label>
                                                  </div> 
                                                  <div class="col-lg-12" id="div_wt_sel_spcr">
                                                    <select class="form-control" id="wt_sel_spcr" name="wt_sel_spcr"> </select>
                                                  </div>
                                                </div>
                                                <div class="form-group">
                                                 <div class="col-md-12">
                                                  <label>Grade:</label> 
                                                 </div>
                                                 <div class="col-md-12">
                                                  <div id="div_grade_sel_spcr">
                                                   <select class="form-control" id="grade_sel_spcr" name="grade_sel_spcr"> </select>
                                                  </div>
                                                 </div>
                                                </div>
                                                <hr/>
                                                <div class="form-group">
                                                 <div class="col-md-12">
                                                     <label>E - Longitudinal Joint Factor:</label>
                                        <div id="div_jf_sel_spcr">
                                            <select class="form-control" id="longitudinal_jf_spcr" name="longitudinal_jf_spcr"> </select>
                                        </div>
                                                      </div>
                                                 </div>
                                                    <br/>
                                                    <label>Young's Modulus for Steel</label>
                                                    <input class="form-control" id="youngModulusForSteel1_spcr" name="youngModulusForSteel1_spcr" type="text" required/>
                                                    <br/>
                                                    <label>Poisson's Ratio for Steel</label>
                                                    <input class="form-control" id="poissonsRatioForSteel1_spcr" name="poissonsRatioForSteel1_spcr" type="text" required/>
                                                    <br/>
                                                    <label>Coefficient of Thermal Expansion</label>
                                                    <input class="form-control" id="coefficientOfThermalExpasion1_spcr" name="coefficientThermalExpasion1_spcr" type="text" required/>
                                                    <br/>
                                                   <div class="form-group">
                                                     <div class="col-md-12">
                                                      <label>Location Class:</label>
                                                      <div id="div_df_sel_spcr">
                                                       <select class="form-control" id="design_factor_sel_spcr" name="design_factor_sel_spcr"> </select>
                                                      </div>
                                                     </div>
                                                    </div>
                                            </div>
                                            
                                        </div>
                                   </form>
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>    
                <div class="col-lg-5">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Temperature Derating Factor
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">
                                        <label>Temperature:</label>
                                        <div  id="div_td_sel_spcr">                    
                                          <select class="form-control" id="temperature_spcr" name="temperature_spcr"> </select>
                                        </div>
                                        
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>  
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Datos Operacionales y de la Tuberia
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Operating Pressure</label>
                                            <input class="form-control" id="operatingPressure_spcr" name="operatingPressure_spcr" type="text" required/>
                                            <br/>
                                            <label>Operating Temperature</label>
                                            <input class="form-control" id="operatingTemperature_spcr" name="operatingTemperature_spcr" type="text" value="60" required/>
                                            <br/>
                                            <label>Pipe Outside Diameter</label>
                                            <input class="form-control" id="pipeOutsideDiameter_spcr" name="pipeOutsideDiameter_spcr" type="text" required/>
                                            <br/>
                                            <label>Pipe Wall Thickness</label>
                                            <input class="form-control" id="pipeWallThickness_spcr" name="pipeWallThickness_spcr" type="text" required/>
                                            <br/>
                                            <label>Pipe Grade</label>
                                            <input class="form-control" id="pipeGrade_spcr" name="pipeGrade_spcr" type="text" required/>
                                            <br/>
                                            <label>Specified Minimum Yield Stress</label>
                                            <input class="form-control" id="specificiedMinimunYieldStress_spcr" name="specificiedMinimunYieldStress_spcr" type="text" required/>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Design Factor</label>
                                            <input class="form-control" id="designFactor_spcr" name="designFactor_spcr" type="text" required/>
                                            <br/>
                                            <label>Longitudinal Joint Factor</label>
                                            <input class="form-control" id="longitudinalJointFactor_spcr" name="longitudinalJointFactor_spcr" type="text" required/>
                                            <br/>
                                            <label>Temperature Derating Factor</label>
                                            <input class="form-control" id="temperatureDeratingFactor_spcr" name="temperatureDeratingFactor_spcr" type="text" required/>
                                            <br/>
                                            
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>   
            </div>             
            <div id="IaSC" class="tab-pane fade">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Caracteristicas de la Instalacion
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>Pipe Depth</label>
                                            <input class="form-control" id="pipeDepth_spcr" name="pipeDepth_spcr" type="text" required/>
                                            <br/>
                                            <label>Bored Diameter</label>
                                            <input class="form-control" id="boredDiameter_spcr" name="boredDiameter_spcr" type="text" required/>
                                            <br/>
                                            <label>Installation Temperature</label>
                                            <input class="form-control" id="installationTemperature_spcr" name="installationTemperature_spcr" type="text" required/>
                                            <br/>
                                            <label>Distance of Girth Weld from Track Centerline</label>
                                            <input class="form-control" id="distanceOfGirthWeldFromTrackCenterline_spcr" name="distanceOfGirthWeldFromTrackCenterline_spcr" type="text" required/>
                                            <br/>
                                            <label>Number of Tracks (1 or 2)</label>
                                            <input class="form-control" id="numberOfTracks_spcr" name="numberOfTracks_spcr" type="text" required/>
                                            <br/>
                                            <h3>Rail Loading</h3>
                                            <hr/>
                                            <select class="form-control" id="cooperE" onchange="onchange_coo_spcr()"> 
                                                <option value="13.9">Cooper E-80</option>
                                                <option value="0"   >Other</option>
                                            </select>
                                            <br/>
                                            <label>Applied Design Surface Pressure</label>
                                            <input class="form-control" id="appliedDesignSurfacePressure_spcr" name="appliedDesignSurfacePressure_spcr" value="13.9" type="text" required/>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>
             
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Caracteristicas del Suelo
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">
                                             
                                        
                                        <div  id="div_sl_soilca_spcr">                    
                                          <select class="form-control" id="soil_Car_spcr" name="soil_Car_spcr"> </select>
                                        </div>
                                         
                                        
                                            <br/>
                                            <label>Modulus of Soil Reaction</label>
                                            <input class="form-control" id="modulusOfSoilReaction_spcr" name="modulusOfSoilReaction_spcr" type="text" required/>
                                            <br/>
                                            <label>Resilent Modulus</label>
                                            <input class="form-control" id="resilentModulus_spcr" name="resilentModulus_spcr" type="text" required/>
                                            <br/>
                                            <label>Average Unit Weight of Soil</label>
                                            <input class="form-control" id="averageUnitWeightOfSoil_spcr" name="averageUnitWeightOfSoil_spcr" type="text" required/>
                                            <br/>
                                           
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
            <div id="results" class="tab-pane fade">
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Resultados
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <form role="form">
                                    <div class="form-group">
                                        <div class="col-lg-12">
                                            <label>Hoop Stress</label>
                                            <input class="form-control" id="hoopStress_spcr" name="hoopStress_spcr" type="text" required/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-12">
                                            <label>Allowable Hoop Stress</label>
                                            <input class="form-control" id="allowableHoopStress_spcr" name="allowableHoopStress_spcr" type="text" required/>
                                            <br/>
                                        </div>    
                                        <div class="col-lg-9">
                                            <label>Stiffness Factor for Earth Load Circumferential Stress</label>
                                            <input class="form-control" id="stiffnessFactorForEarthLoadCirncumferentialStress_spcr" name="stiffnessFactorForEarthLoadCirncumferentialStress_spcr" type="text" required/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-3">
                                            <br/>
                                            <input type="button" value="Graph" id="graph1_spcr" name="graph1_spcr" class="btn btn-info btn-block"/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-9">
                                            <label>Burial Factor for Earth Load Circumferential Stress</label>
                                            <input class="form-control" id="burialFactorForEarthLoadCirncumferentialStress_spcr" name="burialFactorForEarthLoadCirncumferentialStress_spcr" type="text" required/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-3">
                                            <br/>
                                            <input type="button" value="Graph" id="graph2_spcr" name="graph2_spcr" class="btn btn-info btn-block"/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-9">
                                            <label>Excavation Factor for Earth Load Circumferential Stress</label>
                                            <input class="form-control" id="excavationFactorForEarthLoadCirncumferentialStress_spcr" name="excavationFactorForEarthLoadCirncumferentialStress_spcr" type="text" required/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-3">
                                            <br/>
                                            <input type="button" value="Graph" id="graph3_spcr" name="graph3_spcr" class="btn btn-info btn-block"/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-12">
                                            <label>Circumferential Stress for Earth Load</label>
                                            <input class="form-control"id="cirncumferentialStressForEarthLoad_spcr" name="cirncumferentialStressForEarthLoad_spcr" type="text" required/>
                                            <br/>
                                        </div>    
                                        <div class="col-lg-9">
                                            <label>Impact Factor</label>
                                            <input class="form-control" id="impactFactor_spcr" name="impactFactor_spcr" type="text" required/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-3">
                                            <br/>
                                            <input type="button" value="Graph" id="graph4_spcr" name="graph4_spcr" class="btn btn-info btn-block"/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-12">
                                            <label>Railroad Double Track Factor for Circumferential Stress</label>
                                            <input class="form-control" id="railroadDoubleTrackForCircumferentialStress_spcr" name="railroadDoubleTrackForCircumferentialStress_spcr" type="text" required/>
                                            <br/>
                                        </div>  
                                        <div class="col-lg-9">
                                            <label>Railroad Stiffness Factor for Cyclic Circumferential Stress</label>
                                            <input class="form-control" id="railroadStiffnessFactorForCyclicCircumferentialStress_spcr" name="railroadStiffnessFactorForCyclicCircumferentialStress_spcr" type="text" required/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-3">
                                            <br/>
                                            <input type="button" value="Graph" id="graph5_spcr" name="graph5_spcr" class="btn btn-info btn-block"/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-9">
                                            <label>Railroad Geometry Factor for Cyclic Circumferential Stress</label>
                                            <input class="form-control" id="railroadGeometryFactorForCyclicCircumferentialStress_spcr" name="railroadGeometryFactorForCyclicCircumferentialStress_spcr" type="text" required/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-3">
                                            <br/>
                                            <input type="button" value="Graph" id="graph6_spcr" name="graph6_spcr" class="btn btn-info btn-block"/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-12">
                                            <label>Railroad Cyclic Circumferential Stress</label>
                                            <input class="form-control" id="railroadCyclicCircumferentialStress_spcr" name="railroadCyclicCircumferentialStress_spcr" type="text" required/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-12">
                                            <label>Railroad Double Track Factor For Longitudinal Stress</label>
                                            <input class="form-control" id="railroadDoubleTrackForLongitudinalStress_spcr" name="railroadDoubleTrackForLongitudinalStress_spcr" type="text" required/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-9">
                                            <label>Railroad Stiffness Factor for Cyclic Longitudinal Stress</label>
                                            <input class="form-control" id="railroadStiffnessFactorForCyclicLongitudinalStress_spcr" name="railroadStiffnessFactorForCyclicLongitudinalStress_spcr" type="text" required/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-3">
                                            <br/>
                                            <input type="button" value="Graph" id="graph7_spcr" name="graph7_spcr" class="btn btn-info btn-block"/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-9">
                                            <label>Railroad Geometry Factor for Cyclic Longitudinal Stress</label>
                                            <input class="form-control" id="railroadGeometryFactorForCyclicLongitudinalStress_spcr" name="railroadGeometryFactorForCyclicLongitudinalStress_spcr" type="text" required/>
                                            <br/>
                                        </div>
                                        <div class="col-lg-3">
                                            <br/>
                                            <input type="button" value="Graph" id="graph8_spcr" name="graph8_spcr" class="btn btn-info btn-block"/>
                                            <br/>
                                        </div>
                                        <br/>
                                        <div class="col-lg-12">
                                            <label>Railroad Cyclic Longitudinal Stress</label>
                                            <input class="form-control" id="railroadCyclicLongitudinalStress_spcr" name="railroadCyclicLongitudinalStress_spcr" type="text" required/>
                                            <br/>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>  
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <form role="form">
                                    <div class="form-group"> 
                                        <div class="col-lg-12">
                                            <label>Maximum Circumferential Stress</label>
                                            <input class="form-control" id="maximumCircumferentialStress_spcr" name="maximumCircumferentialStress_spcr" type="text" required/>
                                            <br/>
                                            <label>Maximum Longitudinal Stress</label>
                                            <input class="form-control" id="maximumLongitudinalStress_spcr" name="maximumLongitudinalStress_spcr" type="text" required/>
                                            <br/>
                                            <label>Maximum Radial Stress</label>
                                            <input class="form-control" id="maximumRadialStress_spcr" name="maximumRadialStress_spcr" type="text" required/>
                                            <br/>
                                            <label>Total Effective Stress</label>
                                            <input class="form-control" id="totalEffectiveStress_spcr" name="totalEffectiveStress_spcr" type="text" required/>
                                            <br/>
                                            <label>Allowable Effective Stress</label>
                                            <input class="form-control" id="allowableEffectiveStress_spcr" name="allowableEffectiveStress_spcr" type="text" required/>
                                            <br/>
                                            <label>Fatigue Resistance of Girth Welds</label>
                                            <input class="form-control" id="fatigueResistanceOfGirthWelds_spcr" name="fatigueResistanceOfGirthWelds_spcr" type="text" required/>
                                            <br/>
                                            <label>Fatigue Resistance of Longitudinal Welds</label>
                                            <input class="form-control" id="fatigueResistanceOfLongitudinalWelds_spcr" name="fatigueResistanceOfLongitudinalWelds_spcr" type="text" required/>
                                            <br/>
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Stress</th>
                                                        <th>Calculated</th>
                                                        <th>Allowable</th>
                                                        <th>PASS/FAIL</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>Barlow Stress</td>
                                                        <td id="barSt">-</td>
                                                        <td id="barStM">-</td>
                                                        <td id="barPass">-</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Effective Stress</td>
                                                        <td id="efeSt">-</td>
                                                        <td id="efeStM">-</td>
                                                        <td id="efePass">-</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Girth Welds</td>
                                                        <td id="girWe">-</td>
                                                        <td id="girWeM">-</td>
                                                        <td id="girPass">-</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Long Welds</td>
                                                        <td id="lonWe">-</td>
                                                        <td id="lonWeM">-</td>
                                                        <td id="lonPass">-</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <input type="button" value="Calcular" onclick="calculatebtn_spcr1()" id="savebtn_spch" name="savebtn_spch" class="btn btn-success btn-block">   
                                            <input type="button" value="Reportar" id="reportbtn_spcr" name="reportbtn_spcr" class="btn btn-info btn-block">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>  
                    </div>
                </div>
            </div>
        </div>            
    </body>
    <script>
        $(document).ready(function() {  
            getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_spcr"),
                        $("#error_Dialog_spcr"));
                        
            $("#opt_spcr").val("1");
            $('#api5l_spcr').attr('checked', 'checked');
            load_nps_sel_spcr("5l");
            load_grade_sel_spcr("gra5l");
            load_deratingf_sel_spcr();                    
            load_joinf_sel_spcr("jointf5l");
            load_desingf_sel_spcr();
            load_soil_spcr();
           
                    
        });
         function calculatebtn_spcr1(){
             //alert( $("#pipeOutsideDiameter_spcr")+" "+$("#pipeWallThickness_spcr")+" "+$("#pipeWallThickness_spcr"));
                 var parameter = {
                    "Es"   : $("#youngModulusForSteel1_spcr").val(),
                    "Vs"   : $("#poissonsRatioForSteel1_spcr").val(),
                    "AT"   : $("#coefficientOfThermalExpasion1_spcr").val(),
                    "p"    : $("#operatingPressure_spcr").val(),
                    "T1"   : $("#operatingTemperature_spcr").val(),
                    "D"    : $("#pipeOutsideDiameter_spcr").val(),
                    "tw"   : $("#pipeWallThickness_spcr").val(),
                    "gd"   : $("#pipeGrade_spcr").val(),
                    "SMYS" : $("#specificiedMinimunYieldStress_spcr").val(),
                    "F"    : $("#designFactor_spcr").val(),
                    "E"    : $("#longitudinalJointFactor_spcr").val(),
                    "T"    : $("#temperatureDeratingFactor_spcr").val(),
                    "H"    : $("#pipeDepth_spcr").val(),
                    "Bd"   : $("#boredDiameter_spcr").val(),
                    "T2"   : $("#installationTemperature_spcr").val(),
                    "Lg"   : $("#distanceOfGirthWeldFromTrackCenterline_spcr").val(),
                    "Nt"   : $("#numberOfTracks_spcr").val(),
                    "Ep"   : $("#modulusOfSoilReaction_spcr").val(),
                    "Er"   : $("#resilentModulus_spcr").val(),
                    "Y"    : $("#averageUnitWeightOfSoil_spcr").val(),
                    "w"    : $("#appliedDesignSurfacePressure_spcr").val(),
                    "lfs"  : $("#longitudinal_jf_spcr").val().split(",")[0],
                    "grade": $("#pipeGrade_spcr").val(),
                    "soil" : $("#soil_Car_spcr").val()

                  };
                  
                  var res = SteelpipelinesCR(parameter);
                  
                  $("#hoopStress_spcr").val(res[0]);
                  $("#allowableHoopStress_spcr").val(res[1]);
                  $("#stiffnessFactorForEarthLoadCirncumferentialStress_spcr").val(res[2]);
                  $("#burialFactorForEarthLoadCirncumferentialStress_spcr").val(res[3]);
                  $("#excavationFactorForEarthLoadCirncumferentialStress_spcr").val(res[4]);
                  $("#cirncumferentialStressForEarthLoad_spcr").val(res[5]);
                  $("#impactFactor_spcr").val(res[6]);
                  $("#railroadDoubleTrackForCircumferentialStress_spcr").val(res[7]);
                  $("#railroadStiffnessFactorForCyclicCircumferentialStress_spcr").val(res[8]);
                  $("#railroadGeometryFactorForCyclicCircumferentialStress_spcr").val(res[9]);
                  $("#railroadCyclicCircumferentialStress_spcr").val(res[10]);
                  $("#railroadDoubleTrackForLongitudinalStress_spcr").val(res[11]);
                  $("#railroadStiffnessFactorForCyclicLongitudinalStress_spcr").val(res[12]);
                  $("#railroadGeometryFactorForCyclicLongitudinalStress_spcr").val(res[13]);
                  $("#railroadCyclicLongitudinalStress_spcr").val(res[14]);
                  $("#maximumCircumferentialStress_spcr").val(res[15]);
                  $("#maximumLongitudinalStress_spcr").val(res[16]);
                  $("#maximumRadialStress_spcr").val(res[17]);
                  $("#totalEffectiveStress_spcr").val(res[18]);
                  $("#allowableEffectiveStress_spcr").val(res[19]);
                  $("#fatigueResistanceOfGirthWelds_spcr").val(res[20]);
                  $("#fatigueResistanceOfLongitudinalWelds_spcr").val(res[21]);
                  $("#barSt").text(res[22]);
                  $("#barStM").text(res[1]);
                  if(res[22] < res[1]){
                  $("#barPass").text("PASS");
                  }else{
                   $("#barPass").text("FAIL");
                  }
                  $("#efeSt").text(res[18]);
                  $("#efeStM").text(res[19]);
                  if(res[18] < res[19]){
                  $("#efePass").text("PASS");
                  }else{
                   $("#efePass").text("FAIL");
                  }                  
                  $("#girWe").text(res[23]);
                  $("#girWeM").text(res[24]);
                  if(res[23] < res[24]){
                  $("#girPass").text("PASS");
                  }else{
                   $("#girPass").text("FAIL");
                  }
                  $("#lonWe").text(res[25]);
                  $("#lonWeM").text(res[26]);
                  if(res[25] < res[26]){
                  $("#lonPass").text("PASS");
                  }else{
                   $("#lonPass").text("FAIL");
                  }
              }
              
              function load_deratingf_sel_spcr(){
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
                            var newHtml = "<select class=\"form-control\" name=\"td_sel_ma\" id=\"td_sel_ma\" onchange=\"onchange_df_spcr()\">" + data;
                            $("#div_td_sel_spcr").html(newHtml); 
                            
                            $("#temp_fact_spcr").val($("#td_sel_spcr").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_ma"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
               
                function load_in_sel_spcr(){
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
                            var newHtml = "<select class=\"form-control\" name=\"md_sel_spcr\" id= \"md_sel_spcr\" onchange=\"cleanOut_spcr()\">" + data;
                            $("#div_md_sel_spcr").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"pipeo_sel_spcr\" id= \"pipeo_sel_spcr\" onchange=\"cleanOut_spcr()\">" + data;
                            $("#div_pipeo_sel_spcr").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"np_sel_spcr\" id= \"np_sel_spcr\" onchange=\"cleanOut_spcr()\">" + data;
                            $("#div_np_sel_spcr").html(newHtml);
                            
                             newHtml = "<select class=\"form-control\" name=\"le_sel_spcr\" id= \"le_sel_spcr\" onchange=\"cleanOut_spcr()\">" + data;
                            $("#div_le_sel_spcr").html(newHtml);
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spcr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_temp_sel_spcr(){
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
                            var newHtml = "<select class=\"form-control\" name=\"tempd_sel_spcr\" id= \"tempd_sel_spcr\" onchange=\"cleanOut_spcr()\">" + data;
                            $("#div_tempd_sel_spcr").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spcr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_nps_sel_spcr(type){
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
                            var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_spcr\" id= \"nominalps_sel_spcr\" onchange=\"onchange_nps_spcr()\">" + data;
                            $("#div_nominalps_sel_spcr").html(newHtml);
                             var res =  $("#nominalps_sel_spcr option:selected").html();
                             //$("#pipeOutsideDiameter_spcr").val(res); 
                               $("#pipeOutsideDiameter_spcr").val($("#nominalps_sel_spcr").val());
                            load_wt_sel_spcr();
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spcr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                
                function load_soil_spcr(){
                    var parametros = {
                            "combo": "EErsoil",
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
                       var newHtml = "<select class=\"form-control\" name=\"soil_Car_spcr\" id= \"soil_Car_spcr\" onchange=\"onchange_soil_spcr()\">" + data;
                       $("#div_sl_soilca_spcr").html(newHtml);
                       var res =  $("#soil_Car_spcr option:selected").html();
                        $("#modulusOfSoilReaction_spcr").val($("#soil_Car_spcr").val().split(",")[1]);
                         $("#resilentModulus_spcr").val($("#soil_Car_spcr").val().split(",")[2]);
                       
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spcr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                
                
                 function load_wt_sel_spcr(){
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_spcr").val(),
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
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_spcr\" id= \"wt_sel_spcr\" onchange=\"onchange_wt_spcr()\">" + data;
                        $("#div_wt_sel_spcr").html(newHtml);                            
                        $("#pipeWallThickness_spcr").val($("#wt_sel_spcr").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_spcr"), "Error");
                    },
                    complete: function(){
                        unBlock();
                    }
                 });
            }
                function load_press_sel_spcr(){
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
                            var newHtml = "<select class=\"form-control\" name=\"syms_sel_spcr\" id= \"syms_sel_spcr\" onchange=\"cleanOut_spcr()\">" + data;
                            $("#div_syms_sel_spcr").html(newHtml);  
                            
                            newHtml = "<select class=\"form-control\" name=\"mop_sel_spcr\" id= \"mop_sel_spcr\" onchange=\"cleanOut_spcr()\">" + data;
                            $("#div_mop_sel_spcr").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spcr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                 
                function load_deratingf_sel_spcr(){
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
                            var newHtml = "<select class=\"form-control\" name=\"td_sel_spcr\" id=\"td_sel_spcr\" onchange=\"onchange_df_spcr()\">" + data;
                            $("#div_td_sel_spcr").html(newHtml); 
                            $("#temperatureDeratingFactor_spcr").val($("#td_sel_spcr").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spcr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_grade_sel_spcr(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"grade_sel_spcr\" id=\"grade_sel_spcr\" onchange=\"onchange_gra_spcr()\">" + data;
                            $("#div_grade_sel_spcr").html(newHtml); 
                            
                            var x = $("#grade_sel_spcr").val();
                            $("#specificiedMinimunYieldStress_spcr").val(x.split(",")[1]);
                            $("#pipeGrade_spcr").val($("#grade_sel_spcr option:selected").text());                            
                             var res =  $("#grade_sel_spcr option:selected").html();
                             $("#Grade_spcr").val(res); 
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spcr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                 function load_defli_sel_spcr(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"defli_sel_spcr\" id=\"defli_sel_spcr\" onchange=\"onchange_defli_spcr()\">" + data;
                            $("#div_defli_sel_spcr").html(newHtml); 
                            
                            var x = $("#defli_sel_spcr").val();
                            $("#defl_lim_spcr").val(x.split(",")[1]);
                          
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spcr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_joinf_sel_spcr(idcombo){
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
                            var newHtml = "<select class=\"form-control\" name=\"longitudinal_jf_spcr\" id=\"longitudinal_jf_spcr\" onchange=\"onchange_jf_spcr()\">" + data;
                            $("#div_jf_sel_spcr").html(newHtml);
                            $("#longitudinalJointFactor_spcr").val($("#longitudinal_jf_spcr").val().split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spcr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_uniform_sel_spcr(){
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
                            var newHtml = "<select class=\"form-control\" name=\"uniform_spcr\" id=\"uniform_spcr\" onchange=\"onchange_uniform_spcr()\">" + data;
                            $("#div_temperature_sel_spcr").html(newHtml); 
                             
                            var x = $("#uniform_spcr").val();
                             
                            $("#deflectionParameter_spcr").val(x.split(",")[1]);
                            $("#bendingParameter_spcr").val(x.split(",")[2]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spcr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
               
                function load_desingf_sel_spcr(){
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
                            var newHtml = "<select class=\"form-control\" name=\"design_factor_sel_spcr\" id=\"design_factor_sel_spcr\" onchange=\"onchange_defa_spcr()\">" + data;
                            $("#div_df_sel_spcr").html(newHtml); 
                            
                            var x = $("#design_factor_sel_spcr").val();
                            $("#designFactor_spcr").val(x.split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spcr"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                 function onchange_Input_spcr(inp){
                    
                    var sw = validateDecimal(inp.value);

                    if(sw != true){
                        inp.value = "";
                    }   
                    onchange_Input_zero(inp);
                   // cleanOut_spcr();
                    
                }
                function onchange_soil_spcr(){
                   $("#modulusOfSoilReaction_spcr").val($("#soil_Car_spcr").val().split(",")[1]);
                         $("#resilentModulus_spcr").val($("#soil_Car_spcr").val().split(",")[2]); 
                }
                function onchange_nps_spcr(){
                    var res =  $("#nominalps_sel_spcr option:selected").html();
                    $("#nominalPipeSize_spcr").val(res); 
                    $("#pipeOutsideDiameter_spcr").val($("#nominalps_sel_spcr").val());
                    load_wt_sel_spcr();
                }
                function onchange_coo_spcr(){
                    //var res =  $("#cooperE option:selected").html();
                    var res = $("#cooperE").val();
                    $("#appliedDesignSurfacePressure_spcr").val(res); 
                }
                function onchange_wt_spcr(){
                    $("#pipeWallThickness_spcr").val($("#wt_sel_spcr").val().split(",")[1]);
                }
                
                function onchange_gra_spcr(){
                    var x = $("#grade_sel_spcr").val();
                    $("#specificiedMinimunYieldStress_spcr").val(x.split(",")[1]);
                    var res =  $("#grade_sel_spcr option:selected").html();
                    $("#pipeGrade_spcr").val(res); 
                }
                function onchange_defli_spcr(){
                    var x = $("#defli_sel_spcr").val();
                            $("#defl_lim_spcr").val(x.split(",")[1]);
                           /* var res =  $("#grade_sel_spcr option:selected").html();
                             $("#gra_pipeop_spcr").val(x.split(",")[1]); */
                   // cleanOut_spcr();
                }
                
                function onchange_jf_spcr(){
                    $("#longitudinalJointFactor_spcr").val($("#longitudinal_jf_spcr").val().split(",")[1]);
                    //cleanOut_spcr();
                }
                
                function onchange_df_spcr(){
                    $("#temperatureDeratingFactor_spcr").val($("#td_sel_spcr").val().split(",")[1]);
                    //cleanOut_spcr();
                }
                
                function onchange_defa_spcr(){
                    $("#designFactor_spcr").val($("#design_factor_sel_spcr").val().split(",")[1]);
                   // cleanOut_spcr();
                }
               
                 function onchange_uniform_spcr(){
                  var x = $("#uniform_spcr").val();
                             
                            $("#deflectionParameter_spcr").val(x.split(",")[1]);
                            $("#bendingParameter_spcr").val(x.split(",")[2]);  
                }
                function changePav(val){
                    if(val==1){
                       // $("#paviment_spcr").val("1.5");
                        $("#impactFactor_spcr").val("1.5");
                    }else{
                        $("#impactFactor_spcr").val("1");
                    }
                }
        
        
    </script>
</html>
