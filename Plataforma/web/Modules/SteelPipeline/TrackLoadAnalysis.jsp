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
                                <h2><strong>Steel Pipeline Crossings: </strong>Track Load Analysis</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_tla()">
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
                                                <div id="div-table_tla"></div>
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
                                <input  class="form-control" type="text" id="description_tla" name="description_tla"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_tla" name="proyects_sel_tla"> </select>
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
                                                            Pipeline Properties
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <form role="form">
                                                                        <div class="form-group">

                                                                            <div id="Lpipe">

                                                                                <div class="form-group">
                                                                                    <div class="col-md-12">
                                                                                        <label>Nominal Pipe Size:</label> 
                                                                                    </div>
                                                                                    <div class="col-md-12">
                                                                                        <div id="div_nominalps_sel_tla">
                                                                                            <select class="form-control" id="nominalps_sel_tla" name="nominalps_sel_tla"> </select></div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="form-group">
                                                                                    <div class="col-lg-12">                      
                                                                                        <label>Wall Thickness [.in]:</label>
                                                                                    </div> 
                                                                                    <div class="col-lg-12" id="div_wt_sel_tla">
                                                                                        <select class="form-control" id="wt_sel_tla" name="wt_sel_tla"> </select>
                                                                                    </div>
                                                                                </div> 
                                                                                <div class="form-group">
                                                                                    <div class="col-md-12">
                                                                                        <label>Grade:</label> 
                                                                                    </div>
                                                                                    <div class="col-md-12">
                                                                                        <div id="div_grade_sel_tla">
                                                                                            <select class="form-control" id="grade_sel_tla" name="grade_sel_tla"> </select>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>    
                                                                            <!--div class="form-group">
                                                                                <div class="col-md-12">
                                                                                    <label>Design Class Location:</label> 
                                                                                </div>
                                                                                <div class="col-md-12">
                                                                                    <div id="div_desing_sel_tla">
                                                                                        <select class="form-control" id="desing_sel_tla" name="desing_sel_tla"> 
                                                                                            <option>1</option>
                                                                                            <option>2</option>
                                                                                            <option>3</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                            </div-->
                                                                            <!--div class="form-group">
                                                                                <div class="col-md-12">
                                                                                    <label>Operating Class:</label> 
                                                                                </div>
                                                                                <div class="col-md-12">
                                                                                    <div id="div_operating_sel_tla">
                                                                                        <select class="form-control" id="desing_sel_tla" name="operating_sel_tla"> 
                                                                                            <option>1</option>
                                                                                            <option>2</option>
                                                                                            <option>3</option>
                                                                                            <option>4</option>
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                            </div-->

                                                                            <!-- div class="form-group">
                                                                                <div class="col-md-12">
                                                                                    <label>Soil Type:</label> 
                                                                                </div>
                                                                                <div class="col-md-12">
                                                                                    <div id="div_soiltype_sel_tla">
                                                                                        <div id="div_cole_sel_tla" name="div_cole_sel_tla">
                                                                                            <select class="form-control" id="sel_emp_tla" name="sel_emp_tla"> </select>
                                                                                        </div>
                                        
                                                                                    </div>
                                                                                </div>
                                                                            </div -->

                                                                            <!-- div class="form-group">
                                                                                <div class="col-md-12">
                                                                                    <label>Crossing Construction Type:</label> 
                                                                                </div> 
                                                                                <div class="col-md-12">
                                                                                    <div id="div_crocoty_sel_tla">
                                                                                        <select class="form-control" id="crocoty_sel_tla" name="crocoty_sel_tla"> 
                                                                                        </select>
                                                                                    </div>
                                                                                </div>
                                                                            </div-->
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div> 
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading"> Pipeline Data </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <form role="form">
                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Pipe Outside Diameter:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" name="pipeOutsideDiameter_tl" id="pipeOutsideDiameter_tl" class="form-control" required>
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_pipeOutsideDiameter_sel_tl">
                                                                                <select class="form-control" id="pipeOutsideDiameter_sel_tl" name="pipeOutsideDiameter_sel_tl" onchange='cleanOut_tla()'> </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Pipe Wall Thickness:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" name="pipeWallThickness_tl" id="pipeWallThickness_tl" class="form-control" required>
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_pipeWallThickness_sel_tl">
                                                                                <select class="form-control" id="pipeWallThickness_sel_tl" name="pipeWallThickness_sel_tl" onchange='cleanOut_tla()'> </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Specified Minimum Yield Strength:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" name="specificiedMinimunYieldStrenght_tl" id="specificiedMinimunYieldStrenght_tl" class="form-control" required>
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_specificiedMinimunYieldStrenght_sel_tl">
                                                                                <select class="form-control" id="specificiedMinimunYieldStrenght_sel_tl" name="specificiedMinimunYieldStrenght_sel_tl" onchange='cleanOut_tla()'> </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Maximum Allowable Internal Stress %:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" name="maximumAllowableInternalStress_tl" id="maximumAllowableInternalStress_tl" class="form-control" required>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Maximum Allowable Combined Stress %:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" name="maximumAllowableCombinedStress_tl" id="maximumAllowableCombinedStress_tl" class="form-control" required>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Km-Friction Force Coefficient:</label>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <input type="text" name="frictionForceCoefficient_tl" id="frictionForceCoefficient_tl" class="form-control" required>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Weight per Unit of Backfill:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" name="weigthPerUnitOfBackfill_tl" id="weigthPerUnitOfBackfill_tl" class="form-control" required>
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_weigthPerUnitOfBackfill_sel_tl">
                                                                                <select class="form-control" id="weigthPerUnitOfBackfill_sel_tl" name="weigthPerUnitOfBackfill_sel_tl" onchange='cleanOut_tla()'>
                                                                                    <option>lbs/ft^3</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Impact Factor:</label>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <input type="text" name="impactFactor_tl" id="impactFactor_tl" class="form-control" required>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Operating Weight (Object with Tracks):</label>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <input type="text" name="operatingWeight_tl" id="operatingWeight_tl" class="form-control" required>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Width of Standard Track Shoe:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" name="widthOfStandarTrackShoe_tl" id="widthOfStandarTrackShoe_tl" class="form-control" required>
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_widthOfStandarTrackShoe_sel_tl">
                                                                                <select class="form-control" id="widthOfStandarTrackShoe_sel_tl" name="widthOfStandarTrackShoe_sel_tl" onchange='cleanOut_tla()'> </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Length of the Track on the Ground:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" name="lengthOfTheTrackOnTheGround_tl" id="lengthOfTheTrackOnTheGround_tl" class="form-control" required>
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_lengthOfTheTrackOnTheGround_sel_tl">
                                                                                <select class="form-control" id="lengthOfTheTrackOnTheGround_sel_tl" name="lengthOfTheTrackOnTheGround_sel_tl" onchange='cleanOut_tla()'> </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Kb-Bending Coefficient:</label>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <input type="text" name="bendingCoefficient_tl" id="bendingCoefficient_tl" class="form-control" required>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Kz-Deflection Coefficient:</label>
                                                                            </div>
                                                                            <div class="col-md-12">
                                                                                <input type="text" name="deflectionCoefficient_tl" id="deflectionCoefficient_tl" class="form-control" required>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>Pipe Internal Pressure:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" name="pipeInternalPressure_tl" id="pipeInternalPressure_tl" class="form-control" required>
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_pipeInternalPressure_sel_tl">
                                                                                <select class="form-control" id="pipeInternalPressure_sel_tl" name="pipeInternalPressure_sel_tl" onchange='cleanOut_tla()'>
                                                                                    <option>psig</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>H-Vertical Depth of the Soil Cover:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" name="verticaDepthOfTheSoilCover_tl" id="verticaDepthOfTheSoilCover_tl" class="form-control" required>
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_verticaDepthOfTheSoilCover_sel_tl">
                                                                                <select class="form-control" id="verticaDepthOfTheSoilCover_sel_tl" name="verticaDepthOfTheSoilCover_sel_tl" onchange='cleanOut_tla()'>
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="form-group">
                                                                            <div class="col-md-12">
                                                                                <label>B-Trench Width:</label>
                                                                            </div>
                                                                            <div class="col-md-8">
                                                                                <input type="text" name="trenchWidth_tl" id="trenchWidth_tl" class="form-control" required>
                                                                            </div>
                                                                            <div class="col-md-4" id = "div_trenchWidth_sel_tl">
                                                                                <select class="form-control" id="trenchWidth_sel_tl" name="trenchWidth_sel_tl" onchange='cleanOut_tla()'>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>  
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading"> Include Longitudinal Bending Stress in Calculation </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <form role="form">
                                                                        <div class="form-group">
                                                                            <div class="radio-inline" >
                                                                                <label><input type="radio" id="Cyes" name="Coption_tl" onclick="Checked()">Yes</label>
                                                                            </div>
                                                                            <div class="radio-inline">
                                                                                <label><input type="radio" id="CNo" name="Coption_tl" onclick="Checked()">No</label>
                                                                            </div>
                                                                            <br/>
                                                                            <div id="ifyes">
                                                                                <label>X - Longitudinal Distance:</label>
                                                                                <input class="form-control" id="longitudinalDistance_tl" name="longitudinalDistance_tl" type="text" required/>
                                                                                <br/>
                                                                                <label>Y - Vertical Deflection:</label>
                                                                                <input class="form-control" id="verticalDeflection_tl" name="verticalDeflection_tl" type="text" required/>
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Results                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <form role="form">
                                                                        <div class="form-group">
                                                                            <label>Load Coefficient:</label>
                                                                            <input class="form-control" id="loadCoefficient_tl" name="loadCoefficient_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>Load due to Overburden:</label>
                                                                            <input class="form-control" id="loadDueToOverburden_tl" name="loadDueToOverburden_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>m - Influence Factor:</label>
                                                                            <input class="form-control" id="mInfluenceFactor_tl" name="mInfluenceFactor_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>n - Influence Factor:</label>
                                                                            <input class="form-control" id="nInfluenceFactor_tl" name="nInfluenceFactor_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>Influence Coefficient:</label>
                                                                            <input class="form-control" id="influenceCoefficient_tl" name="influenceCoefficient_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>Max Static Pressure:</label>
                                                                            <input class="form-control" id="maxStaticPressure_tl" name="maxStaticPressure_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>Total Track Load:</label>
                                                                            <input class="form-control" id="totalTrackLoad_tl" name="totalTrackLoad_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>Total Load:</label>
                                                                            <input class="form-control" id="totalLoad_tl" name="totalLoad_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>Longitudinal Bending Stress:</label>
                                                                            <input class="form-control" id="longitudinalBendingStress_tl" name="longitudinalBendingStress_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>Circumferential Stress:</label>
                                                                            <input class="form-control" id="circumferentialStress_tl" name="circumferentialStress_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>Hoop Stress:</label>
                                                                            <input class="form-control" id="hoopStress_tl" name="hoopStress_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>Total Circumferential Stress:</label>
                                                                            <input class="form-control" id="totalCircumferentialStress_tl" name="totalCircumferentialStress_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>Total Combined Stress:</label>
                                                                            <input class="form-control" id="totalCombinedStress_tl" name="totalCombinedStress_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <label>Percent of SMYS:</label>
                                                                            <input class="form-control" id="percentOfSYMS_tl" name="percentOfSYMS_tl" type="text" required readonly/>
                                                                            <br/>
                                                                            <input class="form-control" id="isSafe_tl" name="isSafe_tl" type="text" required readonly/>

                                                                        </div>
                                                                    </form>
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

                                                <input type="button" value="Calculate" id="calculatebtn_tl" name="calculatebtn_tl" class="btn btn-info btn-block"  onclick="calculate_tl()" >
                                                <input type="button" value="Save" id="savebtn_tl" name="savebtn_tl" class="btn btn-success btn-block">   
                                                <input type="button" value="Reportar" id="reportbtn_tl" name="reportbtn_tl" class="btn btn-warning btn-block">   
                                                

                                                <input type="button" id="cleanAllBtn_tl" name="cleanBtn_tl" value="Clean All Data" onclick="cleanAll_tl()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_tl" name="cleanBtn_tl" value="Clean Input Data" onclick="cleanIn_tl()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_tl" name="cleanBtn_tl" value="Clean Output Data" onclick="cleanOut_tl()" class="btn btn-warning btn-block">

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_tl" name="id_tl" value="-1">  
                            <input type="hidden" id="opt_tl" name="opt_tl" value="1">
                        </div>
                        <div id="load_Dialog_tl" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_tl" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_tl" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_tl" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_tl" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_tl" title="Delete record" style='display:none;'>
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
                        $("#proyects_sel_tla"),
                        $("#error_Dialog_tla"));

                $("#opt_tla").val("1");
                $('#api5l_tla').attr('checked', 'checked');
                load_nps_sel_tla("5l");
                //load_np_sel_tla("soiltype44");
                //load_crocoty_sel_tla("kzdeco44");
                load_grade_sel_tla("gra5l");
                load_in_sel_tl();
                load_presf_sel_tl();
                //onchange_wt_tla();
                //onchange_gra_tla();
                //load_joinf_sel_tla("jointf5l");
                //load_desingf_sel_tla();

            });
            
            function load_in_sel_tl() {
                var parametros = {
                    "combo": "in",
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
                        var newHtml = "<select class='form-control' id='pipeOutsideDiameter_sel_tl' name='pipeOutsideDiameter_sel_tl' onchange='cleanOut_tla()'>" + data;
                        $("#div_pipeOutsideDiameter_sel_tl").html(newHtml);

                        newHtml = "<select class='form-control' id='pipeWallThickness_sel_tl' name='pipeWallThickness_sel_tl' onchange='cleanOut_tla()'>" + data;
                        $("#div_pipeWallThickness_sel_tl").html(newHtml);
                        
                        newHtml = '<select class="form-control" id="widthOfStandarTrackShoe_sel_tl" name="widthOfStandarTrackShoe_sel_tl" onchange="cleanOut_tla()">' + data;
                        $("#div_widthOfStandarTrackShoe_sel_tl").html(newHtml);
                        
                        newHtml = '<select class="form-control" id="lengthOfTheTrackOnTheGround_sel_tl" name="lengthOfTheTrackOnTheGround_sel_tl" onchange="cleanOut_tla()">' + data;
                        $("#div_lengthOfTheTrackOnTheGround_sel_tl").html(newHtml);
                        
                        newHtml = '<select class="form-control" id="verticaDepthOfTheSoilCover_sel_tl" name="verticaDepthOfTheSoilCover_sel_tl" onchange="cleanOut_tla()">' + data;
                        $("#div_verticaDepthOfTheSoilCover_sel_tl").html(newHtml);
                        
                        newHtml = '<select class="form-control" id="trenchWidth_sel_tl" name="trenchWidth_sel_tl" onchange="cleanOut_tla()">' + data;
                        $("#div_trenchWidth_sel_tl").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_tl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function load_presf_sel_tl() {
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
                        var newHtml = '<select class="form-control" id="specificiedMinimunYieldStrenght_sel_tl" name="specificiedMinimunYieldStrenght_sel_tl" onchange="cleanOut_tla()">' + data;
                        $("#div_specificiedMinimunYieldStrenght_sel_tl").html(newHtml);
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_tl"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            
            function calculate_tl() {
                var variables = {
                    "TextBox5": $("#pipeOutsideDiameter_tl").val(),
                    "TextBox6": $("#pipeWallThickness_tl").val(),
                    "TextBox7": $("#specificiedMinimunYieldStrenght_tl").val(),
                    "TextBox8": $("#maximumAllowableInternalStress_tl").val(),
                    "TextBox9": $("#maximumAllowableCombinedStress_tl").val(),
                    "TextBox10": $("#frictionForceCoefficient_tl").val(),
                    "TextBox11": $("#weigthPerUnitOfBackfill_tl").val(),
                    "TextBox12": $("#impactFactor_tl").val(),
                    "TextBox13": $("#operatingWeight_tl").val(),
                    "TextBox14": $("#widthOfStandarTrackShoe_tl").val(),
                    "TextBox15": $("#lengthOfTheTrackOnTheGround_tl").val(),
                    "TextBox16": $("#bendingCoefficient_tl").val(),
                    "TextBox17": $("#deflectionCoefficient_tl").val(),
                    "TextBox18": $("#pipeInternalPressure_tl").val(),
                    "TextBox19": $("#verticaDepthOfTheSoilCover_tl").val(),
                    "TextBox20": $("#trenchWidth_tl").val(),
                    "TextBox21": $("#longitudinalDistance_tl").val(),
                    "TextBox22": $("#verticalDeflection_tl").val()
                };
                
                var unidades = {
                    "pipeOutsideDiameter_sel_tl": $("#pipeOutsideDiameter_sel_tl").val().split(",")[1],
                    "pipeWallThickness_sel_tl": $("#pipeWallThickness_sel_tl").val().split(",")[1],
                    "specificiedMinimunYieldStrenght_sel_tl": $("#specificiedMinimunYieldStrenght_sel_tl").val().split(",")[1],
                    "widthOfStandarTrackShoe_sel_tl": $("#widthOfStandarTrackShoe_sel_tl").val().split(",")[1],
                    "lengthOfTheTrackOnTheGround_sel_tl": $("#lengthOfTheTrackOnTheGround_sel_tl").val().split(",")[1],
                    "verticaDepthOfTheSoilCover_sel_tl": $("#verticaDepthOfTheSoilCover_sel_tl").val().split(",")[1],
                    "trenchWidth_sel_tl": $("#trenchWidth_sel_tl").val().split(",")[1]
                };

                var res = trackliadanalysis(variables, unidades);

                $("#loadCoefficient_tl").val(res[0]);
                $("#loadDueToOverburden_tl").val(res[1]);
                $("#mInfluenceFactor_tl").val(res[2]);
                $("#nInfluenceFactor_tl").val(res[3]);
                $("#influenceCoefficient_tl").val(res[4]);
                $("#maxStaticPressure_tl").val(res[5]);
                $("#totalTrackLoad_tl").val(res[6]);
                $("#totalLoad_tl").val(res[7]);
                $("#longitudinalBendingStress_tl").val(res[8]);
                $("#circumferentialStress_tl").val(res[9]);
                $("#hoopStress_tl").val(res[10]);
                $("#totalCircumferentialStress_tl").val(res[11]);
                $("#totalCombinedStress_tl").val(res[12]);
                $("#percentOfSYMS_tl").val(res[13]);
                $("#isSafe_tl").val(res[14]);

                // $("#influenceCoefficient_tl").val(res[4]);
                //$("#pen_depth_milpd").val(res[5]);
                show_OkDialog($("#calculate_Dialog_milpd"), "Proceso satisfactorio");
            }
            
            function load_nps_sel_tla(type) {
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
                        var newHtml = "<select class=\"form-control\" name=\"nominalps_sel_tla\" id= \"nominalps_sel_tla\" onchange=\"onchange_nps_tla()\">" + data;
                        $("#div_nominalps_sel_tla").html(newHtml);
                        onchange_nps_tla();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_tla"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_wt_sel_tla() {
                var parametros = {
                    "combo": "wtn",
                    "nps": $("#nominalps_sel_tla").val(),
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
                        var newHtml = "<select class=\"form-control\" name=\"wt_sel_tla\" id= \"wt_sel_tla\" onchange=\"onchange_wt_tla()\">" + data;
                        $("#div_wt_sel_tla").html(newHtml);
                        onchange_wt_tla();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_tla"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function load_grade_sel_tla(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"grade_sel_tla\" id=\"grade_sel_tla\" onchange=\"onchange_gra_tla()\">" + data;
                        $("#div_grade_sel_tla").html(newHtml);

                        onchange_gra_tla();
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_tla"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }

            function onchange_nps_tla() {
                var res = $("#nominalps_sel_tla option:selected").html();
                $("#pipeOutsideDiameter_tl").val($("#nominalps_sel_tla").val());
                load_wt_sel_tla();
            }
            function onchange_nps44_tla() {
                var res = $("#sel_emp_tla option:selected").html();
                var po = $("#sel_emp_tla").val().trim().split(",")[1];
                var po1 = $("#sel_emp_tla").val().trim().split(",")[2];
                $("#frictionForceCoefficient_tl").val(po);
                $("#weigthPerUnitOfBackfill_tl").val(po1);
            }
            function onchange_wt_tla() {
                $("#pipeWallThickness_tl").val($("#wt_sel_tla").val().split(",")[1]);
            }
            function onchange_gra_tla() {
                $("#specificiedMinimunYieldStrenght_tl").val($("#grade_sel_tla").val().split(",")[1]);
            }
            function onchange_cocoty44_tla() {
                var po = $("#crocoty_sel_tla").val().trim().split(",")[1];
                var po1 = $("#crocoty_sel_tla").val().trim().split(",")[2];
                $("#bendingCoefficient_tl").val(po);
                $("#deflectionCoefficient_tl").val(po1);
            }
            function load_np_sel_tla(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"sel_emp_tla\" id= \"sel_emp_tla\" onchange=\"onchange_nps44_tla()\">" + data;

                        $("#div_cole_sel_tla").html(newHtml);
                        var po = $("#sel_emp_tla").val().trim().split(",")[1];
                        var po1 = $("#sel_emp_tla").val().trim().split(",")[2];
                        $("#frictionForceCoefficient_tl").val(po);
                        $("#weigthPerUnitOfBackfill_tl").val(po1);
                        onchange_nps_tla();

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_tla"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function load_crocoty_sel_tla(idcombo) {
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
                        var newHtml = "<select class=\"form-control\" name=\"crocoty_sel_tla\" id= \"crocoty_sel_tla\" onchange=\"onchange_cocoty44_tla()\">" + data;

                        $("#div_crocoty_sel_tla").html(newHtml);
                        var po = $("#crocoty_sel_tla").val().trim().split(",")[1];
                        var po1 = $("#crocoty_sel_tla").val().trim().split(",")[2];
                        $("#bendingCoefficient_tl").val(po);
                        $("#deflectionCoefficient_tl").val(po1);
                        onchange_cocoty44_tla();

                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_tla"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
            function onchange_cocty44_tla() {
                var po = $("#crocoty_sel_tla").val().trim().split(",")[1];
                var po1 = $("#crocoty_sel_tla").val().trim().split(",")[2];
                $("#bendingCoefficient_tl").val(po);
                $("#deflectionCoefficient_tl").val(po1);
            }
        </script>

</html>