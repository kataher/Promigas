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
                                <h2><strong>Steel Pipeline Crossings: </strong>API 1102 - Gas Pipeline Crossing Highway</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_spch()">
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
                                                <div id="div-table_spch"></div>
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
                                <input  class="form-control" type="text" id="description_spch" name="description_spch"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_spch" name="proyects_sel_spch"> </select>
                            </div>
                        </div>

                        <hr>
                        <div class="row">

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
                                                Properties of pipe
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <form role="form">
                                                            <div class="form-group">

                                                                <div id="Lpipe">
                                                                    <div class="col-md-12">
                                                                        <label>Nominal Pipe Size:</label>
                                                                        <div id="div_nominalps_sel_spch">
                                                                            <select class="form-control" id="nominalps_sel_spch" name="nominalps_sel_spch"> </select></div>
                                                                    </div>
                                                                    <br/>
                                                                    <div class="form-group">
                                                                        <div class="col-lg-12">                      
                                                                            <label>Wall Thickness [.in]:</label>
                                                                        </div> 
                                                                        <div class="col-lg-12" id="div_wt_sel_spch">
                                                                            <select class="form-control" id="wt_sel_spch" name="wt_sel_spch"> </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Grade:</label> 
                                                                        </div>
                                                                        <div class="col-md-12">
                                                                            <div id="div_grade_sel_spch">
                                                                                <select class="form-control" id="grade_sel_spch" name="grade_sel_spch"> </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <hr/>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>E - Longitudinal Joint Factor:</label>
                                                                            <div id="div_jf_sel_spch">
                                                                                <select class="form-control" id="longitudinal_jf_spch" name="longitudinal_jf_spch"> </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Young's Modulus for Steel:</label>
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <input type="text" class="form-control" id="youngModulusForSteel1_spch" name="youngModulusForSteel1_spch" onchange='onchange_Input_spch(this)' required> 
                                                                        </div>
                                                                        <div class="col-md-4" id = "div_youngModulusForSteel1_sel_spch">
                                                                            <select class="form-control" id="youngModulusForSteel1_sel_spch" name="youngModulusForSteel1_sel_spch">
                                                                                <option value="psi">psi</option>
                                                                                <option value="MPa">MPa</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    
                                                                    <label>Poisson's Ratio for Steel</label>
                                                                    <input class="form-control" id="poissonsRatioForSteel1_spch" name="poissonsRatioForSteel1_spch" type="text" required/>
                                                                    <br/>
                                                                    
                                                                    <label>Coefficient of Thermal Expansion</label>
                                                                    <input class="form-control" id="coefficientOfThermalExpasion1_spch" name="coefficientThermalExpasion1_spch" type="text" required/>
                                                                    <br/>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Location Class:</label>
                                                                            <div id="div_df_sel_spch">
                                                                                <select class="form-control" id="design_factor_sel_spch" name="design_factor_sel_spch"> </select>
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
                                                                <div  id="div_td_sel_spch">                    
                                                                    <select class="form-control" id="temperature_spch" name="temperature_spch"> </select>
                                                                </div>

                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>  
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">                        
                                                Operational and Pipe Data
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <form role="form">
                                                            <div class="form-group">
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Operating Pressure</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input type="text" class="form-control" id="operatingPressure_spch" name="operatingPressure_spch" onchange='onchange_Input_spch(this)' required> 
                                                                    </div>
                                                                    <div class="col-md-4" id = "div_operatingPressure_sel_spch">
                                                                        <select class="form-control" id="operatingPressure_sel_spch" name="operatingPressure_sel_spch">
                                                                            <option value="psi">psi</option>
                                                                            <option value="MPa">MPa</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Operating Temperature</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input type="text" class="form-control" id="operatingTemperature_spch" name="operatingTemperature_spch" onchange='onchange_Input_spch(this)' required> 
                                                                    </div>
                                                                    <div class="col-md-4" id = "div_operatingTemperature_sel_spch">
                                                                        <select class="form-control" id="operatingTemperature_sel_spch" name="operatingTemperature_sel_spch">
                                                                            <option value="C">C</option>
                                                                            <option value="F">F</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Pipe Outside Diameter</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input type="text" class="form-control" id="pipeOutsideDiameter_spch" name="pipeOutsideDiameter_spch" onchange='onchange_Input_spch(this)' required> 
                                                                    </div>
                                                                    <div class="col-md-4" id = "div_pipeOutsideDiameter_sel_spch">
                                                                        <select class="form-control" id="pipeOutsideDiameter_sel_spch" name="pipeOutsideDiameter_sel_spch">
                                                                            <option value="in">in</option>
                                                                            <option value="cm">cm</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Pipe Wall Thickness</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input type="text" class="form-control" id="pipeWallThickness_spch" name="pipeWallThickness_spch" onchange='onchange_Input_spch(this)' required> 
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <select class="form-control" id="pipeWallThickness_sel_spch">
                                                                            <option value="in">in</option>
                                                                            <option value="cm">cm</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Pipe Grade</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" class="form-control" id="pipeGrade_spch" name="pipeGrade_spch" onchange='onchange_Input_spch(this)' required> 
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Specified Minimum Yield Stress</label>
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                        <input type="text" class="form-control" id="specificiedMinimunYieldStress_spch" name="specificiedMinimunYieldStress_spch" onchange='onchange_Input_spch(this)' required> 
                                                                    </div>
                                                                </div>
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
                                                                <input class="form-control" id="designFactor_spch" name="designFactor_spch" type="text" required/>
                                                                <br/>
                                                                <label>Longitudinal Joint Factor</label>
                                                                <input class="form-control" id="longitudinalJointFactor_spch" name="longitudinalJointFactor_spch" type="text" required/>
                                                                <br/>
                                                                <label>Temperature Derating Factor</label>
                                                                <input class="form-control" id="temperatureDeratingFactor_spch" name="temperatureDeratingFactor_spch" type="text" required/>
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
                                    <div class="col-lg-3">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                Installation Features
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <form role="form">
                                                            <div class="form-group">
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Pipe Depth</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input type="text" class="form-control" id="pipeDepth_spch" name="pipeDepth_spch" onchange='onchange_Input_spch(this)' required> 
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <select class="form-control" id="pipeDepth_sel_spch">
                                                                            <option value="ft">ft</option>
                                                                            <option value="mt">m</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Bored Diameter</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input type="text" class="form-control" id="boredDiameter_spch" onchange='onchange_Input_spch(this)' required> 
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <select class="form-control" id="boredDiameter_sel_spch">
                                                                            <option value="in">in</option>
                                                                            <option value="ft">ft</option>
                                                                            <option value="mt">m</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Installation Temperature</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input type="text" class="form-control" id="installationTemperature_spch" onchange='onchange_Input_spch(this)' required> 
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <select class="form-control" id="installationTemperature_sel_spch">
                                                                            <option value="C">C</option>
                                                                            <option value="F">F</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Design Wheel Load from Single Axle</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input type="text" class="form-control" id="designWheelLoadFromSingleAxle_spch" onchange='onchange_Input_spch(this)' required> 
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <select class="form-control" id="designWheelLoadFromSingleAxle_sel_spch">
                                                                            <option value="ksi">ksi</option>
                                                                            <option value="MPa">MPa</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                
                                                                <div class="form-group">
                                                                    <div class="col-md-12">
                                                                        <label>Design Wheel Load from Tandem Axles</label>
                                                                    </div>
                                                                    <div class="col-md-8">
                                                                        <input type="text" class="form-control" id="designWheelLoadFromTademAxles_spch" onchange='onchange_Input_spch(this)' required> 
                                                                    </div>
                                                                    <div class="col-md-4">
                                                                        <select class="form-control" id="designWheelLoadFromTademAxles_sel_spch">
                                                                            <option value="ksi">ksi</option>
                                                                            <option value="MPa">MPa</option>
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                
                                                                <label>Pavament Type</label>
                                                                <select class="form-control" id="pavementType" name="pavementType">
                                                                    <option value="0" >Flexible</option>
                                                                    <option value="1" >Rigid</option>
                                                                    <option value="2" >None</option>
                                                                </select>
                                                                <br/>
                                                                <label>Impact Factor Method</label>
                                                                <select class="form-control" id="impacfacSel" name="impacfacSel">
                                                                    <option value="0" >ASCE - Highway</option>
                                                                    <option value="1" >User Defined</option>
                                                                </select>
                                                                <br>
                                                                <label>Impact factor Method - User Defined </label>
                                                                <input class="form-control" id="impact_factor_spch" name="impact_factor_spch" type="text" required/>
                                                                <br>
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
                                                Soil Characteristics
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <form role="form">
                                                            <div class="form-group">
                                                                <div  id="div_sl_soilca_spch">                    
                                                                    <select class="form-control" id="soil_Car_spch" name="soil_Car_spch"> </select>
                                                                </div>
                                                                <br/>
                                                                <label>Modulus of Soil Reaction</label>
                                                                <input class="form-control" id="modulusOfSoilReaction_spch" name="modulusOfSoilReaction_spch" type="text" required/>
                                                                <br/>
                                                                <label>Resilent Modulus</label>
                                                                <input class="form-control" id="resilentModulus_spch" name="resilentModulus_spch" type="text" required/>
                                                                <br/>
                                                                <label>Average Unit Weight of Soil</label>
                                                                <input class="form-control" id="averageUnitWeightOfSoil_spch" name="averageUnitWeightOfSoil_spch" type="text" required/>
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
                                                Results
                                            </div>
                                            <div class="panel-body">
                                                <div class="row">
                                                    <form role="form">
                                                        <div class="form-group">
                                                            <div class="col-lg-12">
                                                                <label>Hoop Stress</label>
                                                                <input class="form-control" id="hoopStress_spch" name="hoopStress_spch" type="text" readonly required/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <label>Allowable Hoop Stress</label>
                                                                <input class="form-control" id="allowableHoopStress_spch" name="allowableHoopStress_spch" readonly type="text" required/>
                                                                <br/>
                                                            </div>    
                                                            <div class="col-lg-9">
                                                                <label>Stiffness Factor for Earth Load Circumferential Stress</label>
                                                                <input class="form-control" id="stiffnessFactorForEarthLoadCirncumferentialStress_spch" readonly name="stiffnessFactorForEarthLoadCirncumferentialStress_spch" type="text" required/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-3">
                                                                <br/>
                                                                <input type="button" value="Graph" id="graph1_spch" name="graph1_spch" class="btn btn-info btn-block"/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-9">
                                                                <label>Burial Factor for Earth Load Circumferential Stress</label>
                                                                <input class="form-control" id="burialFactorForEarthLoadCirncumferentialStress_spch" readonly name="burialFactorForEarthLoadCirncumferentialStress_spch" type="text" required/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-3">
                                                                <br/>
                                                                <input type="button" value="Graph" id="graph2_spch" name="graph2_spch" class="btn btn-info btn-block"/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-9">
                                                                <label>Excavation Factor for Earth Load Circumferential Stress</label>
                                                                <input class="form-control" id="excavationFactorForEarthLoadCirncumferentialStress_spch" readonly name="excavationFactorForEarthLoadCirncumferentialStress_spch" type="text" required/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-3">
                                                                <br/>
                                                                <input type="button" value="Graph" id="graph3_spch" name="graph3_spch" class="btn btn-info btn-block"/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <label>Circumferential Stress for Earth Load</label>
                                                                <input class="form-control"id="cirncumferentialStressForEarthLoad_spch" readonly name="cirncumferentialStressForEarthLoad_spch" type="text" required/>
                                                                <br/>
                                                            </div>    
                                                            <div class="col-lg-4">
                                                                <label>Impact Factor</label>
                                                                <input class="form-control" id="impactFactor_spch" name="impactFactor_spch" readonly type="text" required/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-5">
                                                                <br/>   
                                                                <b>Critical Case: Tandem Axles w = 69,4</b>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-3">
                                                                <br/>
                                                                <input type="button" value="Graph" id="graph4_spch" name="graph4_spch" class="btn btn-info btn-block"/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-9">
                                                                <label>Highway Stiffness Factor for Cyclic Circumferential Stress</label>
                                                                <input class="form-control" id="highwayStiffnessFactorForCyclicCircumferentialStress_spch" readonly name="highwayStiffnessFactorForCyclicCircumferentialStress_spch" type="text" required/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-3">
                                                                <br/>
                                                                <input type="button" value="Graph" id="graph5_spch" name="graph5_spch" class="btn btn-info btn-block"/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-9">
                                                                <label>Highway Geometry Factor for Cyclic Circumferential Stress</label>
                                                                <input class="form-control" id="highwayGeometryFactorForCyclicCircumferentialStress_spch" readonly name="highwayGeometryFactorForCyclicCircumferentialStress_spch" type="text" required/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-3">
                                                                <br/>
                                                                <input type="button" value="Graph" id="graph6_spch" name="graph6_spch" class="btn btn-info btn-block"/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-12">
                                                                <label>Cyclic Circumferential Stress</label>
                                                                <input class="form-control" id="CyclicCircumferentialStress_spch" readonly name="CyclicCircumferentialStress_spch" type="text" required/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-9">
                                                                <label>Highway Stiffness Factor for Cyclic Longitudinal Stress</label>
                                                                <input class="form-control" id="highwayStiffnessFactorForCyclicLongitudinalStress_spch" readonly name="highwayStiffnessFactorForCyclicLongitudinalStress_spch" type="text" required/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-3">
                                                                <br/>
                                                                <input type="button" value="Graph" id="graph7_spch" name="graph7_spch" class="btn btn-info btn-block"/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-9">
                                                                <label>Highway Geometry Factor for Cyclic Longitudinal Stress</label>
                                                                <input class="form-control" id="highwayGeometryFactorForCyclicLongitudinalStress_spch" readonly name="highwayGeometryFactorForCyclicLongitudinalStress_spch" type="text" required/>
                                                                <br/>
                                                            </div>
                                                            <div class="col-lg-3">
                                                                <br/>
                                                                <input type="button" value="Graph" id="graph8_spch" name="graph8_spch" class="btn btn-info btn-block"/>
                                                                <br/>
                                                            </div>
                                                            <br/>
                                                            <div class="col-lg-12">
                                                                <label>Cyclic Longitudinal Stress</label>
                                                                <input class="form-control" id="CyclicLongitudinalStress_spch" readonly name="CyclicLongitudinalStress_spch" type="text" required/>
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
                                                                <input class="form-control" id="maximumCircumferentialStress_spch" readonly name="maximumCircumferentialStress_spch" type="text" required/>
                                                                <br/>
                                                                <label>Maximum Longitudinal Stress</label>
                                                                <input class="form-control" id="maximumLongitudinalStress_spch" readonly name="maximumLongitudinalStress_spch" type="text" required/>
                                                                <br/>
                                                                <label>Maximum Radial Stress</label>
                                                                <input class="form-control" id="maximumRadialStress_spch" readonly name="maximumRadialStress_spch" type="text" required/>
                                                                <br/>
                                                                <label>Total Effective Stress</label>
                                                                <input class="form-control" id="totalEffectiveStress_spch" readonly name="totalEffectiveStress_spch" type="text" required/>
                                                                <br/>
                                                                <label>Allowable Effective Stress</label>
                                                                <input class="form-control" id="allowableEffectiveStress_spch" readonly name="allowableEffectiveStress_spch" type="text" required/>
                                                                <br/>
                                                                <label>Fatigue Resistance of Girth Welds</label>
                                                                <input class="form-control" id="fatigueResistanceOfGirthWelds_spch" readonly name="fatigueResistanceOfGirthWelds_spch" type="text" required/>
                                                                <br/>
                                                                <label>Fatigue Resistance of Longitudinal Welds</label>
                                                                <input class="form-control" id="fatigueResistanceOfLongitudinalWelds_spch" readonly name="fatigueResistanceOfLongitudinalWelds_spch" type="text" required/>
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
                                                                <input type="button" value="Calcular" onclick="calculatebtn_spch1()" id="savebtn_spch" name="savebtn_spch" class="btn btn-success btn-block">   
                                                                <input type="button" value="Reportar" id="reportbtn_spch" name="reportbtn_spch" class="btn btn-info btn-block">
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>  
                                        </div>
                                    </div>
                                </div>
                            </div> 

                        </div>
                        <div id="load_Dialog_spch" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_spch" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_spch" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_spch" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_spch" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_spch" title="Delete record" style='display:none;'>
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
         
        $(document).ready(function() {  
            getproyectos(<%=session.getAttribute("idusu")%>,
                        $("#proyects_sel_spch"),
                        $("#error_Dialog_spch"));
                        
            $("#opt_spch").val("1");
            $('#api5l_spch').attr('checked', 'checked');
            load_nps_sel_spch("5l");
            load_grade_sel_spch("gra5l");
            load_deratingf_sel_spch();                    
            load_joinf_sel_spch("jointf5l");
            load_desingf_sel_spch();
            load_soil_spch();
           
           
                    
        });
        function CheckedOp(num){
            if(num==1){
             $("#safetyFactorForEffectiveStress1_spch").val("1.40");
             $("#safetyFactorForGirthWelds1_spch").val("1.40");
             $("#safetyFactorForLongitudinalWelds1_spch").val("1.40");
            }
            if(num==2){
             $("#safetyFactorForEffectiveStress1_spch").val("");
             $("#safetyFactorForGirthWelds1_spch").val("");
             $("#safetyFactorForLongitudinalWelds1_spch").val("");
            }
        }
         function calculatebtn_spch1(){
          // alert($("#pipeGrade_spch").val());
          var unidades = {
              "youngModulusForSteel1_sel_spch": $("#youngModulusForSteel1_sel_spch").val(),
              "operatingPressure_sel_spch": $("#operatingPressure_sel_spch").val(),
              "operatingTemperature_sel_spch": $("#operatingTemperature_sel_spch").val(),
              "pipeOutsideDiameter_sel_spch": $("#pipeOutsideDiameter_sel_spch").val(),
              "pipeWallThickness_sel_spch": $("#pipeWallThickness_sel_spch").val(),
              "pipeDepth_sel_spch": $("#pipeDepth_sel_spch").val(),
              "boredDiameter_sel_spch": $("#boredDiameter_sel_spch").val(),
              "installationTemperature_sel_spch": $("#installationTemperature_sel_spch").val(),
              "designWheelLoadFromSingleAxle_sel_spch": $("#designWheelLoadFromSingleAxle_sel_spch").val(),
              "designWheelLoadFromTademAxles_sel_spch": $("#designWheelLoadFromTademAxles_sel_spch").val()
          };
          
                 var parameter = {
                      "D"     : $("#pipeOutsideDiameter_spch").val(),
                      "P"     : $("#operatingPressure_spch").val(),
                      "p"     : $("#operatingPressure_spch").val(),
                      "t"     : $("#nominalps_sel_spch").val(),
                      "tw"    : $("#pipeWallThickness_spch").val(),
                      "Vs"    : $("#poissonsRatioForSteel1_spch").val(),                      
                      "F"     : $("#designFactor_spch").val(),
                      "SMYS"  : $("#specificiedMinimunYieldStress_spch").val(),
                      "Bd"    : $("#boredDiameter_spch").val(),
                      "E"     : $("#longitudinalJointFactor_spch").val(),
                      "Es"    : $("#youngModulusForSteel1_spch").val(),
                      "Esr"   : $("#modulusOfSoilReaction_spch").val(),
                      "Er"    : $("#resilentModulus_spch").val(),
                      "Ps"    : $("#designWheelLoadFromSingleAxle_spch").val(),
                      "Pt"    : $("#designWheelLoadFromTademAxles_spch").val(),
                      "T"     : $("#temperatureDeratingFactor_spch").val(),
                      "AT"    : $("#coefficientOfThermalExpasion1_spch").val(),
                      "Y"     : $("#averageUnitWeightOfSoil_spch").val(),                   
                      "H"     : $("#pipeDepth_spch").val(),
                      "Fi"    : $("#impact_factor_spch").val(),
                      "PaveTy": $("#pavementType").val(),
                      "lfs"   : $("#longitudinal_jf_spch").val().split(",")[0],
                      "grade" : $("#pipeGrade_spch").val(),
                      "T1"    : $("#operatingTemperature_spch").val(),
                      "T2"    : $("#installationTemperature_spch").val() 
                 
                  };
                  
                  var res = SteelpipelinesCH(parameter, unidades);
                                   
                  
                  $("#hoopStress_spch").val(res[0]);
                  $("#allowableHoopStress_spch").val(res[1]);
                  $("#stiffnessFactorForEarthLoadCirncumferentialStress_spch").val(res[2]);
                  $("#burialFactorForEarthLoadCirncumferentialStress_spch").val(res[3]);
                  $("#excavationFactorForEarthLoadCirncumferentialStress_spch").val(res[4]);
                  $("#cirncumferentialStressForEarthLoad_spch").val(res[5]);
                  $("#impactFactor_spch").val(res[6]);
                  $("#highwayStiffnessFactorForCyclicCircumferentialStress_spch").val(res[7]);
                  $("#highwayGeometryFactorForCyclicCircumferentialStress_spch").val(res[8]);
                  $("#CyclicCircumferentialStress_spch").val(res[9]);
                  $("#highwayStiffnessFactorForCyclicLongitudinalStress_spch").val(res[10]);
                  $("#highwayGeometryFactorForCyclicLongitudinalStress_spch").val(res[11]);
                  $("#CyclicLongitudinalStress_spch").val(res[12]);
                  $("#maximumCircumferentialStress_spch").val(res[13]);
                  $("#maximumLongitudinalStress_spch").val(res[14]);
                  $("#maximumRadialStress_spch").val(res[15]);
                  $("#totalEffectiveStress_spch").val(res[16]);
                  $("#allowableEffectiveStress_spch").val(res[17]);
                  $("#fatigueResistanceOfGirthWelds_spch").val(res[18]);
                  $("#fatigueResistanceOfLongitudinalWelds_spch").val(res[19]);
                 
                  $("#barSt").text(res[20]);
                  $("#barStM").text(res[21]);
                  $("#barPass").text(res[22]);
                  
                  $("#efeSt").text(res[23]);
                  $("#efeStM").text(res[24]);
                  $("#efePass").text(res[25]);
                                   
                  $("#girWe").text(res[26]);
                  $("#girWeM").text(res[27]);
                  $("#girPass").text(res[28]);
                 
                  $("#lonWe").text(res[29]);
                  $("#lonWeM").text(res[30]);
                  $("#lonPass").text(res[31]);
                 
                  
              }
              
                  function load_deratingf_sel_spch(){
                    var parametros = {
                            "combo": "deratingf",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"td_sel_spch\" id=\"td_sel_spch\" onchange=\"onchange_df_spch()\">" + data;
                            $("#div_td_sel_spch").html(newHtml); 
                            $("#temperatureDeratingFactor_spch").val($("#td_sel_spch").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spch"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
               
                function load_in_sel_spch(){
                    var parametros = {
                            "combo": "in",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"md_sel_spch\" id= \"md_sel_spch\" onchange=\"cleanOut_spch()\">" + data;
                            $("#div_md_sel_spch").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"pipeo_sel_spch\" id= \"pipeo_sel_spch\" onchange=\"cleanOut_spch()\">" + data;
                            $("#div_pipeo_sel_spch").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"np_sel_spch\" id= \"np_sel_spch\" onchange=\"cleanOut_spch()\">" + data;
                            $("#div_np_sel_spch").html(newHtml);
                            
                             newHtml = "<select class=\"form-control\" name=\"le_sel_spch\" id= \"le_sel_spch\" onchange=\"cleanOut_spch()\">" + data;
                            $("#div_le_sel_spch").html(newHtml);
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spch"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_temp_sel_spch(){
                    var parametros = {
                            "combo": "temp",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"tempd_sel_spch\" id= \"tempd_sel_spch\" onchange=\"cleanOut_spch()\">" + data;
                            $("#div_tempd_sel_spch").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spch"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_nps_sel_spch(type){
                    var parametros = {
                            "combo": "npsn",
                            "type": type,
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_spch\" id= \"nominalps_sel_spch\" onchange=\"onchange_nps_spch()\">" + data;
                            $("#div_nominalps_sel_spch").html(newHtml);
                             var res =  $("#nominalps_sel_spch option:selected").html();
                             //$("#pipeOutsideDiameter_spch").val(res); 
                               $("#pipeOutsideDiameter_spch").val($("#nominalps_sel_spch").val());
                            load_wt_sel_spch();
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spch"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                
                function load_soil_spch(){
                    var parametros = {
                            "combo": "EErsoil",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                       var newHtml = "<select class=\"form-control\" name=\"soil_Car_spch\" id= \"soil_Car_spch\" onchange=\"onchange_soil_spch()\">" + data;
                       $("#div_sl_soilca_spch").html(newHtml);
                       var res =  $("#soil_Car_spch option:selected").html();
                        $("#modulusOfSoilReaction_spch").val($("#soil_Car_spch").val().split(",")[1]);
                         $("#resilentModulus_spch").val($("#soil_Car_spch").val().split(",")[2]);
                       
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spch"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                
                
                 function load_wt_sel_spch(){
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_spch").val(),
                    "opcion" : "5"
                };
                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    async: false,
                    beforeSend: function (xhr) {                            
                        block("Cargando...");
                    },
                    success: function(data, status, request){ 
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_spch\" id= \"wt_sel_spch\" onchange=\"onchange_wt_spch()\">" + data;
                        $("#div_wt_sel_spch").html(newHtml);                            
                        $("#pipeWallThickness_spch").val($("#wt_sel_spch").val().split(",")[1]);

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_spch"), "Error");
                    },
                    complete: function(){
                        unBlock();
                    }
                 });
            }
                function load_press_sel_spch(){
                    var parametros = {
                            "combo": "pres",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"syms_sel_spch\" id= \"syms_sel_spch\" onchange=\"cleanOut_spch()\">" + data;
                            $("#div_syms_sel_spch").html(newHtml);  
                            
                            newHtml = "<select class=\"form-control\" name=\"mop_sel_spch\" id= \"mop_sel_spch\" onchange=\"cleanOut_spch()\">" + data;
                            $("#div_mop_sel_spch").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spch"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                 
                function load_deratingf_sel_spch(){
                    var parametros = {
                            "combo": "deratingf",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"td_sel_spch\" id=\"td_sel_spch\" onchange=\"onchange_df_spch()\">" + data;
                            $("#div_td_sel_spch").html(newHtml); 
                            $("#temperatureDeratingFactor_spch").val($("#td_sel_spch").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spch"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_grade_sel_spch(idcombo){
                    var parametros = {
                            "combo": idcombo,
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        async: false,
                        data: parametros,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"grade_sel_spch\" id=\"grade_sel_spch\" onchange=\"onchange_gra_spch()\">" + data;
                            $("#div_grade_sel_spch").html(newHtml); 
                            
                            var x = $("#grade_sel_spch").val();
                            $("#specificiedMinimunYieldStress_spch").val(x.split(",")[1]);
                            $("#pipeGrade_spch").val($("#grade_sel_spch option:selected").text());                            
                             var res =  $("#grade_sel_spch option:selected").html();
                             $("#Grade_spch").val(res); 
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spch"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                 function load_defli_sel_spch(idcombo){
                    var parametros = {
                            "combo": idcombo,
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        async: false,
                        data: parametros,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"defli_sel_spch\" id=\"defli_sel_spch\" onchange=\"onchange_defli_spch()\">" + data;
                            $("#div_defli_sel_spch").html(newHtml); 
                            
                            var x = $("#defli_sel_spch").val();
                            $("#defl_lim_spch").val(x.split(",")[1]);
                          
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spch"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_joinf_sel_spch(idcombo){
                    var parametros = {
                            "combo": idcombo,
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"longitudinal_jf_spch\" id=\"longitudinal_jf_spch\" onchange=\"onchange_jf_spch()\">" + data;
                            $("#div_jf_sel_spch").html(newHtml);
                           // $("#longitudinalJointFactor_spch").val($("#longitudinal_jf_spch").val().split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spch"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_uniform_sel_spch(){
                    var parametros = {
                            "combo": "usucc",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"uniform_spch\" id=\"uniform_spch\" onchange=\"onchange_uniform_spch()\">" + data;
                            $("#div_temperature_sel_spch").html(newHtml); 
                             
                            var x = $("#uniform_spch").val();
                             
                            $("#deflectionParameter_spch").val(x.split(",")[1]);
                            $("#bendingParameter_spch").val(x.split(",")[2]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spch"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
               
                function load_desingf_sel_spch(){
                    var parametros = {
                            "combo": "desingf2",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        url: "../manager.jsp",
                        data: parametros,
                        async: false,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class=\"form-control\" name=\"design_factor_sel_spch\" id=\"design_factor_sel_spch\" onchange=\"onchange_defa_spch()\">" + data;
                            $("#div_df_sel_spch").html(newHtml); 
                            
                            var x = $("#design_factor_sel_spch").val();
                            $("#designFactor_spch").val(x.split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_spch"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                 function onchange_Input_spch(inp){
                    
                    var sw = validateDecimal(inp.value);

                    if(sw != true){
                        inp.value = "";
                    }     
                    //onchange_Input_zero(inp);
                    cleanOut_spch();
                    
                }
                function onchange_soil_spch(){
                   $("#modulusOfSoilReaction_spch").val($("#soil_Car_spch").val().split(",")[1]);
                         $("#resilentModulus_spch").val($("#soil_Car_spch").val().split(",")[2]); 
                }
                function onchange_nps_spch(){
                    var res =  $("#nominalps_sel_spch option:selected").html();
                    
                    $("#nominalPipeSize_spch").val(res); 
                    $("#pipeOutsideDiameter_spch").val($("#nominalps_sel_spch").val());
                    load_wt_sel_spch();
                }
                function onchange_coo_spch(){
                    //var res =  $("#cooperE option:selected").html();
                    var res = $("#cooperE").val();
                    $("#appliedDesignSurfacePressure_spch").val(res); 
                }
                function onchange_wt_spch(){
                    $("#pipeWallThickness_spch").val($("#wt_sel_spch").val().split(",")[1]);
                }
                
                function onchange_gra_spch(){
                    var x = $("#grade_sel_spch").val();
                            $("#specificiedMinimunYieldStress_spch").val(x.split(",")[1]);
                            $("#pipeGrade_spch").val($("#grade_sel_spch option:selected").text());                            
                             var res =  $("#grade_sel_spch option:selected").html();
                             $("#Grade_spch").val(res); 
                }
                function onchange_defli_spch(){
                    var x = $("#defli_sel_spch").val();
                            $("#defl_lim_spch").val(x.split(",")[1]);
                           /* var res =  $("#grade_sel_spch option:selected").html();
                             $("#gra_pipeop_spch").val(x.split(",")[1]); */
                   // cleanOut_spch();
                }
                
                function onchange_jf_spch(){
                    $("#longitudinalJointFactor_spch").val($("#longitudinal_jf_spch").val().split(",")[1]);
                    //cleanOut_spch();
                }
                
                function onchange_df_spch(){
                    $("#temperatureDeratingFactor_spch").val($("#td_sel_spch").val().split(",")[1]);
                    //cleanOut_spch();
                }
                
                function onchange_defa_spch(){
                    $("#designFactor_spch").val($("#design_factor_sel_spch").val().split(",")[1]);
                   // cleanOut_spch();
                }
               
                 function onchange_uniform_spch(){
                  var x = $("#uniform_spch").val();
                             
                            $("#deflectionParameter_spch").val(x.split(",")[1]);
                            $("#bendingParameter_spch").val(x.split(",")[2]);  
                }
                function changePav(val){
                    if(val==1){
                       // $("#paviment_spch").val("1.5");
                        $("#impactFactor_spch").val("1.5");
                    }else{
                        $("#impactFactor_spch").val("1");
                    }
                }
                
                function cleanOut_spch() {
                    $("input[readonly]").val("");
                }
    </script>     
</html>