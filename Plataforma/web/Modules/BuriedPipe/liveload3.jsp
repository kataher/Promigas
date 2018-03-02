
<%--
    Document   : index
    Created on : 03-mar-2016, 17:02:38
    Author     : kata__000
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="../../includehead.html" %>
    </head>
   
    <body>
        <div class="row">
            <div class="col-lg-9">
                <h2><strong>Distributed Static Surcharge Load: PE Pipe Directly Beneth a Surcharge Load:</strong> Polyethylene Pipe Designg & Stress Analysis</h2>
            </div>
            <div class="col-lg-3">
                
                 <!-- Button trigger modal -->
                 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_dst()">
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
                              <div id="div-table_dst"></div>
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
            <input  class="form-control" type="text" id="description_dst" name="description_dst"><br>
        </div>
            </div>
        <hr>
           
        <div class="col-lg-12">
            
            <div class="col-lg-8">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Referencias
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group col-lg-12">
                                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Selecciona el método para el cálculo
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                  
                                      <div class="form-group col-lg-6">
                                      <div class="checkbox">
                               
                                 <input type="radio" id = "over_dst" name="met_dst" value="1" required onchange="onchangeimg_dst(this)"> Over <br>
                                 <input type="radio" id = "notover_dst" name="met_dst" value="2" required onchange="onchangeimg_dst(this)"> Not Over
                                             
                                </div>
                                    </div>
                                    
                                    <div class="form-group col-lg-6">
                                      
                               
                                  <img id="img_dst" src="img/over.PNG" class="img-rounded" alt="Cinque Terre" width="300" height="200">                                 
                                    </div>
                                                                         
                                </div>
                            </div>
                        </div> 
                    </div></div>
                                        
                                        <div class="form-group col-lg-6">
                                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Reference: ASTM F 1962 - 05; Table X1.1
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                  
                                      <div class="form-group">
                                      <div class="checkbox">                               
                                            <input type="radio" id = "hdpe_dst" name="melas_dst" value="hdpe_dst" required onchange="onchangeae_dst(this)"> HDPE
                                            <input type="radio" id = "mdpe_dst" name="melas_dst" value="mdpe_dst" required onchange="onchangeae_dst(this)"> MDPE<br>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                <div class="col-md-12">
                           <label>Typical Aparent Modulus of Elasticity [psi]:</label>
                                </div>
                                        <div class="col-md-8" id="div_ae_sel_dst">
                           <select class="form-control" id="ae_sel_dst" name="ae_sel_dst"> </select>
                           </div>
                           <div class="col-md-4">
                           <input  class="form-control" type="text" id="ae_dst" name="ae_dst" onchange="onchange_Input_dst(this)" required><br>
                           </div>
                           
                           </div>
                                                                         
                                </div>
                            </div>
                        </div> 
                    </div></div>
                                        <div class="form-group col-lg-6">
                                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Reference: Allowable Compressive Streess
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                      
                                    <div class="form-group">
                                <div class="col-md-12">
                           <label>For PE Pipe Material Designation Code:</label>
                                </div>
                                        <div class="col-md-12" id="div_codeea_sel_dst">
                           <select class="form-control" id="codeea_sel_dst" name="codeea_sel_dst"> </select>
                           </div>
                           </div>
                                    
                                    <div class="form-group">
                                <div class="col-md-12">
                           <label>Allowable COmpressive Stress at 73°F [psi]:</label>
                                </div>
                                        
                           <div class="col-md-12">
                           <input  class="form-control" type="text" id="codeea_dst" name="codeea_dst" onchange="onchange_Input_dst(this)" required><br>
                           </div>
                           
                           </div>
                                                                         
                                </div>
                            </div>
                        </div> 
                    </div></div>
                                        
                                        <div class="form-group col-lg-6">
                                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Reference: Safe Deflection Limits for Pressurized Pipe:
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                      
                                    <div class="form-group">
                                <div class="col-md-12">
                           <label>Pipe DR or DSR:</label>
                                </div>
                                        <div class="col-md-12" id="div_pdr_sel_dst">
                           <select class="form-control" id="pdr_sel_dst" name="pdr_sel_dst"> </select>
                           </div>
                           </div>
                                    
                                    <div class="form-group">
                                <div class="col-md-12">
                           <label>Safe Deflection as % of Pipe Diameter [%]:</label>
                                </div>
                                        
                           <div class="col-md-12">
                           <input  class="form-control" type="text" id="pdr_dst" name="pdr_dst" onchange="onchange_Input_dst(this)" required><br>
                           </div>
                           
                           </div>
                                                                         
                                </div>
                            </div>
                        </div> 
                    </div></div>
                                        
                                        <div class="form-group col-lg-6">
                                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Selecciona el método para el cálculo
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                  
                                      <div class="form-group">
                                      <div class="checkbox">
                               
                                 <input type="radio" id = "pp_dst" name="p_dst" value="pp_dst" required> Prism Load <br>
                                 <input type="radio" id = "pm_dst" name="p_dst" value="pm_dst" required> Marston Load (ASCE Manual No.60) <br>
                                 <input type="radio" id = "pc_dst" name="p_dst" value="pc_dst" required> Combined Prism and Marston Load
                                             
                                </div>
                                    </div>
                                                                         
                                </div>
                            </div>
                        </div> 
                    </div></div>
                                                                          </form>
                                </div>
                            </div>
                        </div> 
                    </div>  
       </div>
               
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Input Data
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                             
                                    <form role="form">
                                        
                                        <div class="form-group col-lg-6">
                                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Pipe Soil Envelope Data
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">                                   
                                    <div class="form-group">
                 <div class="col-md-12">
            <label>Unit wight of soil [lb/ft3]:</label>
                 </div>
            <div class="col-md-8">
            <input class="form-control" type="text" id="unitw_dst" name="unitw_dst" onchange="onchange_Input_dst(this)" required>
            </div>
            </div>
            <div class="form-group">
                 <div class="col-md-12">
            <label>Hight of soil above pipe crown:</label>
                 </div>
            <div class="col-md-8">
            <input  class="form-control" type="text" id="hight_dst" name="hight_dst" onchange="onchange_Input_dst(this)" required><br>
            </div>
            <div class="col-md-4" id="div_hi_sel_dst">
            <select class="form-control" id="hi_sel_dst" name="hi_sel_dst" onchange="cleanOut_dst()"> </select>
            </div>
            </div>
            <div class="form-group">
                <div class="col-md-12">
                <label>Bd - Trench width at pipe crown [ft]:</label>
                </div>
            <div class="col-md-8">
            <input class="form-control" type="text" id="bd_dst" name="bd_dst" onchange="validate_pres_dst(this)" required>
            </div>
            <div class="col-md-4" id = "div_bd_sel_dst">
            <select class="form-control" id="bd_sel_dst" name="bd_sel_dst" onchange="cleanOut_dst()"> </select>
            </div>
             </div>
                                    <div class="form-group">
                <div class="col-md-12">
            <label>For Soil:</label>
                </div>
                <div class="col-md-8" id="div_ku_sel_dst">
                    <select class="form-control" id="ku_sel_dst" name="ku_sel_dst" onchange="onchange_forsoil_dst()"></select>
                </div>
                <div class="col-md-4">
                <input  class="form-control" type="text" id="ku_dst" name="ku_dst" onchange="onchange_Input_dst(this)" required>
                 </div>
               
            </div>
                                    <div class="form-group">
                <div class="col-md-12">
                <label>E' Modulus of Soil Reaction [psi]:</label>
                </div>
            <div class="col-md-12">
            <input class="form-control" type="text" id="ep_dst" name="ep_dst" onchange="validate_pres_dst(this)" required>
            </div>
             </div>
                                   
                                    <div class="form-group">
                <div class="col-md-12">
                <label>E'n - Native Soil Modulus of Soil Reaction [psi]:</label>
                </div>
            <div class="col-md-12">
            <input class="form-control" type="text" id="en_dst" name="en_dst" onchange="validate_pres_dst(this)" required>
            </div>
             </div>
                                   
                                    <div class="form-group">
                <div class="col-md-12">
                <label>Deflection Lag Factor (Typically 1.0 - 1.5):</label>
                </div>
            <div class="col-md-12">
            <input class="form-control" type="text" id="ldl_dst" name="ldl_dst" onchange="validate_pres_dst(this)" required>
            </div>
             </div>
                                   
                                    <div class="form-group">
                <div class="col-md-12">
                <label>Bedding Factor (Typically 0.1):</label>
                </div>
            <div class="col-md-12">
            <input class="form-control" type="text" id="kb_dst" name="kb_dst" onchange="validate_pres_dst(this)" required>
            </div>
             </div>
                                    </div>
                            </div>
                        </div> 
                    </div></div>
                                        <div class="form-group col-lg-6">
                                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Pipe Data
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">                                   
                                    <div class="form-group">
                 <div class="col-md-12">
            <label>Do - Pe Pipe Outside Diameter [in]:</label>
                 </div>
            <div class="col-md-8">
            <input class="form-control" type="text" id="do_dst" name="do_dst" onchange="onchange_Input_dst(this)" required>
            </div>
                                        <div class="col-md-4" id="div_do_sel_dst">
            <select class="form-control" id="do_sel_dst" name="do_sel_dst" onchange="cleanOut_dst()"> </select>
            </div>
            </div>
                                    
                                    <div class="form-group">
                <div class="col-md-12">
                <label>Pe Pipe DR or SDR:</label>
                </div>
            <div class="col-md-12">
            <input class="form-control" type="text" id="dr_dst" name="dr_dst" onchange="validate_pres_dst(this)" required>
            </div>            
             </div>
                                    <div class="form-group">
                <div class="col-md-12">
                <label>Pe Pipe Apparent Modulus of Elastisity [psi]:</label>
                </div>
            <div class="col-md-12">
            <input class="form-control" type="text" id="e_dst" name="e_dst" onchange="validate_pres_dst(this)" required>
            </div>            
             </div>
                                    <div class="form-group">
                <div class="col-md-12">
            <label>Safe Deflection as % of Diamenter [%]:</label>
                </div>
                <div class="col-md-12">
                <input  class="form-control" type="text" id="safed_dst" name="safed_dst" onchange="onchange_Input_dst(this)" required>
                 </div>
               
            </div>
                                    <div class="form-group">
                <div class="col-md-12">
                <label>Allowable Compressive Stress [psi]:</label>
                </div>
            <div class="col-md-12">
            <input class="form-control" type="text" id="as_dst" name="as_dst" onchange="validate_pres_dst(this)" required>
            </div>
             </div>
                                   
            
                                </div>
                            </div>
                        </div> 
                    </div></div>
                                        <div class="form-group col-lg-6">
                                        <div class="panel panel-default">
                        <div class="panel-heading">
                            Pipe Soil Envelope Data
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">                                   
                                    <div class="form-group">
                                        
                 <div class="col-md-12">
            <label>Distribuited Surcharge Pressure [lb/ft2]:</label>
                 </div>
            <div class="col-md-12">
            <input class="form-control" type="text" id="ds_dst" name="ds_dst" onchange="onchange_Input_dst(this)" required>
            </div>
            </div>
                                    <div class="form-group">
                <div class="col-md-12">
                <label>N:</label>
                </div>
            <div class="col-md-8">
            <input class="form-control" type="text" id="n_dst" name="n_dst" onchange="validate_pres_dst(this)" required>
            </div>
            <div class="col-md-4" id = "div_n_sel_dst">
            <select class="form-control" id="n_sel_dst" name="n_sel_dst" onchange="cleanOut_dst()"> </select>
            </div>
             </div>
                                   
                                   
                                   
                                    <div class="form-group">
                <div class="col-md-12">
                <label>M:</label>
                </div>
            <div class="col-md-8">
            <input class="form-control" type="text" id="m_dst" name="m_dst" onchange="validate_pres_dst(this)" required>
            </div>
            <div class="col-md-4" id = "div_m_sel_dst">
            <select class="form-control" id="m_sel_dst" name="m_sel_dst" onchange="cleanOut_dst()"> </select>
            </div>
             </div>
                                   
                                    <div class="form-group">
                <div class="col-md-12">
                <label>M1:</label>
                </div>
            <div class="col-md-8">
            <input class="form-control" type="text" id="m1_dst" name="m1_dst" onchange="validate_pres_dst(this)" required>
            </div>
            <div class="col-md-4" id = "div_m1_sel_dst">
            <select class="form-control" id="m1_sel_dst" name="m1_sel_dst" onchange="cleanOut_dst()"> </select>
            </div>
             </div>
            
                                   
                                    </div>
                            </div>
                        </div> 
                    </div></div>
                                    </form>
                                </div>
                            </div>
                        </div> 
                    </div>  
       </div>
            </div>
            
              
            <div class="col-lg-4">
                   
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Results
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
             <div class="form-group">
            <label> Vertical pressure [lb/ft2]:</label>
            <input type="text" id="pres_dst" name="pres_dst" readonly required class="form-control">
            </div>
             <div class="form-group">
            <label>N/H:</label>
            <input type="text" id="nh_dst" name="nh_dst" readonly required class="form-control">
            </div>
                                    <div class="form-group">
            <label>M/H:</label>           
            <input type="text" id="mh_dst" name="mh_dst" readonly required class="form-control">
            </div>
            <div class="form-group">
            <label>M1/H:</label>           
            <input type="text" id="m1h_dst" name="m1h_dst" readonly required class="form-control">
            </div>
                                    <div class="form-group">
            <label>Influence Factor for Ic = F(N/H, M/H):</label>           
            <input type="text" id="icm_dst" name="icm_dst" readonly required class="form-control">
            </div>
                                    <div class="form-group">
            <label>Influence Factor for Ic = F(N/H, M1/H):</label>           
            <input type="text" id="icm1_dst" name="icm1_dst" readonly required class="form-control">
            </div>
                                    <div class="form-group">
            <label>Vertical Pressure by Surcharge Load [lb/f2]:</label>           
            <input type="text" id="vp_dst" name="vp_dst" readonly required class="form-control">
            </div>
                                    <div class="form-group">
            <label>Bd/Do:</label>           
            <input type="text" id="bddo_dst" name="bddo_dst" readonly required class="form-control">
            </div>
                                    <div class="form-group">
            <label>E'n/E':</label>           
            <input type="text" id="epn_dst" name="epn_dst" readonly required class="form-control">
            </div>
                                     <div class="form-group">
            <label>Fs - Soil Support Factor:</label>           
            <input type="text" id="fs_dst" name="fs_dst" readonly required class="form-control">
            </div>
                 <div class="form-group">
            <label>Deflection as % of Pipe Diameer [%]:</label>           
            <input type="text" id="defl_dst" name="defl_dst" readonly required class="form-control">
            </div>                   
                                    
                                    
            <div class="form-group">
            <label>Compressive Stress [psi]:</label>           
            <input type="text" id="s_dst" name="s_dst" readonly required class="form-control">
            </div>
 <input type="button" id="calculateBtn_dst" name="calculateBtn_dst" value="Calculate" onclick="calculate_dst()" class="btn btn-info btn-block">
 <input type="button" id="saveBtn_dst" name="saveBtn_dst" value="Save" onclick="save_dst()" class="btn btn-success btn-block">  
 <input type="button" id="delteBtn_dst" name="delteBtn_dst" value="Delete" onclick="deleteReg_dst()" class="btn btn-danger btn-block">
           
            </div>
                           </div>
                        </div>
                    </div>
            </div>
           
            <div class="col-lg-12">
           
            <div class="col-md-3">
                <input type="button" id="cleanAllBtn_dst" name="cleanBtn_dst" value="Clean All Data" onclick="cleanAll_dst()" class="btn btn-warning btn-block">
            </div>
                <div class="col-md-3">
                <input type="button" id="cleanInputBtn_dst" name="cleanBtn_dst" value="Clean Input Data" onclick="cleanIn_dst()" class="btn btn-warning btn-block">
            </div>
                <div class="col-md-3">
                <input type="button" id="cleanOutputBtn_dst" name="cleanBtn_dst" value="Clean Output Data" onclick="cleanOut_dst()" class="btn btn-warning btn-block">
            </div>
            </div>
               
        </div>
            <input type="hidden" id="id_dst" name="id_dst"> 
            <input type="hidden" id="opt_dst" name="opt_dst">
           
            <script>
              
               
               
                $(document).ready(function() {
                   
                    $("#opt_dst").val("1");
                    $('#hdpe_dst').attr('checked', 'checked');
                    $('#pp_dst').attr('checked', 'checked');
                    $('#over_dst').attr('checked', 'checked');
                    
                    
                    load_ku_sel_dst();                   
                    load_temp_sel_dst();
                    load_press_sel_dst();
                    load_in_sel_dst();                    
                    load_apaelas_sel_dst("hdpedst");
                    load_codeea_sel_dst();
                    load_pdr_sel_dst();
                   
                });
                
                function onchangeimg_dst(el){
                    
                    if(el.id === "over_dst"){
                        document.getElementById("img_dst").src = "img/over.PNG";
                    }else{
                        document.getElementById("img_dst").src = "img/notover.PNG";
                    }
                    
                    cleanOut_dst();
                    
                }
                
                function onchangeae_dst(el){
                    
                    if(el.id === "hdpe_dst"){
                        load_apaelas_sel_dst("hdpedst");
                    }else{
                        load_apaelas_sel_dst("mdpedst");
                    }
                    
                    cleanOut_dst();
                    
                }
                
                function onchange_pdr_dst(){
                   $("#pdr_dst").val($("#pdr_sel_dst").val().split(",")[1]);
                   $("#safed_dst").val($("#pdr_sel_dst").val().split(",")[1]);
                    cleanOut_dst();
                }
                
                function onchange_apel_dst(){   
                    $("#ae_dst").val($("#ae_sel_dst").val().split(",")[1]);
                    cleanOut_dst();
                   
                }
                
                function onchange_codeea_dst(){
                    $("#codeea_dst").val($("#codeea_sel_dst").val().split(",")[1]);
                    $("#as_dst").val($("#codeea_sel_dst").val().split(",")[1]);
                    cleanOut_dst();
                }
                
                function onchange_comf_dst(){   
                    var sel = $("input[type='radio'][name='opz_dst']:checked");
                   
                    if(sel.val() === "compfactors1_dst"){
                        $("#z1s_dst").addClass("readonly");
                        $("#z1s_dst").attr("readonly",true);
                        $("#z1s_dst").val("0");
                   
                    }else{
                        $("#z1s_dst").removeAttr("readonly");
                        $("#z1s_dst").removeClass("readOnly");
                        $("#z1s_dst").val("");
                    }
                   
                    cleanOut_dst();
                   
                }
               
                function onchange_temp_dst(imp){
                    cleanOut_dst();
                   
                    var vecObj = [$("#bt_sel_dst"),  $("#st_sel_dst")];                           
                    onchageGeneral(vecObj, imp.value);
                   
                    var newHtml = " Temperatura de descarga °[" + imp.value.split(",")[1] + "]:";                   
                    $("#lab_dt_dst").html(newHtml);
                }
               
                function onchange_pres_dst(imp){
                    cleanOut_dst();
                    var obj = [$("#dp_sel_dst"), $("#bd_sel_dst")];
                    onchageGeneral(obj, imp.value);
                   
                }
               
                function onchange_forsoil_dst(){
                    $("#ku_dst").val($("#ku_sel_dst").val().split(",")[1]);
                    cleanOut_dst();
                }

                function onchange_Input_dst(inp){
                   
                    var sw = validateDecimal(inp.value);

                    if(sw !== true){
                        inp.value = "";
                    }  
                    onchange_Input_zero(inp);
                    cleanOut_dst();
                   
                }
               
                function cleanOut_dst(){
                    $("#pres_dst").val("");
                    $("#nh_dst").val("");
                    $("#mh_dst").val("");
                    $("#m1h_dst").val("");
                    $("#icm_dst").val("");
                    $("#icm1_dst").val("");
                    $("#vp_dst").val("");
                    $("#bddo_dst").val("");
                    $("#epn_dst").val("");
                    $("#defl_dst").val("");
                    $("#s_dst").val("");
                }
       
                function cleanIn_dst(){
                    $("#enteree_dst").val("");
                    $("#bd_dst").val("");
                    $("#suctiont_dst").val("");
                    $("#dischargep_dst").val("");
                    $("#gass_dst").val("");
                    $("#adiabatice_dst").val("");
                    $("#hight_dst").val("");
                    $("#unitw_dst").val("");
                }
               
                
                function load_pdr_sel_dst(){
                    var parametros = {
                            "combo": "drdst",
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
                            var newHtml = "<select class='form-control' name='pdr_sel_dst' id='pdr_sel_dst' onchange='onchange_pdr_dst()'>" + data;
                            $("#div_pdr_sel_dst").html(newHtml);
                            $("#pdr_dst").val($("#pdr_sel_dst").val().split(",")[1]);
                            $("#safed_dst").val($("#pdr_sel_dst").val().split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_codeea_sel_dst(){
                    var parametros = {
                            "combo": "codeea",
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
                            var newHtml = "<select class='form-control' name='codeea_sel_dst' id='codeea_sel_dst' onchange='onchange_codeea_dst()'>" + data;
                            $("#div_codeea_sel_dst").html(newHtml);
                            $("#codeea_dst").val($("#codeea_sel_dst").val().split(",")[1]);
                            $("#as_dst").val($("#codeea_sel_dst").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_apaelas_sel_dst(opt){
                    var parametros = {
                            "combo": opt,
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
                            var newHtml = "<select class='form-control' name='ae_sel_dst' id='ae_sel_dst' onchange='onchange_apel_dst()'>" + data;
                            $("#div_ae_sel_dst").html(newHtml);
                            $("#ae_dst").val($("#ae_sel_dst").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                               
                function load_in_sel_dst(){
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
                            var newHtml = "<select class='form-control' name='hi_sel_dst' id='hi_sel_dst'>" + data;
                            $("#div_hi_sel_dst").html(newHtml);
                           
                            newHtml = "<select class='form-control' name='bd_sel_dst' id='bd_sel_dst'>" + data;
                            $("#div_bd_sel_dst").html(newHtml);
                           
                            newHtml = "<select class='form-control' name='n_sel_dst' id='n_sel_dst'>" + data;
                            $("#div_n_sel_dst").html(newHtml);
                           
                            newHtml = "<select class='form-control' name='m_sel_dst' id='m_sel_dst'>" + data;
                            $("#div_m_sel_dst").html(newHtml);
                           
                            newHtml = "<select class='form-control' name='m1_sel_dst' id='m1_sel_dst'>" + data;
                            $("#div_m1_sel_dst").html(newHtml);
                            
                            newHtml = "<select class='form-control' name='do_sel_dst' id='do_sel_dst'>" + data;
                            $("#div_do_sel_dst").html(newHtml);
                            
                           
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_chp"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
               
                function load_history_dst(){
                    var parametros = {
                        "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
            "iduser": <% out.print(session.getAttribute("idusu"));%>,
                        "from": "ah",
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
                            $("#opt_dst").val("1");
                            $("#id_dst").val("");
                            cleanAll_dst();
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
                                html += "<th>Description</th>";
                                html += "<th>Load</th>";
                                html += "</tr>";
                                html += "</thead>";
                           if(tamano > 0){
                             
                            html += '<tbody>';
                            for(var i = 0; i< tamano ; i++){
                               html += "<tr>";
                               html += "<td>"+data.historial[i].date+"</td>";
                               html += "<td>"+data.historial[i].description_dst+"</td>";
                               html += "<td><a href='#' onClick=\"load_form_dst("+data.historial[i].id+")\"><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                           $("#div-table_dst").empty();
                           $("#div-table_dst").html(html);
                          
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_dst"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
               
                function load_ku_sel_dst(){
                    var parametros = {
                            "combo": "soildst",
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
                            var newHtml = "<select class=\"form-control\" name=\"ku_sel_dst\" id=\"ku_sel_dst\" onchange=\"onchange_forsoil_dst()\">" + data;
                            $("#div_ku_sel_dst").html(newHtml); 
                            $("#ku_dst").val($("#ku_sel_dst").val().split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_dst"), "Error");
                            show_OkDialog(err, "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
               
                function load_temp_sel_dst(){
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
                            var newHtml = "<select class=\"form-control\" name=\"st_sel_dst\" id= \"st_sel_dst\" onchange=\"onchange_temp_dst(this)\">" + data;
                            $("#div_st_sel_dst").html(newHtml);     
                           
                            newHtml = "<select class=\"form-control\" name=\"bt_sel_dst\" id= \"bt_sel_dst\" onchange=\"onchange_temp_dst(this)\">" + data;
                            $("#div_bt_sel_dst").html(newHtml);
                           
                            var vecObj = [$("#bt_sel_dst"),  $("#st_sel_dst")];                           
                            onchageGeneral(vecObj, "3,F");
                           
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_dst"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
               
                function load_press_sel_dst(){
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
                            var newHtml = "<select class=\"form-control\" name=\"bd_sel_dst\" id= \"bd_sel_dst\" onchange=\"onchange_pres_dst(this)\">" + data;
                            $("#div_bd_sel_dst").html(newHtml); 
                           
                            newHtml = "<select class=\"form-control\" name=\"bp_sel_dst\" id= \"bp_sel_dst\" onchange=\"cleanOut_dst()\">" + data;
                            $("#div_bp_sel_dst").html(newHtml);
                           
                            newHtml = "<select class=\"form-control\" name=\"bp_sel_dst\" id= \"bp_sel_dst\" onchange=\"cleanOut_dst()\">" + data;
                            $("#div_bp_sel_dst").html(newHtml);
                           
                            var obj = [$("#dp_sel_dst"), $("#bd_sel_dst")];
                            onchageGeneral(obj, "65,psig");
                           
                            $("#bp_sel_dst").val("5,psia");
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_dst"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_form_dst(id){
                   
                   var parametros = {
                        "id": id,
                        "from": "ah",                       
                        "opcion" : "4"
                    };
                   
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            cleanAll_dst();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            if (data != null)
                            {
                                var tags = Object.keys(data.row);
                               
                                for(var i = 0; i < tags.length; i++){
                                    if(tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i]!= "id" &&  tags[i]!="opz_dst")
                                    {
                                       $("#" + tags[i]).val(data.row[tags[i]]);
                                    }
                                }
                               
                                if(data.row["opz_dst"] == "compfactors1_dst"){
                                    document.getElementById("compfactors1_dst").checked = true;
                                    $("#z1s_dst").addClass("readonly");
                                    $("#z1s_dst").attr("readonly",true);

                                }else{
                                    document.getElementById("compfactors2_dst").checked = true;     
                                    $("#z1s_dst").removeAttr("readonly");
                                    $("#z1s_dst").removeClass("readOnly");
                                }
                                $("#opt_dst").val("2");
                                $("#id_dst").val(data.row.id);
                            }else{
                                $("#opt_dst").val("1");
                            }
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            $("#opt_dst").val("1");
                            show_OkDialog($("#error_Dialog_dst"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
               
                function cleanAll_dst(){
                    cleanIn_dst();
                    cleanOut_dst();
                    $("#description_dst").val("");
                }
               
                function validate_pres_dst(inp){                                       
                    onchange_Input_dst(inp);
                    validatePress(inp, $("#bd_dst"), $("#dischargep_dst"));
                }
               
                function calculate_dst(){
                    
                    var el =  $("input[type='radio'][name='p_dst']:checked");
                    var type =  $("input[type='radio'][name='met_dst']:checked");
                                     
                    var variables = {
                        "unitw_dst": $("#unitw_dst").val(),
                        "hight_dst" : $("#hight_dst").val(),
                        "bd_dst": $("#bd_dst").val(),
                        "ku_dst": $("#ku_dst").val(),
                        "n_dst": $("#n_dst").val(),
                        "m_dst": $("#m_dst").val(),
                        "m1_dst": $("#m1_dst").val(),
                        "dr_dst": $("#dr_dst").val(),                        
                        "do_dst": $("#do_dst").val(),
                        "ep_dst": $("#ep_dst").val(),
                        "en_dst": $("#en_dst").val(),
                        "p_dst": el.val(),
                        "type_dst": type.val()
                    };
                   
                    var isOk = validate(variables);
                   
                    if(isOk === false){
                        alert("You must complete all fields");
                    }else{
                   
                        var unidades = {
                            "hi_sel_dst": $("#hi_sel_dst").val().split(",")[1],
                            "bd_sel_dst": $("#bd_sel_dst").val().split(",")[1],
                            "n_sel_dst": $("#n_sel_dst").val().split(",")[1],
                            "m_sel_dst": $("#m_sel_dst").val().split(",")[1],
                            "m1_sel_dst": $("#m1_sel_dst").val().split(",")[1], 
                            "do_sel_dst": $("#do_sel_dst").val().split(",")[1]
                        };


                        var res = distribuitedStatic_Form(variables, unidades);
                       
                        $("#pres_dst").val(res[0]);
                        $("#nh_dst").val(res[1]);
                        $("#mh_dst").val(res[2]);
                        $("#m1h_dst").val(res[3]);
                        $("#s_dst").val(res[4]);
                        $("#icm_dst").val(res[5]);
                        $("#icm1_dst").val(res[6]);                        
                        $("#bddo_dst").val(res[7]);
                       
                        show_OkDialog($("#calculate_Dialog_dst"), "Satisfactory process");
                       
                       
                    }
                }
               
                function save_dst(){
                    var sel = $("input[type='radio'][name='opz_dst']:checked");

                        var parametros = {
                            "z1s_dst": $("#z1s_dst").val(),
                            "opz_dst": sel.val(),
                            "enteree_dst": $("#enteree_dst").val(),
                            "hight_dst": $("#hight_dst").val(),
                            "unitw_dst": $("#unitw_dst").val(),
                            "bd_dst" : $("#bd_dst").val(),
                            "suctiont_dst": $("#suctiont_dst").val(),
                            "dischargep_dst" : $("#dischargep_dst").val(),
                            "gass_dst" : $("#gass_dst").val(),
                            "adiabatice_dst" : $("#adiabatice_dst").val(),
                            "ku_sel_dst" :  $("#ku_sel_dst").val(),
                            "ku_dst": $("#ku_dst").val(),
                            "pres_dst": $("#pres_dst").val(),
                            "nh_dst": $("#nh_dst").val(),
                            "m1h_dst": $("#m1h_dst").val(),
                            "s_dst": $("#s_dst").val(),

                            "bt_sel_dst": $("#bt_sel_dst").val(),
                            "bp_sel_dst": $("#bp_sel_dst").val(),
                            "bd_sel_dst": $("#bd_sel_dst").val(),
                            "st_sel_dst": $("#st_sel_dst").val(),
                            "dp_sel_dst": $("#dp_sel_dst").val(),

                            "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
                            "iduser": <% out.print(session.getAttribute("idusu"));%>,
                            "opcion": $("#opt_dst").val(),
                            "id_dst": 1,
                            "description_dst": $("#description_dst").val(),
                            "from": "ah"
                       
                        };
                           
                           
                       
                        var isOk = validate(parametros);
                       
                        if(isOk === false){
                            alert("You must perform the calculation and fill out the description");
                        }else{
                           
                            if($("#opt_dst").val() == 2){
                                parametros.id_dst = $("#id_dst").val();
                            }
                           
                            $.ajax({
                                type: "POST",
                                url: "Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                beforeSend: function (xhr) {
                                    block("Cargando...");
                                },
                                success: function(data, status, request){
                                    $("#id_dst").val(data.row.id);
                                    $("#opt_dst").val("2");
                                    show_OkDialog($("#save_Dialog_dst"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    show_OkDialog($("#error_Dialog_dst"), "Error");
                                },
                                complete: function(){
                                    unBlock();
                                }
                            });
                        }  
                }
               
                function deleteReg_dst(){
                    var parametros = {
                        "id_dst": $("#id_dst").val(),
                        "opcion": 3,
                        "iduser": <%=session.getAttribute("idusu") %>,
                        "from": "ah"
                    };
                       
                       
                    if($("#opt_dst").val() == 2){
                        $.ajax({
                                type: "POST",
                                url: "Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                beforeSend: function (xhr) {
                                    block("Cargando...");
                                },
                                success: function(data, status, request){
                                    cleanAll_dst();
                                    $("#id_dst").val("");
                                    $("#opt_dst").val("1");
                                    $('#compfactors1_dst').attr('checked', 'checked');
                                    onchange_comf_dst();
                                    show_OkDialog($("#delete_Dialog_dst"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_dst"), "Error");
                                },
                                complete: function(){
                                    unBlock();
                                }
                            });

                    }else{
                        alert("You must load a record to be able to delete it");
                    }
                }
               
            </script>
       
            <div id="load_Dialog_dst" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
           
            <div id="save_Dialog_dst" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
           
            <div id="error_Dialog_dst" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
           
            <div id="calculate_Dialog_dst" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>
           
            <div id="delete_Dialog_dst" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>
    </body>
</html>
