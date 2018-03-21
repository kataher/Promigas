<%-- 
    Document   : reinforcementwelded
    Created on : 15-mar-2016, 16:01:06
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
                <h2><strong>Pipe Installation:</strong> 1.2. Reinforcement of Welded Branch Connection </h2>
            </div>
            <div class="col-lg-3"> 
                <!-- Button trigger modal -->
                 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_rwb()">
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
                              <div id="div-table_rwb"></div>
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
                <input  class="form-control" type="text" id="description_rwb" name="description_rwb"><br>
                Projects: 
                <select class="form-control" id="proyects_sel_rwb" name="proyects_sel_rwb"> </select>
            </div>
        </div>
        <hr>
       
        <div class="col-lg-12">
            <div>
                <ul class="nav nav-tabs nav-justified">
                  <li class="active"><a href="#sited_rwb" data-toggle="tab">Select Design Properties</a></li>
                  <li><a href="#regulatoru_rwb" data-toggle="tab">Select Header Properties</a></li>
                  <li><a href="#regulatord_rwb" data-toggle="tab">Select Branch Properties</a></li>
                  <li><a href="#results_rwb" data-toggle="tab">Calculations & Results</a></li>
                </ul>
                
                <div class="tab-content">
                    <br>
                    <div class="tab-pane fade in active" id="sited_rwb">
                        <div class="col-lg-8">
                        <div class="panel panel-default">
                           <div class="panel-heading">
                            Input Data
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <label>Heigth:</label> 
                                    </div>
                                <div class="col-md-8">
                                    <input  class="form-control" type="text" value="0" id="h_rwb" name="h_rwb" onchange="onchange_Input_rwb(this)" required><br>
                                </div>
                                <div class="col-md-4" id="div_h_sel_rwb">
                                    <select class="form-control" id="h_sel_rwb" name="h_sel_rwb"> </select>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <form role="form">                                            
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    Design Factor
                                                </div>
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="form-group">
                                                                <div class="col-md-12">
                                                                    <label>Temperature:</label>
                                                                </div>
                                                                <div class="col-md-8" id="div_temp_sel_rwb">
                                                                    <select class="form-control" id="temp_sel_rwb" name="temp_sel_rwb" onchange="onchanche_temp_rwb()"></select> 
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <input class="form-control" type="text" id="temp_rwb" name="temp_rwb"  onchange="onchange_Input_rwb(this)" required>
                                                                </div>

                                                            </div>
                                                            <div class="form-group">
                                                                <div class="col-md-12">
                                                                    <label>Desing Factor:</label>
                                                                </div>
                                                                <div class="col-md-8" id="div_df_sel_rwb">
                                                                    <select class="form-control" id="df_sel_rwb" name="df_sel_rwb" onchange="onchanche_df_rwb()"></select> 
                                                                </div>
                                                                <div class="col-md-4">
                                                                    <input class="form-control" type="text" id="df_rwb" name="df_rwb"  onchange="onchange_Input_rwb(this)" required>
                                                                </div>

                                                            </div>                                    
                                                            <div class="form-group">
                                                                <div class="col-md-12">
                                                                    <label>Operating Pressure:</label> 
                                                                    </div>
                                                                <div class="col-md-8">
                                                                    <input  class="form-control" value="200" type="text" id="p1_rwb" name="p1_rwb" onchange="onchange_Input_rwb(this)" required><br>
                                                                </div>
                                                                <div class="col-md-4" id="div_p1_sel_rwb">
                                                                    <select class="form-control" id="p1_sel_rwb" name="p1_sel_rwb"> </select>
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
                        
                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                            
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <img src="img/rwb.png" class="img-responsive">
                                    </div>
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="tab-pane" id="regulatoru_rwb">
                        <div class="col-lg-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                   Header Pipe Data:
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="checkbox">
                                             <input type="radio" id = "api5l1_rwb" name="pipe_rad_rwb" value="api5l_rwb" onchange="onchange_pipe_rad_rwb()" required> Pipe - Specification API 5L
                                            </div>
                                            <div class="checkbox">
                                              <input type="radio" id = "astm1_rwb" name="pipe_rad_rwb" value="astm_rwb" onchange="onchange_pipe_rad_rwb()" required> Standard steel pipe - ASTM - ANSI B36.10
                                            </div>
                                            <form role="form">
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            <span id="tittle_rwb"> Pipe - Specification API 5L  </span>
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            <label>Nominal pipe size:</label> 
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <div id="div_nomps_sel_rwb">
                                                                                <select class="form-control" id="nominalps_sel_rwb" name="nominalps_sel_rwb"> </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                          <label>Grade:</label> 
                                                                        </div>
                                                                        <div class="col-md-8">
                                                                            <div id="div_grade_sel_rwb">
                                                                          <select class="form-control" id="grade_sel_rwb" name="grade_sel_rwb"> </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                      <div class="col-md-12">
                                                                        <label>Wall Thickness[in.]:</label> 
                                                                      </div>
                                                                      <div class="col-md-8">
                                                                          <div id="div_wallt_sel_rwb">
                                                                        <select class="form-control" id="wthi_sel_rwb" name="wthi_sel_rwb"> </select>
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
                                                            Longintudinal Joint Factor - E                      </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <div class="col-md-8">
                                                                            <div id="div_jf_sel_rwb">
                                                                                <select class="form-control" id="longitudinal_jf_rwb" name="longitudinal_jf_rwb"> </select>
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
                                                            M - Thickness of Added Reinforcement [in.]
                                                        </div>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-lg-12">
                                                                    <div class="form-group">
                                                                        <div class="col-md-12">
                                                                            In Accordance with ASME B31.8 value of M >=0.25[in.]
                                                                            <input class="form-control" value="0.25" type="text" id="tar_rwb" name="tar_rwb"  onchange="onchangeDb_rwb()" required>
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
                    <div class="col-lg-4">
                        <div class="panel panel-default">                        
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                     <img src="img/rwb.png" class="img-responsive">
                                    </div>
                                </div>
                            </div>
                            <div class="panel-heading">
                                Selected Values
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>D - Outside Diameter of the Header [in.]:</label>
                                            <input type="text" id="odh_rwb" name="odh_rwb" required class="form-control">
                                        </div>
                                    </div>
                               </div>
                               <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>H - Nominal Wall Thickness of the  Branch [in.]:</label>
                                            <input type="text" id="nwtb_rwb" name="nwtb_rwb" required class="form-control">
                                        </div>
                                    </div>
                               </div>
                               <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>Specified Minimum Yield Strength [psi.]:</label>
                                            <input type="text" id="smys_rwb" name="smys_rwb" required class="form-control">
                                        </div>
                                    </div>
                               </div>
                               <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <label>E - Longitudinal Joint Factor:</label>
                                            <input type="text" id="ljf_rwb" name="ljf_rwb" required class="form-control">
                                        </div>
                                    </div>
                               </div>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="tab-pane" id="regulatord_rwb">
                        <div class="col-lg-8">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                   Branch Pipe Data:
                                </div>
                        <!-- Results-->
                      
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="checkbox">
                                        <input type="radio" id = "api5l2_rwb" name="pipe1_rad_rwb" value="api5l_rwb" onchange="onchange_pipe_rad1_rwb()" required> Pipe - Specification API 5L
                                    </div>
                                    <div class="checkbox">
                                      <input type="radio" id = "astm2_rwb" name="pipe1_rad_rwb" value="astm_rwb" onchange="onchange_pipe_rad1_rwb()" required> Standard steel pipe - ASTM - ANSI B36.10
                                    </div>
                                    <form role="form">
                                        <div class="form-group">
                                            <div class="panel panel-default">
                                                <div class="panel-heading">
                                                    <span id="tittle2_rwb"> Pipe - Specification API 5L  </span>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                            <div class="form-group">
           							<div class="col-md-12">
                                                                    <label>Nominal pipe size:</label> 
                                                                </div>
                                                                <div class="col-md-8">
                                                                    <div id="div_nomps_sel1_rwb">
                                                                        <select class="form-control" id="nominalps_sel_rwb1" name="nominalps_sel_rwb1"> </select>
                                                                    </div>
                                                                </div>
                                                            </div>
          						    <div class="form-group">
                                                                <div class="col-md-12">
                                                                  <label>Grade:</label> 
                                                                </div>
                                                                <div class="col-md-8">
                                                                    <div id="div_grade_sel_rwb1">
                                                                        <select class="form-control" id="grade_sel_rwb1" name="grade_sel_rwb1"> </select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="col-md-12">
                                                                    <label>Wall Thickness[in.]:</label> 
                                                                </div>
                                                                <div class="col-md-12">
                                                                    <div id="div_wallt_sel1_rwb">
                                                                        <select class="form-control" id="wthi_sel1_rwb" name="wthi_sel1_rwb"> </select>
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
                                                    Longintudinal Joint Factor - E                      </div>
                                                <div class="panel-body">
                                                    <div class="row">
                                                        <div class="col-lg-12">
                                                           <div class="form-group">
                                                                <div class="col-md-8">
                                                                    <div id="div_jf_sel1_rwb">
                                                                        <select class="form-control" id="longitudinal_jf1_rwb" name="longitudinal_jf1_rwb"> </select>
                                                                    </div>
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
                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <img src="img/rwb.png" class="img-responsive">
                                    </div>
                                </div>
                            </div>
                            <div class="panel-heading">
                                Selected Values
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                     <div class="form-group">
                                    <label>Db - Outside Diameter of the Header [in.]:</label>
                                    <input type="text" id="bodh_rwb" name="bodh_rwb" onchange="onchangeDb_rwb(this)" required class="form-control">
                                    </div>
                                    </div>
                               </div>
                           <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>B - Nominal Wall Thickness of the  Branch [in.]:</label>
                                        <input type="text" id="bnwtb_rwb" name="bnwtb_rwb" required class="form-control">
                                    </div>
                                </div>
                           </div>
                           <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>Specified Minimum Yield Strength [psi]:</label>
                                        <input type="text" id="smys2_rwb" name="smys2_rwb" required class="form-control">
                                    </div>
                                </div>
                           </div>
                           <div class="row">
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>E - Longitudinal Joint Factor:</label>
                                        <input type="text" id="ljf1_rwb" name="ljf1_rwb" required class="form-control">
                                    </div>
                                </div>
                           </div>
                        </div>
                    </div>
                </div>
            </div>
                <div class="tab-pane" id="results_rwb">
                    <div class="col-lg-8">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                               Reinforcement Pad Data: 
                            </div>
                        <!-- Results-->
                      
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <form role="form"> 
                                            <div class="form-group">
                                                <div class="panel panel-default">                        
                                                    <div class="panel-body">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                               <div class="form-group">
                                                                <div class="col-md-12">
                                                                  <label>Minimun Reinforcement Outside Diamenter :</label> 
                                                                </div>
                                                                <div class="col-md-8">
                                                                   <input type="text" value="20" id="mrod_rwb" name="mrod_rwb" required class="form-control">
                                                                </div>
                                                                    <div class="col-md-4" id="div_mrod_sel_rwb">
                                                                        <select class="form-control" id="mrod_sel_rwb" name="mrod_sel_rwb"> </select>
                                                                    </div>
                                                               </div>
                                                               <div class="form-group">
                                                                    <div class="col-md-12">
                                                                      <label>Reinforcement SMYS[psi]:</label> 
                                                                    </div>
                                                                    <div class="col-md-12">
                                                                       <input type="text" value="25000" id="rsmys_rwb" name="rsmys_rwb" required class="form-control">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>  
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading">
                                                            Results:                     
                                                        </div>
                                                        <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                            <div class="col-md-12">
                                              <label>Estimated thickness of the reinforcement required [in]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="eerr_rwb" name="eerr_rwb" required readonly class="form-control">
                                            </div>
                                           </div>
                                            <div class="form-group">
                                            <div class="col-md-12">
                                              <label>Required minimum reinforcement length [in]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="lmrr_rwb" name="lmrr_rwb" required readonly class="form-control">
                                            </div>
                                           </div>
                                            <div class="form-group">
                                            <div class="col-md-12">
                                              <label>Required minimum reinforcement diameter [in]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="dmrr_rwb" name="dmrr_rwb" required readonly class="form-control">
                                            </div>
                                           </div>
                                         <div class="form-group">
                                            <div class="col-md-12">
                                              <label>t- Required Wall Thickness of the header [in.]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="rwtoth_rwb" name="rwtoth_rwb" required readonly class="form-control">
                                            </div>
                                           </div>
                                           <div class="form-group">
                                            <div class="col-md-12">
                                              <label>[H-t] Excess Thickness in the Header Wall [in.]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="etithw_rwb" name="etithw_rwb" required readonly class="form-control">
                                            </div>
                                           </div> 
                                           <div class="form-group">
                                            <div class="col-md-12">
                                              <label>tb - Required Wall Thickness of the Branch [in.]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="rwtotb_rwb" name="rwtotb_rwb" required readonly class="form-control">
                                            </div>
                                           </div> 
                                           <div class="form-group">
                                            <div class="col-md-12">
                                              <label>[B - tb] - Excess Thickness in the Branch:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="etitb_rwb" name="etitb_rwb" required  readonly class="form-control">
                                            </div>
                                           </div> 
                                           <div class="form-group">
                                            <div class="col-md-12">
                                                <label>AR - Reinforcement Required [in<sup>2</sup>]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="arrr_rwb" name="arrr_rwb" required  readonly class="form-control">
                                            </div>
                                           </div>
                                           <div class="form-group">
                                            <div class="col-md-12">
                                                <label>A1 Reinforcement Provided [in<sup>2</sup>]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="a1rr_rwb" name="a1rr_rwb" required readonly class="form-control">
                                            </div>
                                           </div> 
                                           <div class="form-group">
                                            <div class="col-md-12">
                                              <label>L - Height [in.]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="lheight_rwb" name="lheight_rwb" readonly required class="form-control">
                                            </div>
                                           </div>
                                           <div class="form-group">
                                            <div class="col-md-12">
                                                <label>A2 - Effective Area in Branch/Outlet [in <sup>2</sup>]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="a2eaibo_rwb" name="a2eaibo_rwb"  readonly required class="form-control">
                                            </div>
                                           </div>
                                           <div class="form-group">
                                            <div class="col-md-12">
                                                <label>A'2 - Corrected Effective Area [in<sup>2</sup>.]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="a2cea_rwb" name="a2cea_rwb" readonly required class="form-control">
                                            </div>
                                           </div>
                                           <div class="form-group">
                                            <div class="col-md-12">
                                              <label>A3 - REQUIRED AREA [in<sup>2</sup>.]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="a3ra_rwb" name="a3ra_rwb" readonly required class="form-control">
                                            </div>
                                           </div>
                                           <div class="form-group">
                                            <div class="col-md-12">
                                                <label>AP -PROVIDED AREA[in<sup>2</sup>.]:</label> 
                                            </div>
                                            <div class="col-md-12">
                                               <input type="text" id="appa_rwb" name="appa_rwb" readonly required class="form-control">
                                            </div>
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
                    <div class="col-lg-4">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                     <img src="img/rwb.png" class="img-responsive">
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <br>
                                     <input type="button" id="calculateBtn3_rwb" name="calculateBtn3_rwb" value="Calculate" onclick="calculate_rwb()" class="btn btn-info btn-block">
                                    <br>
                                     <input type="button" id="saveBtn_rwb" name="saveBtn_rwb" value="Save" onclick="save_rwb()" class="btn btn-success btn-block">   
                                    <br>
                                     <input type="button" id="delteBtn_rwb" name="delteBtn_rwb" value="Delete" onclick="deleteReg_rwb()" class="btn btn-danger btn-block">
                                    <br>
                                    <input type="button" id="cleanAllBtn_rwb" name="cleanAllBtn_rwb" value="Clean All Data" onclick="cleanAll_rwb()" class="btn btn-warning btn-block">
                                    <br>
                                    <input type="button" id="cleanInputBtn_rwb" name="cleanInputBtn_rwb" value="Clean Input Data" onclick="cleanIn_rwb()" class="btn btn-warning btn-block">
                                    <br>
                                    <input type="button" id="cleanOutputBtn_rwb" name="cleanOutputBtn_rwb" value="Clean Output Data" onclick="cleanOut_rwb()" class="btn btn-warning btn-block">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            
        <input type="hidden" value="1" id="id_rwb" name="id_rwb">  
        <input type="hidden" id="opt_rwb" name="opt_rwb">
        
        <script>
                $(document).ready(function() {  
                      
                      $("#opt_rwb").val("1");
                      $('#api5l1_rwb').attr('checked', 'checked');
                      $('#api5l2_rwb').attr('checked', 'checked');
                      load_desingf_sel_rwb();
                      load_deratingf_sel_rwb();
                      load_pres_sel_rwb();
                      load_grade_sel_rwb("gra5l",0);
                      load_joinf_sel_rwb("jointf5l",0);
                      load_nps_sel_rwb("5l");                      
                      load_in_sel_rwb();                      
                      load_he_sel_rwb();
                      
                      
                      getproyectos(<%=session.getAttribute("idusu") %>,
                                $("#proyects_sel_rwb"),
                                $("#error_Dialog_rwb"));
                });
                
                function onchangeDb_rwb(){
                    //alert("cambiar");
                }
                
                function load_history_rwb(){
                    var parametros = {
                        "idproyect": $("#proyects_sel_rwb").val(),
			"iduser": <% out.print(session.getAttribute("idusu"));%>,
                        "from": "rwb",
                        "opcion" : "6",
                        "nombre" : "historial"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async : false,
                        beforeSend: function (xhr) {
                            $("#opt_rwb").val("1");
                            $("#id_rwb").val("");
                            cleanAll_rwb();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            
                            if(data!==null){
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
                           if(tamano > 0){
                              
                            html += '<tbody>';
                            for(var i = 0; i< tamano ; i++){
                               html += "<tr>";
                               html += "<td>"+data.historial[i].date+"</td>";
                               html += "<td>"+data.historial[i].id+"</td>";
                               html += "<td>"+data.historial[i].description_rwb+"</td>";
                               html += "<td><a href='#' onClick='load_form_rwb("+data.historial[i].id+")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
                               html += "<tr>";
                               
                            }
                               html += '</tbody>';
                           }else{
                               html += '<p>No records available.</p>';
                           }
                           html += "</table><br><br>";
                       
                           }else{
                            html = '<p>No records available.</p>';
                           }
                           $("#div-table_rwb").empty();
                           $("#div-table_rwb").html(html);
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                
                function onchange_defa_rwb(){
                  $("#df_rwb").val($("#df_sel_rwb").val().split(",")[1]);
                }
                function onchanche_temp_rwb(){
                  $("#temp_rwb").val($("#temp_sel_rwb").val().split(",")[1]);
                }
                function load_joinf_sel_rwb(idcombo,opcion){
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
                            var newHtml = "<select class='form-control' name='longitudinal_jf_rwb' id='longitudinal_jf_rwb' onchange='onchange_jf_rwb()'>" + data;
                            var newHtml1 = "<select class='form-control' name='longitudinal_jf1_rwb' id='longitudinal_jf1_rwb' onchange='onchange_jf1_rwb()'>" + data;
                            if(opcion===0){
                            $("#div_jf_sel_rwb").html(newHtml);
                            $("#div_jf_sel1_rwb").html(newHtml1);
                            $("#ljf_rwb").val($("#longitudinal_jf_rwb").val().split(",")[1]);
                            $("#ljf1_rwb").val($("#longitudinal_jf1_rwb").val().split(",")[1]);
                            }
                             if(opcion===1){
                               $("#div_jf_sel_rwb").html(newHtml); 
                               $("#ljf_rwb").val($("#longitudinal_jf_rwb").val().split(",")[1]);
                             }
                             if(opcion===2){ 
                              $("#div_jf_sel1_rwb").html(newHtml1);
                              $("#ljf1_rwb").val($("#longitudinal_jf1_rwb").val().split(",")[1]);
                             }
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function onchange_jf_rwb(){
                    $("#ljf_rwb").val($("#longitudinal_jf_rwb").val().split(",")[1]);
                    cleanOut_rwb();
                }
                
                function onchange_jf1_rwb(){
                    $("#ljf1_rwb").val($("#longitudinal_jf1_rwb").val().split(",")[1]);
                    cleanOut_rwb();
                }
                
                function load_grade_sel_rwb(idcombo,opcion){
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
                            
                          var newHtml = "<select class='form-control' name='grade_sel_rwb' id='grade_sel_rwb' onchange='onchange_gra_rwb()'>" + data;
                          var newHtml1 = "<select class='form-control' name='grade_sel_rwb1' id='grade_sel_rwb1' onchange='onchange_gra_rwb1()'>" + data;
                          if(opcion===0){
                            $("#div_grade_sel_rwb").html(newHtml); 
                            $("#div_grade_sel_rwb1").html(newHtml1);
                            onchange_gra_rwb();
                            onchange_gra_rwb1();
                          }
                          if(opcion===1){ $("#div_grade_sel_rwb").html(newHtml); onchange_gra_rwb();}
                          if(opcion===2){$("#div_grade_sel_rwb1").html(newHtml1);  onchange_gra_rwb1();  }
                          
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function onchange_gra_rwb(){
                    var x = $("#grade_sel_rwb").val();
                            $("#smys_rwb").val(x.split(",")[1]);
                }
                
                function onchange_gra_rwb1(){
                    var x = $("#grade_sel_rwb1").val();
                            $("#smys2_rwb").val(x.split(",")[1]);
                }
                 
                function load_deratingf_sel_rwb(){
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
                            var newHtml = "<select class='form-control' name='temp_sel_rwb' id='temp_sel_rwb' onchange='onchanche_temp_rwb()'>" + data;
                            $("#div_temp_sel_rwb").html(newHtml); 
                            $("#temp_rwb").val($("#temp_sel_rwb").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_desingf_sel_rwb(){
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
                            var newHtml = "<select class='form-control' name='df_sel_rwb' id='df_sel_rwb' onchange='onchange_defa_rwb()'>" + data;
                            $("#div_df_sel_rwb").html(newHtml); 
                            
                            var x = $("#df_sel_rwb").val();
                            $("#df_rwb").val(x.split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function onchange_pipe_rad_rwb(){
                    var sel = $("input[type='radio'][name='pipe_rad_rwb']:checked");
                    if(sel.val() === "api5l_rwb"){
                        $("#tittle_rwb").html("Pipe - Specification API 5L ");
                        load_grade_sel_rwb("gra5l",1);
                        load_joinf_sel_rwb("jointf5l",1);
                    }else{
                        $("#tittle_rwb").html("Tubería estándar de acero- ASTM - ANSI B36.10 ");
                        load_grade_sel_rwb("graastm",1);
                        load_joinf_sel_rwb("jointf",1);
                    }
                }
                
                function onchange_pipe_rad1_rwb(){
                    
                    var sel = $("input[type='radio'][name='pipe1_rad_rwb']:checked");
                    if(sel.val() === "api5l_rwb"){
                        $("#tittle2_rwb").html("Pipe - Specification API 5L ");
                        load_grade_sel_rwb("gra5l",2);
                        load_joinf_sel_rwb("jointf5l",2);
                    }else{
                        $("#tittle2_rwb").html("Tubería estándar de acero- ASTM - ANSI B36.10 ");
                        load_grade_sel_rwb("graastm",2);
                        load_joinf_sel_rwb("jointf",2);
                    }
                }
              
                function load_form_rwb(id){
                    var parametros = {
                        "id": id,
                        "opcion" : "4",
                        "from": "rwb"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            cleanAll_rwb();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            
                            if (data != null)
                            {
                                var tags = Object.keys(data.row);
                                
                                for(var i = 0; i < tags.length; i++){
                                    if(tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user")
                                    {
                                        $("#" + tags[i]).val(data.row[tags[i]]);
                                    }
                                }
                                
                                if(data.row["selh_rwb"] == "api5l_rwb"){
                                    document.getElementById("api5l1_rwb").checked = true; 
                                }else{//astm_ppw
                                    document.getElementById("astm1_rwb").checked = true; 
                                }
                                
                                if(data.row["selb_rwb"] == "api5l_rwb"){
                                    document.getElementById("api5l2_rwb").checked = true; 
                                }else{//astm_ppw
                                    document.getElementById("astm2_rwb").checked = true; 
                                }
                                
                                
                                onchange_pipe_rad_rwb();
                                onchange_pipe_rad1_rwb();
                                
                                $("#grade_sel_rwb").val(data.row.grade_sel_rwb);
                                $("#grade_sel_rwb1").val(data.row.grade_sel_rwb1);
                                
                                $("#longitudinal_jf_rwb").val(data.row.longitudinal_jf_rwb);
                                $("#longitudinal_jf1_rwb").val(data.row.longitudinal_jf1_rwb);
                                
                                $("#proyects_sel_rwb").val(data.row.id_proyect);
                                $("#opt_rwb").val("2");
                            }else{
                                $("#opt_rwb").val("1");
                            }
                        },
                        error: function (xhr, ajaxOptions, err) {
                            $("#opt_rwb").val("1");
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function cleanOut_rwb(){
                    $("#eerr_rwb").val("");
                    $("#lmrr_rwb").val("");
                    $("#dmrr_rwb").val("");
                    $("#rwtoth_rwb").val("");
                    $("#etithw_rwb").val("");
                    $("#rwtotb_rwb").val("");
                    $("#etitb_rwb").val("");
                    $("#arrr_rwb").val("");
                    $("#a1rr_rwb").val("");
                    $("#lheight_rwb").val("");
                    $("#a2eaibo_rwb").val("");
                    $("#a2cea_rwb").val("");
                    $("#a3ra_rwb").val("");
                    $("#appa_rwb").val("");
                }
                
                function cleanIn_rwb(){
                    $("#p1_rwb").val("");  
                    $("#temp_rwb").val(""); 
                    $("#df_rwb").val(""); 
                    $("#h_rwb").val("");                     
                    $("#tar_rwb").val(""); 
                    $("#odh_rwb").val("");                     
                    $("#nwtb_rwb").val(""); 
                    $("#smys_rwb").val("");
                    $("#ljf_rwb").val("");                    
                    $("#bodh_rwb").val("");
                    $("#bnwtb_rwb").val(""); 
                    $("#smys2_rwb").val("");
                    $("#ljf1_rwb").val("");
                    $("#mrod_rwb").val("");
                    $("#rsmys_rwb").val("");
                }
                
                function cleanAll_rwb(){
                    cleanIn_rwb();
                    cleanOut_rwb();
                }
                
                function onchange_Input_rwb(inp){
                    var sw = validateDecimal(inp.value);
                    
                    if(sw != true){
                        inp.value = ""; 
                        cleanOut_rwb();
                    }
                    
                    onchange_Input_zero(inp);
                }
                
                function calculate_rwb(){
                    var variables = {
                            "df_rwb" : $("#df_rwb").val(),
                            "temp_rwb" : $("#temp_rwb").val(),
                            "p1_rwb" : $("#p1_rwb").val(),
                            "odh_rwb" : $("#odh_rwb").val(),
                            "nwtb_rwb" : $("#nwtb_rwb").val(),
                            "smys_rwb" : $("#smys_rwb").val(),
                            "ljf_rwb" : $("#ljf_rwb").val(),
                            "bodh_rwb" : $("#bodh_rwb").val(),
                            "bnwtb_rwb" : $("#bnwtb_rwb").val(),
                            "smys2_rwb" : $("#smys2_rwb").val(),
                            "ljf1_rwb" : $("#ljf1_rwb").val(),
                            "mrod_rwb" : $("#mrod_rwb").val(),
                            "tar_rwb" : $("#tar_rwb").val(),
                            "rsmys_rwb" : $("#rsmys_rwb").val(),
                            "h_rwb" : $("#h_rwb").val()
                            
                            
                    };
                    
                    var isOk = validate(variables);
                    
                    if(isOk === false){
                        alert("You must complete all fields");
                    }else{
                        var unidades = {
                            "mrod_sel_rwb": $("#mrod_sel_rwb").val().split("-")[1],
                            "p1_sel_rwb": $("#p1_sel_rwb").val().split(",")[1],
                            "h_sel_rwb": $("#h_sel_rwb").val().split(",")[1]
                        };
                        
                        var res = reinforcementwelded_Form(variables, unidades);
                        $("#eerr_rwb").val(res[0]);
                        $("#lmrr_rwb").val(res[1]);
                        $("#dmrr_rwb").val(res[2]);
                        $("#rwtoth_rwb").val(res[3]);
                        $("#etithw_rwb").val(res[4]);
                        $("#rwtotb_rwb").val(res[5]);
                        $("#etitb_rwb").val(res[6]);
                        $("#arrr_rwb").val(res[7]);
                        $("#a1rr_rwb").val(res[8]);
                        $("#lheight_rwb").val(res[9]);
                        $("#a2eaibo_rwb").val(res[10]);
                        $("#a2cea_rwb").val(res[11]);
                        $("#a3ra_rwb").val(res[12]);
                        $("#appa_rwb").val(res[13]);


                        show_OkDialog($("#calculate_Dialog_rwb"), "Satisfactory process");
                    }
                }
                
                function save_rwb(){
                    var selh = $("input[type='radio'][name='pipe_rad_rwb']:checked");
                    var selb = $("input[type='radio'][name='pipe1_rad_rwb']:checked");
                    
                    var parametros = {
                            "selh_rwb": selh.val(),
                            "selb_rwb": selb.val(),
                            "p1_rwb" : $("#p1_rwb").val(),  
                            "temp_rwb" : $("#temp_rwb").val(), 
                            "df_rwb" : $("#df_rwb").val(), 
                            "h_rwb" : $("#h_rwb").val(),                     
                            "tar_rwb" : $("#tar_rwb").val(), 
                            "odh_rwb" : $("#odh_rwb").val(),                     
                            "nwtb_rwb" : $("#nwtb_rwb").val(), 
                            "smys_rwb" : $("#smys_rwb").val(),
                            "ljf_rwb" : $("#ljf_rwb").val(),                    
                            "bodh_rwb" : $("#bodh_rwb").val(),
                            "bnwtb_rwb" : $("#bnwtb_rwb").val(), 
                            "smys2_rwb" : $("#smys2_rwb").val(),
                            "ljf1_rwb" : $("#ljf1_rwb").val(),
                            "mrod_rwb" : $("#mrod_rwb").val(),
                            "rsmys_rwb" : $("#rsmys_rwb").val(),
                            
                            "eerr_rwb": $("#eerr_rwb").val(),
                            "lmrr_rwb": $("#lmrr_rwb").val(),
                            "dmrr_rwb": $("#dmrr_rwb").val(),
                            "rwtoth_rwb": $("#rwtoth_rwb").val(),
                            "etithw_rwb": $("#etithw_rwb").val(),
                            
                            "rwtotb_rwb": $("#rwtotb_rwb").val(),
                            "etitb_rwb": $("#etitb_rwb").val(),
                            "arrr_rwb": $("#arrr_rwb").val(),
                            "a1rr_rwb": $("#a1rr_rwb").val(),
                            "lheight_rwb": $("#lheight_rwb").val(),
                            "a2eaibo_rwb": $("#a2eaibo_rwb").val(),
                            "a2cea_rwb": $("#a2cea_rwb").val(),
                            "a3ra_rwb": $("#a3ra_rwb").val(),
                            "appa_rwb": $("#appa_rwb").val(),
                            
                            "temp_sel_rwb": $("#temp_sel_rwb").val(),
                            "df_sel_rwb": $("#df_sel_rwb").val(),
                            "p1_sel_rwb": $("#p1_sel_rwb").val(),
                            "nominalps_sel_rwb": $("#nominalps_sel_rwb").val(),
                            "grade_sel_rwb": $("#grade_sel_rwb").val(),
                            "wthi_sel_rwb": $("#wthi_sel_rwb").val(),
                            "longitudinal_jf_rwb": $("#longitudinal_jf_rwb").val(),
                            "nominalps_sel_rwb1": $("#nominalps_sel_rwb1").val(),
                            "grade_sel_rwb1": $("#grade_sel_rwb1").val(),
                            "wthi_sel1_rwb": $("#wthi_sel1_rwb").val(),
                            "longitudinal_jf1_rwb": $("#longitudinal_jf1_rwb").val(),
                            "mrod_sel_rwb": $("#mrod_sel_rwb").val(),
                            
                            "idproyect": $("#proyects_sel_rwb").val(),
                            "opcion": 1,
                            "iduser": <% out.print(session.getAttribute("idusu"));%>,
                            "id_rwb": $("#id_rwb").val(),
                            "description_rwb": $("#description_rwb").val(),
                            "from": "rwb"
                    };
                    
                    var isOk = validate(parametros);
                    
                    if(isOk === false){
                        alert("Debe realizar el càlculo");
                    }else{
                        
                        $.ajax({
                                type: "POST",
                                url: "Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                beforeSend: function (xhr) {
                                    block("Cargando...");
                                },
                                success: function(data, status, request){
                                    alert(JSON.stringify(data));
                                    $("#id_rwb").val(data.row.id);
                                    $("#opt_rwb").val("2");
                                    show_OkDialog($("#save_Dialog_rwb"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_rwb"), "Error");
                                },
                                complete: function(){
                                    unBlock();
                                }
                            });
                                
                        }
                        
                    
                    
                }
                
                function deleteReg_rwb(){
                    var parametros = {
                            "id_rwb": $("#id_rwb").val(),
                            "opcion" : "3",
                            "from": "rwb"
                    };
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {
                            block("Cargando...");
                        },
                        success: function(data, status, request){
                            $("#id_rwb").val("");
                            $("#description_rwb").val("");                            
                            cleanAll_rwb();
                            show_OkDialog($("#delete_Dialog_rwb"), "Satisfactory process");                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_temp_sel_rwb(){
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
                            var newHtml = "<select class='form-control' name='temp_sel_rwb' id= 'temp_sel_rwb' >" + data;
                            $("#div_tt_sel_rwb").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_pres_sel_rwb(){
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
                            var newHtml = "<select class='form-control' name='p1_sel_rwb' id= 'p1_sel_rwb' >" + data;
                            $("#div_p1_sel_rwb").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_len_sel_rwb(){
                    var parametros = {
                            "combo": "len",
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
                            var newHtml = "<select class='form-control' name='pl_sel_rwb' id= 'pl_sel_rwb' >" + data;
                            $("#div_pl_sel_rwb").html(newHtml);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_in_sel_rwb(){
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
                            var newHtml = "<select class='form-control' name='mrod_sel_rwb' id= 'mrod_sel_rwb' >" + data;
                            $("#div_mrod_sel_rwb").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_he_sel_rwb(){
                    var parametros = {
                            "combo": "he",
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
                            var newHtml = "<select class='form-control' name='h_sel_rwb' id= 'h_sel_rwb' >" + data;
                            $("#div_h_sel_rwb").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_wt_sel_rwb(){
                    var idOp = $("#nominalps_sel_rwb").val();
                    
                    var parametros = {
                        "combo": "wtn",
                        "nps": idOp,
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
                            
                            var newHtml = "<select class='form-control' name='wthi_sel_rwb' id= 'wthi_sel_rwb' onchange='onchange_wt_rwb()'>" + data;
                            var newHtml1 = "<select class='form-control' name='wthi_sel1_rwb' id= 'wthi_sel1_rwb' onchange='onchange_wt1_rwb()'>" + data;
                            $("#div_wallt_sel_rwb").html(newHtml);
                            $("#div_wallt_sel1_rwb").html(newHtml1);
                            
                           if(data.trim() != ""){
                                var val = $("#wthi_sel_rwb").val().trim().split(",");
                                $("#nwtb_rwb").val(val[1]); 
                                var val = $("#wthi_sel1_rwb").val().trim().split(",");
                                $("#bnwtb_rwb").val(val[1]);
                            }
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_wt_sel1_rwb(){
                    var idOp = $("#nominalps_sel_rwb1").val();
                    
                    var parametros = {
                        "combo": "wtn",
                        "nps": idOp,
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
                            
                            var newHtml1 = "<select class='form-control' name='wthi_sel1_rwb' id= 'wthi_sel1_rwb' onchange='onchange_wt1_rwb()'>" + data;
                           
                            $("#div_wallt_sel1_rwb").html(newHtml1);
                            
                           if(data.trim() != ""){
                                  var val = $("#wthi_sel1_rwb").val().trim().split(",");
                                $("#bnwtb_rwb").val(val[1]);
                            }
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function onchange_nps_rwb(){
                    cleanOut_rwb();
                    var po = $("#nominalps_sel_rwb").val();
                    $("#odh_rwb").val(po);
                    load_wt_sel_rwb();
                }
                
                function onchange_nps1_rwb(){
                    cleanOut_rwb();
                    load_wt_sel1_rwb();
                    var po = $("#nominalps_sel_rwb1").val();
                    $("#bodh_rwb").val(po);
                    
                    onchangeDb_rwb();
                    
                }
                
                function onchange_wt_rwb(){
                    cleanOut_rwb();
                    var val = $("#wthi_sel_rwb").val().trim().split(",");
                              $("#nwtb_rwb").val(val[1]);
                }
                
                function onchange_wt1_rwb(){
                   cleanOut_rwb();
                   var val = $("#wthi_sel1_rwb").val().trim().split(",");
                              $("#bnwtb_rwb").val(val[1]);
                }
                
                function load_nps_sel_rwb(type){
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
                            var newHtml = "<select class='form-control' name='nominalps_sel_rwb' id= 'nominalps_sel_rwb' onchange='onchange_nps_rwb()'>" + data;
                            $("#div_nomps_sel_rwb").html(newHtml);
                            
                            onchange_nps_rwb();
                            
                            newHtml = "<select class='form-control' name='nominalps_sel_rwb1' id= 'nominalps_sel_rwb1' onchange='onchange_nps1_rwb()'>" + data;
                            $("#div_nomps_sel1_rwb").html(newHtml);
                            
                            onchange_nps1_rwb();
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rwb"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                
                
               
            </script>
        
        <div id="load_Dialog_rwb" title="Basic dialog" style='display:none;'>
            <p>Successfully uploaded data</p>
        </div>

        <div id="save_Dialog_rwb" title="Basic dialog" style='display:none;'>
            <p>Data saved successfully</p>
        </div>

        <div id="error_Dialog_rwb" title="Basic dialog" style='display:none;'>
            <p>An error has occurred in the process</p>
        </div>

        <div id="calculate_Dialog_rwb" title="Basic dialog" style='display:none;'>
            <p>Calculation done successfully</p>
        </div>

        <div id="delete_Dialog_rwb" title="Basic dialog" style='display:none;'>
            <p>Successfully deleted record</p>
        </div>
    
        
        </div>
    </body>
</html>