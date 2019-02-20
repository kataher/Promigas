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
                                <h2><strong>Surcharge Live Load on Buried PE Pipe & Pipeline Crossings: </strong> 9.1. PE Pipe - Pull Force & Installation Stress Analysis</h2>
                            </div>
                            <div class="col-lg-3"> 
                                <br>
                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_ins()">
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
                                                <div id="div-tablpaecro_ins"></div>
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
                                <input  class="form-control" type="text" id="description_ins" name="description_ins"><br>
                                Projects: 
                                <select class="form-control" id="proyects_sel_ins" name="proyects_sel_ins"> </select>
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
                                                            References
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <form role="form">
                                                                        <div class="form-group col-lg-12">                                        
                                                                            <img id="img_ins" src="../../img/installation.PNG" class="img-rounded" alt="Cinque Terre" width="730" height="200">    
                                                                        </div>

                                                                        <div class="form-group col-lg-12">
                                                                            <div class="panel panel-default">
                                                                                <div class="panel-heading">
                                                                                    Reference: ASTM F 1962 - 05; Table X1.1
                                                                                </div>
                                                                                <div class="panel-body">
                                                                                    <div class="row">
                                                                                        <div class="col-lg-12">

                                                                                            <div class="form-group">
                                                                                                <div class="checkbox">                               
                                                                                                    <input type="radio" id = "hdppaecro_ins" name="meluw_ins" value="hdp" required onchange="onchange_reference_ins()"> HDPE
                                                                                                    <input type="radio" id = "mdppaecro_ins" name="meluw_ins" value="mdp" required onchange="onchange_reference_ins()"> MDPE<br>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Typical Aparent Modulus of Elasticity [psi]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-8" id="div_ae_sel_ins">
                                                                                                    <select class="form-control" id="ae_sel_ins" name="ae_sel_ins"> </select>
                                                                                                </div>
                                                                                                <div class="col-md-4">
                                                                                                    <input  class="form-control" type="text" id="apaecro_ins" name="apaecro_ins" disabled><br>
                                                                                                </div>

                                                                                            </div>

                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>HDPE Typical Safe Pull Stress [psi]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-8" id="div_ts_sel_ins">
                                                                                                    <select class="form-control" id="ts_sel_ins" name="ts_sel_ins"> </select>
                                                                                                </div>
                                                                                                <div class="col-md-4">
                                                                                                    <input  class="form-control" type="text" id="ts_ins" name="ts_ins" disabled><br>
                                                                                                </div>

                                                                                            </div>

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
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading"> 
                                                            Input Parameters 
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">

                                                                    <form role="form">

                                                                        <div class="form-group col-lg-6">
                                                                            <div class="panel panel-default">
                                                                                <div class="panel-heading">
                                                                                    Pipe Properties
                                                                                </div>
                                                                                <div class="panel-body">
                                                                                    <div class="row">
                                                                                        <div class="col-lg-12">                                   
                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Pipe Outside Diamenter [in]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-6">
                                                                                                    <input class="form-control" value= "8.625" type="text" id="pod_ins" name="pod_ins" onchange="onchange_Input_ins(this)" required>
                                                                                                </div>
                                                                                                <div class="col-md-6" id="div_pod_sel_ins">
                                                                                                    <select class="form-control" id="pod_sel_ins" name="pod_sel_ins" onchange="cleanOut_ins()"> </select>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Minimun Pipe Wall Thickness [in]: </label>
                                                                                                </div>
                                                                                                <div class="col-md-6">
                                                                                                    <input  class="form-control" value="0.78" type="text" id="mpwt_ins" name="mpwt_ins" onchange="onchange_Input_ins(this)" required><br>
                                                                                                </div>
                                                                                                <div class="col-md-6" id="div_mpwt_sel_ins">
                                                                                                    <select class="form-control" id="mpwt_sel_ins" name="mpwt_sel_ins" onchange="cleanOut_ins()"> </select>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Standart Dimension Ratio:</label>
                                                                                                </div>
                                                                                                <div class="col-md-12">
                                                                                                    <input class="form-control" type="text" value="11.0" id="bd_ins" name="bd_ins" onchange="validate_pres_ins(this)" required>
                                                                                                </div>
                                                                                            </div>

                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Specific Gravity of the Pipe Material:</label>
                                                                                                </div>
                                                                                                <div class="col-md-12">
                                                                                                    <input class="form-control" value="1.1" type="text" id="eg_ins" name="eg_ins" onchange="validate_pres_ins(this)" required>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Poisson´s Ratio:</label>
                                                                                                </div>
                                                                                                <div class="col-md-6" id="div_pr_sel_ins">
                                                                                                    <select class="form-control" id="pr_sel_ins" name="pr_sel_ins" onchange="onchange_forsoil_ins()"></select>
                                                                                                </div>
                                                                                                <div class="col-md-6">
                                                                                                    <input  class="form-control" type="text" id="pr_ins" name="pr_ins" onchange="onchange_Input_ins(this)" required>
                                                                                                </div>

                                                                                            </div>


                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Long-Term Apparent Modulus of Elasticity [psi]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-12">
                                                                                                    <input class="form-control" value="51000" type="text" id="ampaecro_ins" name="ampaecro_ins" onchange="validate_pres_ins(this)" required>
                                                                                                </div>
                                                                                            </div>

                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Allowable/Safe Pull Stress [psi]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-12">
                                                                                                    <input class="form-control" value="1100" type="text" id="asps_ins" name="asps_ins" onchange="validate_pres_ins(this)" required>
                                                                                                </div>
                                                                                            </div>

                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Percent of Pipe [%]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-12">
                                                                                                    <input class="form-control" value="2" id="perp_ins" name="perp_ins" onchange="validate_pres_ins(this)" required>
                                                                                                </div>            
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div> 
                                                                            </div></div>
                                                                        <div class="form-group col-lg-6">
                                                                            <div class="panel panel-default">
                                                                                <div class="panel-heading">
                                                                                    Borepath Profile
                                                                                </div>
                                                                                <div class="panel-body">
                                                                                    <div class="row">
                                                                                        <div class="col-lg-12">                                   
                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>H - Depth of the Bore [ft]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-6">
                                                                                                    <input class="form-control" value="20" type="text" id="h_ins" name="h_ins" onchange="onchange_Input_ins(this)" required>
                                                                                                </div>
                                                                                                <div class="col-md-6" id = "div_h_sel_ins">
                                                                                                    <select class="form-control" id="h_sel_ins" name="h_sel_ins" onchange="cleanOut_ins()"> </select>
                                                                                                </div>
                                                                                            </div>

                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Pipe Entry Angle (HDD Exit Angle) [°]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-12">
                                                                                                    <input class="form-control" value="8" type="text" id="paecro_ins" name="paecro_ins" onchange="validate_pres_ins(this)" required>
                                                                                                </div>            
                                                                                            </div>

                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Pipe Exit Angle (HDD Entry Angle) [°]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-12">
                                                                                                    <input  class="form-control" value="12" type="text" id="paex_ins" name="paex_ins" onchange="onchange_Input_ins(this)" required>
                                                                                                </div>

                                                                                            </div>               



                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>L1 - Pipe Drag on Surface [ft]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-6">
                                                                                                    <input class="form-control"  value="20" type="text" id="l1_ins" name="l1_ins" onchange="validate_pres_ins(this)" required>
                                                                                                </div>
                                                                                                <div class="col-md-6" id = "div_l1_sel_ins">
                                                                                                    <select class="form-control" id="l1_sel_ins" name="l1_sel_ins" onchange="cleanOut_ins()"> </select>
                                                                                                </div>
                                                                                            </div>

                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Length of the Crossing [ft]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-6">
                                                                                                    <input class="form-control" value="500" type="text" id="cro_ins" name="cro_ins" onchange="validate_pres_ins(this)" required>
                                                                                                </div>
                                                                                                <div class="col-md-6" id = "div_cro_sel_ins">
                                                                                                    <select class="form-control" id="cro_sel_ins" name="cro_sel_ins" onchange="cleanOut_ins()"> </select>
                                                                                                </div>
                                                                                            </div>    
                                                                                            <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Backreamed Borehole Diameter [in]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-6">
                                                                                                    <input class="form-control"  value="14" type="text" id="bac_ins" name="bac_ins" onchange="validate_pres_ins(this)" required>
                                                                                                </div>
                                                                                                <div class="col-md-6" id = "div_bac_sel_ins">
                                                                                                    <select class="form-control" id="bac_sel_ins" name="bac_sel_ins" onchange="cleanOut_ins()"> </select>
                                                                                                </div>
                                                                                            </div>



                                                                                        </div>
                                                                                    </div>
                                                                                </div> 
                                                                            </div></div>
                                                                        <div class="form-group col-lg-6">
                                                                            <div class="panel panel-default">
                                                                                <div class="panel-heading">
                                                                                    Water and Mud Properties
                                                                                </div>
                                                                                <div class="panel-body">
                                                                                    <div class="row">
                                                                                        <div class="col-lg-12">   <div class="form-group">
                                                                                                <div class="col-md-12">
                                                                                                    <label>Unit Weigth of Water [lb/ft3]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-12">
                                                                                                    <input class="form-control" value="62.40" type="text" id="uw_ins" name="uw_ins" onchange="validate_pres_ins(this)" required>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">

                                                                                                <div class="col-md-12">
                                                                                                    <label>Specific Gravity of the Mud Slurry:</label>
                                                                                                </div>
                                                                                                <div class="col-md-12">
                                                                                                    <input class="form-control" value="1.2" type="text" id="sgmd_ins" name="sgmd_ins" onchange="onchange_Input_ins(this)" required>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">

                                                                                                <div class="col-md-12">
                                                                                                    <label>Coefficient of Friction at the Surface:</label>
                                                                                                </div>
                                                                                                <div class="col-md-12">
                                                                                                    <input class="form-control" value="0.2" type="text" id="cf_ins" name="cf_ins" onchange="onchange_Input_ins(this)" required>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">

                                                                                                <div class="col-md-12">
                                                                                                    <label>Coefficient of Friction Within Borehole:</label>
                                                                                                </div>
                                                                                                <div class="col-md-12">
                                                                                                    <input class="form-control" value="0.3" type="text" id="cfb_ins" name="cfb_ins" onchange="onchange_Input_ins(this)" required>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="form-group">

                                                                                                <div class="col-md-12">
                                                                                                    <label>Hydrokynetic Pressure [psi]:</label>
                                                                                                </div>
                                                                                                <div class="col-md-12">
                                                                                                    <input class="form-control" value="10" type="text" id="hy_ins" name="hy_ins" onchange="onchange_Input_ins(this)" required>
                                                                                                </div>
                                                                                            </div>



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
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Results                        
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-6">

                                                                    <div class="form-group">
                                                                        <label> Average Radius of Curvature for Path at Pipe Entry [ft]:</label>
                                                                        <input type="text" id="averen_ins" name="averen_ins" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label> Average Radius of Curvature for Path at Pipe Exit [ft]:</label>
                                                                        <input type="text" id="averex_ins" name="averex_ins" readonly required class="form-control">
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label> L2 - Horizontal Distance to Active Desired Depth [ft]</label>
                                                                        <input type="text" id="l2_ins" name="l2_ins" readonly required class="form-control">
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label> L4 - Horizontal Distance to Active Rise to the Surface [ft]</label>
                                                                        <input type="text" id="l4_ins" name="l4_ins" readonly required class="form-control">
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label> L3 - Aditional Distance Traversed at Desired Depth [ft]</label>
                                                                        <input type="text" id="l3_ins" name="l3_ins" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label> Bending Strain [in/in]:</label>
                                                                        <input type="text" id="bs_ins" name="bs_ins" readonly required class="form-control">
                                                                    </div>                                    <div class="form-group">
                                                                        <label> Bending Stress [psi]:</label>
                                                                        <input type="text" id="bst_ins" name="bst_ins" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label> Weigth of Empty Pipe [lbf/ft]:</label>
                                                                        <input type="text" id="we_ins" name="we_ins" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label> Net Upward Buoyant Force on Pipe in Bore Hole [lbf/ft]:</label>
                                                                        <input type="text" id="wb_ins" name="wb_ins" readonly required class="form-control">
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label> Pull Force on Pipe at Point A [lbf] :</label>
                                                                        <input type="text" id="fa_ins" name="fa_ins" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label> Pull Force on Pipe at Point B [lbf] :</label>
                                                                        <input type="text" id="fb_ins" name="fb_ins" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label> Pull Force on Pipe at Point C [lbf] :</label>
                                                                        <input type="text" id="fc_ins" name="fc_ins" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label> Pull Force on Pipe at Point D [lbf] :</label>
                                                                        <input type="text" id="fd_ins" name="fd_ins" readonly required class="form-control">
                                                                    </div>


                                                                </div>
                                                                <div class="col-lg-6">

                                                                    <div class="form-group">
                                                                        <label> Allowable/Safe Tensible Stress [psi]:</label>
                                                                        <input type="text" id="ast_ins" name="ast_ins" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label> Axial Tensile Stress at Point A [psi]:</label>
                                                                        <div class="col-lg-6">
                                                                            <input type="text" id="aa1_ins" name="aa1_ins" readonly required class="form-control">
                                                                        </div>
                                                                        <div class="col-lg-6">
                                                                            <input type="text" id="aa2_ins" name="aa2_ins" readonly required class="form-control">
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label> Axial Tensile Stress at Point B [psi]:</label>
                                                                        <div class="col-lg-6">
                                                                            <input type="text" id="ab1_ins" name="ab1_ins" readonly required class="form-control">
                                                                        </div>
                                                                        <div class="col-lg-6">
                                                                            <input type="text" id="ab2_ins" name="ab2_ins" readonly required class="form-control">
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label> Axial Tensile Stress at Point C [psi]:</label>
                                                                        <div class="col-lg-6">
                                                                            <input type="text" id="ac1_ins" name="ac1_ins" readonly required class="form-control">
                                                                        </div>
                                                                        <div class="col-lg-6">
                                                                            <input type="text" id="ac2_ins" name="ac2_ins" readonly required class="form-control">
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label> Axial Tensile Stress at Point D [psi]:</label>
                                                                        <div class="col-lg-6">
                                                                            <input type="text" id="ad1_ins" name="ad1_ins" readonly required class="form-control">
                                                                        </div>
                                                                        <div class="col-lg-6">
                                                                            <input type="text" id="ad2_ins" name="ad2_ins" readonly required class="form-control">
                                                                        </div>
                                                                    </div>                        

                                                                    <div class="form-group">
                                                                        <label> Breakaway Links Settings [lbf] </label>
                                                                        <input type="text" id="bl_ins" name="bl_ins" readonly required class="form-control">
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label> Static Head Pressure [psi]:</label>
                                                                        <input type="text" id="sh_ins" name="sh_ins" readonly required class="form-control">
                                                                    </div>                                    
                                                                    <div class="form-group">
                                                                        <label> Maximun Pressure During Pullback [psi]: </label>
                                                                        <input type="text" id="mp_ins" name="mp_ins" readonly required class="form-control">
                                                                    </div>                                    <div class="form-group">
                                                                        <label> Ovality Compensation Factor [%]: </label>
                                                                        <input type="text" id="oc_ins" name="oc_ins" readonly required class="form-control">
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
                                                <input type="button" id="calculateBtn_ins" name="calculateBtn_ins" value="Calculate" onclick="calculate_ins()" class="btn btn-info btn-block">
                                                <input type="button" id="saveBtn_ins" name="saveBtn_ins" value="Save" onclick="save_ins()" class="btn btn-success btn-block">   
                                                <input type="button" id="delteBtn_ins" name="delteBtn_ins" value="Delete" onclick="delete_ins()" class="btn btn-danger btn-block">
                                                <input type="button" id="cleanAllBtn_ins" name="cleanBtn_ins" value="Clean All Data" onclick="cleanAll_ins()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanInputBtn_ins" name="cleanBtn_ins" value="Clean Input Data" onclick="cleanIn_ins()" class="btn btn-warning btn-block">
                                                <input type="button" id="cleanOutputBtn_ins" name="cleanBtn_ins" value="Clean Output Data" onclick="cleanOut_ins()" class="btn btn-warning btn-block">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" id="id_ins" name="id_ins">  
                            <input type="hidden" id="opt_ins" name="opt_ins" value="1">   
                        </div>
                        <div id="load_Dialog_ins" title="Basic dialog" style='display:none;'>
                            <p>Successfully uploaded data</p>
                        </div>

                        <div id="save_Dialog_ins" title="Basic dialog" style='display:none;'>
                            <p>Data saved successfully</p>
                        </div>

                        <div id="error_Dialog_ins" title="Basic dialog" style='display:none;'>
                            <p>An error has occurred in the process</p>
                        </div>

                        <div id="calculate_Dialog_ins" title="Basic dialog" style='display:none;'>
                            <p>Calculation done successfully</p>
                        </div>

                        <div id="delete_Dialog_ins" title="Basic dialog" style='display:none;'>
                            <p>Successfully deleted record</p>
                        </div>

                        <div id="dialog-confirm_ins" title="Delete record" style='display:none;'>
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

            document.getElementById("img_ins").src = "../../img/installation.PNG";
            getproyectos(<%=session.getAttribute("idusu")%>,
                    $("#proyects_sel_ins"),
                    $("#error_Dialog_ins"));

            $("#opt_ins").val("1");
            $('#hdppaecro_ins').attr('checked', 'checked');

            load_modelas_sel_ins("hdpeamedst");
            load_typicall_sel_ins("hdpespsdst");
            load_in_sel_ins();
            load_pr_sel_ins();

        });

        function onchange_reference_ins() {
            var sel = $("input[type='radio'][name='meluw_ins']:checked");

            if (sel.val() === "hdp") {
                load_modelas_sel_ins("hdpeamedst");
                load_typicall_sel_ins("hdpespsdst");

            } else {
                load_modelas_sel_ins("mdpeamedst");
                load_typicall_sel_ins("mdpespsdst");
            }

        }

        function onchange_apel_ins() {
            $("#apaecro_ins").val($("#ae_sel_ins").val().split(",")[1]);
            $("#ampaecro_ins").val($("#ae_sel_ins").val().split(",")[1]);
            cleanOut_ins();

        }

        function onchange_ts_ins() {
            $("#ts_ins").val($("#ts_sel_ins").val().split(",")[1]);
            $("#asps_ins").val($("#ts_sel_ins").val().split(",")[1]);
            cleanOut_ins();

        }

        function onchange_forsoil_ins() {
            $("#pr_ins").val($("#pr_sel_ins").val().split(",")[1]);
            cleanOut_ins();
        }

        function onchange_Input_ins(inp) {

            var sw = validateDecimal(inp.value);

            if (sw !== true) {
                inp.value = "";
            }
            onchange_Input_zero(inp);
            cleanOut_ins();

        }

        function cleanOut_ins() {
            $("#we_ins").val("");
            $("#wb_ins").val("");
            $("#averex_ins").val("");
            $("#averen_ins").val("");
            $("#bs_ins").val("");
            $("#bst_ins").val("");
            $("#fa_ins").val("");
            $("#fb_ins").val("");
            $("#fc_ins").val("");
            $("#fd_ins").val("");
            $("#aa1_ins").val("");
            $("#ab1_ins").val("");
            $("#ac1_ins").val("");
            $("#ad1_ins").val("");
            $("#l2_ins").val("");
            $("#l3_ins").val("");
            $("#l4_ins").val("");
            $("#ast_ins").val("");
            $("#sh_ins").val("");
            $("#mp_ins").val("");
            $("#bl_ins").val("");
            $("#oc_ins").val("");

            $("#aa2_ins").val("");
            $("#ab2_ins").val("");
            $("#ac2_ins").val("");
            $("#ad2_ins").val("");
        }

        function cleanIn_ins() {
            $("#pod_ins").val("");
            $("#bd_ins").val("");
            $("#eg_ins").val("");
            $("#sgmd_ins").val("");
            $("#paex_ins").val("");
            $("#h_ins").val("");
            $("#paecro_ins").val("");
            $("#l1_ins").val("");
            $("#bac_ins").val("");
            $("#hy_ins").val("");
            $("#cf_ins").val("");
            $("#cfb_ins").val("");
            $("#cro_ins").val("");
            $("#ampaecro_ins").val("");
            $("#asps_ins").val("");
            $("#uw_ins").val("");
            $("#mpwt_ins").val("");
            $("#perp_ins").val("");

        }


        function load_modelas_sel_ins(combo) {

            var parametros = {
                "combo": combo,
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
                    var newHtml = "<select class='form-control' name='ae_sel_ins' id='ae_sel_ins' onchange='onchange_apel_ins()'>" + data;
                    $("#div_ae_sel_ins").html(newHtml);
                    $("#apaecro_ins").val($("#ae_sel_ins").val().split(",")[1]);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_chp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_typicall_sel_ins(combo) {
            var parametros = {
                "combo": combo,
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
                    var newHtml = "<select class='form-control' name='ts_sel_ins' id='ts_sel_ins' onchange='onchange_ts_ins()'>" + data;
                    $("#div_ts_sel_ins").html(newHtml);
                    $("#ts_ins").val($("#ts_sel_ins").val().split(",")[1]);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_chp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_in_sel_ins() {
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
                    var newHtml = "<select class='form-control' name='mpwt_sel_ins' id='mpwt_sel_ins'>" + data;
                    $("#div_mpwt_sel_ins").html(newHtml);

                    newHtml = "<select class='form-control' name='cro_sel_ins' id='cro_sel_ins'>" + data;
                    $("#div_cro_sel_ins").html(newHtml);

                    newHtml = "<select class='form-control' name='l1_sel_ins' id='l1_sel_ins'>" + data;
                    $("#div_l1_sel_ins").html(newHtml);

                    newHtml = "<select class='form-control' name='bac_sel_ins' id='bac_sel_ins'>" + data;
                    $("#div_bac_sel_ins").html(newHtml);

                    newHtml = "<select class='form-control' name='pod_sel_ins' id='pod_sel_ins'>" + data;
                    $("#div_pod_sel_ins").html(newHtml);

                    newHtml = "<select class='form-control' name='h_sel_ins' id='h_sel_ins'>" + data;
                    $("#div_h_sel_ins").html(newHtml);

                    $("#h_sel_ins").val("2516,ft");
                    $("#l1_sel_ins").val("2516,ft");
                    $("#cro_sel_ins").val("2516,ft");




                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_chp"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_history_ins() {
            var parametros = {
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "from": "ins",
                "opcion": "6",
                "nombre": "historial"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                async: false,
                beforeSend: function (xhr) {
                    $("#opt_ins").val("1");
                    $("#id_ins").val("");
                    cleanAll_ins();
                    block("Cargado datos...");
                },
                success: function (data, status, request) {

                    if (data !== null) {
                        var tags = Object.keys(data.historial[0]);

                        var tamano = data.size;

                        var html = "<table class='table table-bordered table-striped'>";
                        html += "<thead>";
                        html += "<tr>";
                        html += "<th>Creation date</th>";
                        html += "<th>Code</th>";
                        html += "<th>Description</th>";
                        html += "<th>Load</th>";
                        html += "</tr>";
                        html += "</thead>";
                        if (tamano > 0) {

                            html += '<tbody>';
                            for (var i = 0; i < tamano; i++) {
                                html += "<tr>";
                                html += "<td>" + data.historial[i].date + "</td>";
                                html += "<td>" + data.historial[i].id + "</td>";
                                html += "<td>" + data.historial[i].description_ins + "</td>";
                                html += "<td><a href='#' onClick=\"load_form_ins(" + data.historial[i].id + ")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
                                html += "<tr>";

                            }
                            html += '</tbody>';
                        } else {
                            html += '<p>No records available.</p>';
                        }
                        html += "</table><br><br>";

                    } else {
                        html = '<p>No records available.</p>';
                    }
                    $("#div-tablpaecro_ins").empty();
                    $("#div-tablpaecro_ins").html(html);

                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ins"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_pr_sel_ins() {
            var parametros = {
                "combo": "psins",
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
                    var newHtml = "<select class=\"form-control\" name=\"pr_sel_ins\" id=\"pr_sel_ins\" onchange=\"onchange_forsoil_ins()\">" + data;
                    $("#div_pr_sel_ins").html(newHtml);
                    $("#pr_ins").val($("#pr_sel_ins").val().split(",")[1]);
                },
                error: function (xhr, ajaxOptions, err) {
                    show_OkDialog($("#error_Dialog_ins"), "Error");
                    show_OkDialog(err, "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function load_form_ins(id) {

            var parametros = {
                "id": id,
                "from": "ins",
                "opcion": "4"
            };

            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    cleanAll_ins();
                    block("Cargado datos...");
                },
                success: function (data, status, request) {
                    if (data != null)
                    {
                        var tags = Object.keys(data.row);

                        for (var i = 0; i < tags.length; i++) {
                            if (tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i] != "id" && tags[i] != "opz_ins")
                            {
                                $("#" + tags[i]).val(data.row[tags[i]]);
                            }
                        }

                        if (data.row["meluw_ins"] == "hdp") {
                            document.getElementById("hdppaecro_ins").checked = true;

                        } else {
                            document.getElementById("mdppaecro_ins").checked = true;
                        }

                        onchange_reference_ins();
                        $("#apaecro_ins").val(data.row.apaecro_ins);
                        $("#ts_ins").val(data.row.ts_ins);
                        $("#ae_sel_ins").val(data.row.ae_sel_ins);
                        $("#ts_sel_ins").val(data.row.ts_sel_ins);
                        $("#proyects_sel_ins").val(data.row.id_proyect);

                        $("#opt_ins").val("2");
                        $("#id_ins").val(data.row.id);
                    } else {
                        $("#opt_ins").val("1");
                    }

                },
                error: function (xhr, ajaxOptions, err) {
                    $("#opt_ins").val("1");
                    show_OkDialog($("#error_Dialog_ins"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

        function cleanAll_ins() {
            cleanIn_ins();
            cleanOut_ins();
            $("#description_ins").val("");
        }

        function validate_pres_ins(inp) {
            onchange_Input_ins(inp);
            validatePress(inp, $("#bd_ins"), $("#dischargep_ins"));
        }

        function calculate_ins() {

            var variables = {
                "pod_ins": $("#pod_ins").val(),
                "bd_ins": $("#bd_ins").val(),
                "eg_ins": $("#eg_ins").val(),
                "sgmd_ins": $("#sgmd_ins").val(),
                "paex_ins": $("#paex_ins").val(),
                "paecro_ins": $("#paecro_ins").val(),
                "h_ins": $("#h_ins").val(),
                "l1_ins": $("#l1_ins").val(),
                "bac_ins": $("#bac_ins").val(),
                "hy_ins": $("#hy_ins").val(),
                "cf_ins": $("#cf_ins").val(),
                "cfb_ins": $("#cfb_ins").val(),
                "cro_ins": $("#cro_ins").val(),
                "ampaecro_ins": $("#ampaecro_ins").val(),
                "asps_ins": $("#asps_ins").val(),
                "uw_ins": $("#uw_ins").val(),
                "mpwt_ins": $("#mpwt_ins").val(),
                "perp_ins": $("#perp_ins").val()
            };

            var isOk = validate(variables);

            if (isOk === false) {
                alert("You must complete all fields");
            } else {

                var unidades = {
                    "pod_sel_ins": $("#pod_sel_ins").val().split(",")[1],
                    "h_sel_ins": $("#h_sel_ins").val().split(",")[1],
                    "l1_sel_ins": $("#l1_sel_ins").val().split(",")[1],
                    "bac_sel_ins": $("#bac_sel_ins").val().split(",")[1],
                    "cro_sel_ins": $("#cro_sel_ins").val().split(",")[1],
                    "mpwt_sel_ins": $("#mpwt_sel_ins").val().split(",")[1]
                };


                var res = installation_Form(variables, unidades);

                $("#we_ins").val(res[0]);
                $("#wb_ins").val(res[1]);
                $("#averex_ins").val(res[2]);
                $("#averen_ins").val(res[3]);
                $("#bs_ins").val(res[4]);
                $("#bst_ins").val(res[5]);
                $("#fa_ins").val(res[6]);
                $("#fb_ins").val(res[7]);
                $("#fc_ins").val(res[8]);
                $("#fd_ins").val(res[9]);
                $("#aa1_ins").val(res[10]);
                $("#ab1_ins").val(res[11]);
                $("#ac1_ins").val(res[12]);
                $("#ad1_ins").val(res[13]);
                $("#l2_ins").val(res[14]);
                $("#l3_ins").val(res[15]);
                $("#l4_ins").val(res[16]);
                $("#ast_ins").val($("#asps_ins").val());
                $("#sh_ins").val(res[17]);
                $("#mp_ins").val(res[18]);
                $("#bl_ins").val(res[19]);
                $("#oc_ins").val(res[20]);

                $("#aa2_ins").val("NOT OK");
                $("#ab2_ins").val("NOT OK");
                $("#ac2_ins").val("NOT OK");
                $("#ad2_ins").val("NOT OK");

                if (res[10] <= parseFloat($("#asps_ins").val())) {
                    $("#aa2_ins").val("OK");
                }

                if (res[11] <= parseFloat($("#asps_ins").val())) {
                    $("#ab2_ins").val("OK");
                }

                if (res[12] <= parseFloat($("#asps_ins").val())) {
                    $("#ac2_ins").val("OK");
                }

                if (res[13] <= parseFloat($("#asps_ins").val())) {
                    $("#ad2_ins").val("OK");
                }


                show_OkDialog($("#calculate_Dialog_ins"), "Satisfactory process");


            }
        }

        function save_ins() {
            var sel = $("input[type='radio'][name='meluw_ins']:checked");

            var parametros = {
                "pod_ins": $("#pod_ins").val(),
                "bd_ins": $("#bd_ins").val(),
                "eg_ins": $("#eg_ins").val(),
                "sgmd_ins": $("#sgmd_ins").val(),
                "paex_ins": $("#paex_ins").val(),
                "h_ins": $("#h_ins").val(),
                "paecro_ins": $("#paecro_ins").val(),
                "apaecro_ins": $("#apaecro_ins").val(),
                "l1_ins": $("#l1_ins").val(),
                "bac_ins": $("#bac_ins").val(),
                "hy_ins": $("#hy_ins").val(),
                "cf_ins": $("#cf_ins").val(),
                "cfb_ins": $("#cfb_ins").val(),
                "cro_ins": $("#cro_ins").val(),
                "ampaecro_ins": $("#ampaecro_ins").val(),
                "asps_ins": $("#asps_ins").val(),
                "uw_ins": $("#uw_ins").val(),
                "mpwt_ins": $("#mpwt_ins").val(),
                "perp_ins": $("#perp_ins").val(),
                "meluw_ins": sel.val(),
                "pr_sel_ins": $("#pr_sel_ins").val(),
                "pr_ins": $("#pr_ins").val(),
                "ae_sel_ins": $("#ae_sel_ins").val(),
                "ts_sel_ins": $("#ts_sel_ins").val(),
                "ts_ins": $("#ts_ins").val(),
                "pod_sel_ins": $("#pod_sel_ins").val(),
                "h_sel_ins": $("#h_sel_ins").val(),
                "l1_sel_ins": $("#l1_sel_ins").val(),
                "bac_sel_ins": $("#bac_sel_ins").val(),
                "cro_sel_ins": $("#cro_sel_ins").val(),
                "mpwt_sel_ins": $("#mpwt_sel_ins").val(),
                "we_ins": $("#we_ins").val(),
                "wb_ins": $("#wb_ins").val(),
                "averex_ins": $("#averex_ins").val(),
                "averen_ins": $("#averen_ins").val(),
                "bs_ins": $("#bs_ins").val(),
                "bst_ins": $("#bst_ins").val(),
                "fa_ins": $("#fa_ins").val(),
                "fb_ins": $("#fb_ins").val(),
                "fc_ins": $("#fc_ins").val(),
                "fd_ins": $("#fd_ins").val(),
                "aa1_ins": $("#aa1_ins").val(),
                "ab1_ins": $("#ab1_ins").val(),
                "ac1_ins": $("#ac1_ins").val(),
                "ad1_ins": $("#ad1_ins").val(),
                "l2_ins": $("#l2_ins").val(),
                "l3_ins": $("#l3_ins").val(),
                "l4_ins": $("#l4_ins").val(),
                "ast_ins": $("#ast_ins").val(),
                "sh_ins": $("#sh_ins").val(),
                "mp_ins": $("#mp_ins").val(),
                "bl_ins": $("#bl_ins").val(),
                "oc_ins": $("#oc_ins").val(),
                "aa2_ins": $("#aa2_ins").val(),
                "ab2_ins": $("#ab2_ins").val(),
                "ac2_ins": $("#ac2_ins").val(),
                "ad2_ins": $("#ad2_ins").val(),
                "idproyect": $("#proyects_sel_ins").val(),
                "opcion": $("#opt_ins").val(),
                "iduser": <% out.print(session.getAttribute("idusu"));%>,
                "id_ins": 1,
                "description_ins": $("#description_ins").val(),
                "from": "ins"

            };

            var isOk = validate(parametros);

            if (isOk === false) {
                alert("You must perform the calculation and fill out the description");
            } else {

                if ($("#opt_ins").val() == 2) {
                    parametros.id_ins = $("#id_ins").val();
                }

                $.ajax({
                    type: "POST",
                    url: "../manager.jsp",
                    data: parametros,
                    dataType: 'json',
                    beforeSend: function (xhr) {
                        block("Cargando...");
                    },
                    success: function (data, status, request) {
                        $("#id_ins").val(data.row.id);
                        $("#opt_ins").val("2");
                        show_OkDialog($("#save_Dialog_ins"), "Satisfactory process");
                    },
                    error: function (xhr, ajaxOptions, err) {
                        show_OkDialog($("#error_Dialog_ins"), "Error");
                    },
                    complete: function () {
                        unBlock();
                    }
                });
            }
        }

        function delete_ins() {

            //Confirmacion
            if ($("#opt_ins").val() == 2) {
                $("#dialog-confirm_ins").dialog({
                    resizable: false,
                    height: "auto",
                    width: 400,
                    modal: true,
                    buttons: {
                        "Delete": function () {
                            deleteReg_ins();
                            $(this).dialog("close");
                        },
                        Cancelar: function () {
                            $(this).dialog("close");
                        }
                    }
                });
            } else {
                alert("You must load a record to be able to delete it");
            }
        }

        function deleteReg_ins() {
            var parametros = {
                "id_ins": $("#id_ins").val(),
                "opcion": 3,
                "iduser": <%=session.getAttribute("idusu")%>,
                "from": "ins"
            };


            $.ajax({
                type: "POST",
                url: "../manager.jsp",
                data: parametros,
                dataType: 'json',
                beforeSend: function (xhr) {
                    block("Cargando...");
                },
                success: function (data, status, request) {
                    $("#id_ins").val("");
                    $("#opt_ins").val("1");
                    cleanAll_ins();
                    show_OkDialog($("#delete_Dialog_ins"), "Satisfactory process");
                },
                error: function (xhr, ajaxOptions, err) {
                    alert(err);
                    show_OkDialog($("#error_Dialog_ins"), "Error");
                },
                complete: function () {
                    unBlock();
                }
            });
        }

    </script>
</html>