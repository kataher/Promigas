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
                <h2><strong>Pipe Installation:</strong> 1.3. Regulator & Station Piping Sizing</h2>
            </div>
            <div class="col-lg-3"> 
                 
                 <!-- Button trigger modal -->
                 <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" onclick="load_history_rs()">
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
                              <div id="div-table_rs"></div>
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
            <input  class="form-control" type="text" id="description_rs" name="description_rs"><br>
             Projects: 
            <select class="form-control" id="proyects_sel_rs" name="proyects_sel_rs"> </select>
        </div>
        </div>
        <hr>
       
        <div class="col-lg-12">
            <div class="container">
                <ul class="nav nav-tabs nav-justified">
                  <li class="active"><a href="#sited_rs" data-toggle="tab">Site Desing Conditions & Regulator Sizing</a></li>
                  <li><a href="#regulatoru_rs" data-toggle="tab">Regulator Run Sizing - Upstream</a></li>
                  <li><a href="#regulatord_rs" data-toggle="tab">Regulator Run Sizing - Downstream</a></li>
                </ul>
                
                <div class="tab-content">
                    <br>
                    <div class="tab-pane fade in active" id="sited_rs">
                        
                        <div class="col-lg-8">
                            <div class="panel panel-default">
                               <div class="panel-heading">
                                Input Parameters
                            </div>
                                <div class="panel-body">
                                    <div class="row">
                                        
                                        
                                        <div class="col-lg-12">
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
                                        <div class="col-md-12" id="div_temp_sel_rs">
                                            <select class="form-control" id="temp_sel_rs" name="temp_sel_rs" onchange="onchanghe_Combo(this, 1)"></select> 
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                    <div class="col-md-12">
                                    <label>T-Temperature Derating Factor:</label>
                                    <input class="form-control" type="text" id="tempu_rs" name="tempu_rs" onchange="onchange_Input_rs(this, 2)" required>
                                     </div>
                                    </div>
                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                    <label>Design Factor:</label>
                                                        </div>
                                                        <div class="col-md-8" id="div_df_sel_rs">
                                                            <select class="form-control" id="df_sel_rs" name="df_sel_rs" onchange="onchanghe_Combo(this)"></select> 
                                                        </div>
                                                        <div class="col-md-4">
                                                        <input class="form-control" type="text" id="df_rs" name="df_rs"   onchange="onchange_Input_rs(this, 1)" required>
                                                         </div>

                                                    </div>
                                    
                                    
           
                                    
                                    
            </div>
                           </div>
                        </div>
                    </div>
                                            
                                                <div class="form-group">
                                                    <div class="form-group">
            <div class="col-md-12">
            <label>Height:</label>
            </div>
            <div class="col-md-8">
            <input value = "0" class="form-control" type="text" id="enteree_rs" name="enteree_rs" onchange="onchange_Input_rs(this)" required>
            </div>
            <div class="col-md-4" id = "div_ee_sel_rs">
            <select class="form-control" id="ee_sel_rs" name="ee_sel_rs"> </select>
            </div>
            </div>
                                                    

                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                    <label>Gas Specific Gravity:</label>
                                                        </div>
                                                        <div class="col-md-8" id="div_gs_sel_rs">
                                                            <select class="form-control" id="gs_sel_rs" name="gs_sel_rs" onchange="onchanghe_Combo(this, 1)"></select> 
                                                        </div>
                                                        <div class="col-md-4">
                                                        <input class="form-control" type="text" id="gs_rs" name="gs_rs"   onchange="onchange_Input_rs(this, 1)" required>
                                                         </div>

                                                    </div>
                                <div class="form-group">
                     <div class="col-md-12">
                <label>P1- Inlet Pressure:</label> 
                     </div>
                <div class="col-md-8">
                <input value="700" class="form-control" type="text" id="p1_rs" name="p1_rs" onchange="onchange_Input_rs(this, 1)" required ><br>
                </div>
                <div class="col-md-4" id="div_p1_sel_rs">
                <select class="form-control" id="p1_sel_rs" name="p1_sel_rs"> </select>
                </div>
                </div>
                                <div class="form-group">
                     <div class="col-md-12">
                <label>P2- Outlet Pressure:</label> 
                     </div>
                <div class="col-md-8">
                <input  value="300" class="form-control" type="text" id="p2_rs" name="p2_rs" onchange="onchange_Input_rs(this, 1)" required><br>
                </div>
                <div class="col-md-4" id="div_p2_sel_rs">
                <select class="form-control" id="p2_sel_rs" name="p2_sel_rs"> </select>
                </div>
                </div>

                                <div class="form-group">
                     <div class="col-md-12">
                <label>Q - Flujo:</label> 
                     </div>
                <div class="col-md-8">
                <input value="500" class="form-control" type="text" id="flowrate_rs" name="flowrate_rs" onchange="onchange_Input_rs(this, 1)" required><br>
                </div>
                <div class="col-md-4" id="div_fr_sel_rs">
                <select class="form-control" id="fr_sel_rs" name="fr_sel_rs"> </select>
                </div>
                </div>

                                <div class="form-group">
                     <div class="col-md-12">
                         <label> Gas Temperature:</label> 
                     </div>
                <div class="col-md-8">
                <input value="60" class="form-control" type="text" id="flowingg_rs" name="flowingg_rs" onchange="onchange_Input_rs(this, 1)" required><br>
                </div>
                <div class="col-md-4" id="div_fg_sel_rs">
                <select class="form-control" id="fg_sel_rs" name="fg_sel_rs"> </select>
                </div>
                </div>

                        <div class="form-group">
                     <div class="col-md-12">
                <label>C1- Valve Recovery Coefficient:</label> 

                <input  value="35" class="form-control" type="text" id="c1_rs" name="c1_rs" onchange="onchange_Input_rs(this, 1)" required><br>
                </div>
                </div> 

                                <div class="form-group">
                     <div class="col-md-12">
                <label>Capacity Factor (80% Recommended):</label> 

                <input  value="80" class="form-control" type="text" id="capacityr_rs" name="capacityr_rs" onchange="onchange_Input_rs(this, 1)" required><br>
                </div>
               </div> 
                                                    <div class="form-group">
                     <div class="col-md-12">
                <label>Gas Specific Heat Ratio:</label> 

                <input  value="1.25" class="form-control" type="text" id="k_rs" name="k_rs" onchange="onchange_Input_rs(this, 1)" required><br>
                </div>
               </div>

                                                </div>
                                        </div>
                                    </div>
                                </div>  
                            </div>
                            <div>
                                <input type="button" id="cleanAllBtn1_rs" name="cleanAllBtn1_rs" value="Clean All Data" onclick="cleanAll1_rs()" class="btn btn-warning btn-block">
                                <input type="button" id="cleanInputBtn1_rs" name="cleanInputBtn1_rs" value="Clean Input Data" onclick="cleanIn1_rs()" class="btn btn-warning btn-block">
                                <input type="button" id="cleanOutputBtn1_rs" name="cleanOutputBtn1_rs" value="Clean Output Data" onclick="cleanOut1_rs()" class="btn btn-warning btn-block">
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
            <label>Cg- Gas Sizing Coefficient- Calculate:</label>
            <input type="text" id="gassizingc_rs" name="gassizingc_rs" readonly required class="form-control">
            </div>
             <div class="form-group">
            <label>Cgr-Gas Sizing Coefficient- Recommended:</label>
            <input type="text" id="gassizingr_rs" name="gassizingr_rs" readonly required class="form-control">
            </div>
            <div class="form-group">
            <label>Flow Conditions:</label>            
            <input type="text" id="flowc_rs" name="flowc_rs" readonly required class="form-control">
            </div> 
            
 <input type="button" id="calculateBtn_rs" name="calculateBtn_rs" value="Calculate" onclick="calculates1_rs()" class="btn btn-info btn-block">
 
            
            </div>
                           </div>
                        </div>
                    </div>
            </div>
                    </div>
                    <div class="tab-pane" id="regulatoru_rs">
                        
                        <div class="col-lg-8">
                            <div class="panel panel-default">
                               <div class="panel-heading">
                                Input Parameters
                            </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <form role="form">
                                                <div class="form-group">
                                                    <div class="form-group">
                                                    <div class="col-md-12">
                                                        <input type="radio" id = "api5l_rs" name="linepipe_rs" value="api5l_rs" onchange="onchange_linepipe_rs()" required> Line Pipe- API Specification 5L <br>
                                                        <input type="radio" id = "astm_rs" name="linepipe_rs" value="astm_rs" onchange="onchange_linepipe_rs()" required> Standart Steel Pipe - ASTM - ANSI B36.10
                                                    </div>
                                                    </div>                                    

                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                    <label>Line Pipe API 5L - Grade:</label>
                                                        </div>
                                                        <div class="col-md-8" id="div_grade_sel_rs">
                                                            <select class="form-control" id="grade_sel_rs" name="grade_sel_rs"></select> 
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                    <label>Longitudinal Joint Factor - E:</label>
                                                        </div>
                                                        <div class="col-md-8" id="div_jf_sel_rs">
                                                            <select class="form-control" id="jf_sel_rs" name="jf_sel_rs"></select> 
                                                        </div>

                                                    </div>
                                                    
                                                    
                                <div class="form-group">
                     <div class="col-md-12">
                <label>P1- Operating Pressure - Upstream:</label> 
                     </div>
                <div class="col-md-8">
                <input   value="700" class="form-control" type="text" id="p1opu_rs" name="p1opu_rs" onchange="onchange_Input_rs(this, 2)" required><br>
                </div>
                <div class="col-md-4" id="div_p1opu_sel_rs">
                <select class="form-control" id="p1opu_sel_rs" name="p1opu_sel_rs"> </select>
                </div>
                </div>

                                <div class="form-group">
                     <div class="col-md-12">
                <label>Q - Flow Rate:</label> 
                     </div>
                <div class="col-md-8">
                <input   value="500" class="form-control" type="text" id="flowrateu_rs" name="flowrateu_rs" onchange="onchange_Input_rs(this, 2)" required><br>
                </div>
                <div class="col-md-4" id="div_fru_sel_rs">
                <select class="form-control" id="fru_sel_rs" name="fru_sel_rs"> </select>
                </div>
                </div>

                                <div class="form-group">
                     <div class="col-md-12">
                <label>V-Assumed Gas Velocity:</label> 
                     </div>
                <div class="col-md-8">
                <input  class="form-control" value ="50" type="text" id="ag_rs" name="ag_rs" onchange="onchange_Input_rs(this, 2)" required><br>
                </div>
                                    <div class="col-md-4" id="div_agu_sel_rs">
                <select class="form-control" id="agu_sel_rs" name="agu_sel_rs"> </select>
                </div>
                </div>

                                                    
                                                     <div class="form-group">
                                                        <div class="col-md-12">
                                                        <label>SMYS- Specified Minimum Yield Strength [psi]:</label>
                                                        <input class="form-control" type="text" id="smys_rs" name="smys_rs"   onchange="onchange_Input_rs(this, 2)" required>
                                                         </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                    <label>E- Longitudinal Joint Factor:</label>

                                                        <input class="form-control" type="text" id="jfu_rs" name="jfu_rs"   onchange="onchange_Input_rs(this, 2)" required>
                                                         </div>
                                                    </div>



                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>  
                            </div>
                            
                            <div>
                                <input type="button" id="cleanAllBtn2_rs" name="cleanAllBtn2_rs" value="Clean All Data" onclick="cleanAll2_rs()" class="btn btn-warning btn-block">
                                <input type="button" id="cleanInputBtn2_rs" name="cleanInputBtn2_rs" value="Clean Input Data" onclick="cleanIn2_rs()" class="btn btn-warning btn-block">
                                <input type="button" id="cleanOutputBtn2_rs" name="cleanOutputBtn2_rs" value="Clean Output Data" onclick="cleanOut2_rs()" class="btn btn-warning btn-block">
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
            <label>ID1- Calculated Inside Diameter [in]:</label>
            <input type="text" id="calculatedi_rs" name="calculatedi_rs" readonly required class="form-control">
            </div>
             <div class="form-group">
            <label>Minimun Required Pipe Wall Thickness [in]:</label>
            <input type="text" id="minimunr_rs" name="minimunr_rs" readonly required class="form-control">
            </div>
            <div class="form-group">
            <label>OD1- Calculated Outside Diameter [in]:</label>            
            <input type="text" id="calculatedo_rs" name="calculatedo_rs" readonly required class="form-control">
            </div> 
            
            <input type="button" id="calculateBtn2_rs" name="calculateBtn2_rs" value="Calculate" onclick="calculates2_rs()" class="btn btn-info btn-block">
            </div>
                           </div>
                        </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="regulatord_rs">
                        
                        <div class="col-lg-8">
                            <div class="panel panel-default">
                               <div class="panel-heading">
                                Input Parameters
                            </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <form role="form">
                                                <div class="form-group">
                                                    <div class="form-group">
                                                    <div class="col-md-12">
                                                        <input type="radio" id = "api5ld_rs" name="linepiped_rs" value="api5ld_rs" onchange="onchange_linepiped_rs()" required> Line Pipe- API Specification 5L <br>
                                                        <input type="radio" id = "astmd_rs" name="linepiped_rs" value="astmd_rs" onchange="onchange_linepiped_rs()" required> Standart Steel Pipe - ASTM - ANSI B36.10
                                                    </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                    <label>Line Pipe API 5L - Grade:</label>
                                                        </div>
                                                        <div class="col-md-8" id="div_graded_sel_rs">
                                                            <select class="form-control" id="graded_sel_rs" name="graded_sel_rs"></select> 
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                    <label>E- Longitudinal Joint Factor:</label>
                                                        </div>
                                                        <div class="col-md-8" id="div_jfd_sel_rs">
                                                            <select class="form-control" id="jfd_sel_rs" name="jfd_sel_rs"></select> 
                                                        </div>
                                                    </div>
                                <div class="form-group">
                     <div class="col-md-12">
                <label>P2- Operating Pressure - Dowstream:</label> 
                     </div>
                <div class="col-md-8">
                <input  class="form-control" value ="700" type="text" id="p2op_rs" name="p2op_rs" onchange="onchange_Input_rs(this, 3)" required><br>
                </div>
                <div class="col-md-4" id="div_p2op_sel_rs">
                <select class="form-control" id="p2op_sel_rs" name="p2op_sel_rs"> </select>
                </div>
                </div>

                                <div class="form-group">
                     <div class="col-md-12">
                <label>Q-  Flow Rate:</label> 
                     </div>
                <div class="col-md-8">
                <input  class="form-control" value="500" type="text" id="flowrated_rs" name="flowrated_rs" onchange="onchange_Input_rs(this, 3)" required><br>
                </div>
                <div class="col-md-4" id="div_frd_sel_rs">
                <select class="form-control" id="frd_sel_rs" name="frd_sel_rs"> </select>
                </div>
                </div>

                                <div class="form-group">
                     <div class="col-md-12">
                <label>V- Assumed Gas Velocity [ft/sec]:</label> 
                     </div>
                <div class="col-md-8">
                <input  class="form-control" value="50" type="text" id="agd_rs" name="agd_rs" onchange="onchange_Input_rs(this, 3)" required><br>
                </div>
                                    <div class="col-md-4" id="div_agud_sel_rs">
                <select class="form-control" id="agud_sel_rs" name="agud_sel_rs"> </select>
                </div>
                </div>

                                                    
                                                     <div class="form-group">
                                                        <div class="col-md-12">
                                                    <label>SMYS- Specified Minimum Yield Strength [psi]:</label>
                                                        
                                                         
                                                        <input class="form-control" type="text" id="smysd_rs" name="smysd_rs" onchange="onchange_Input_rs(this, 3)" required>
                                                         </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <div class="col-md-12">
                                                    <label>Longitudinal Joint Factor - E:</label>

                                                        <input class="form-control" type="text" id="jfdp_rs" name="jfdp_rs"  onchange="onchange_Input_rs(this, 3)" required>
                                                         </div>

                                                    </div>



                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>  
                            </div>
                            
                            <div>
                                <input type="button" id="cleanAllBtn3_rs" name="cleanAllBtn3_rs" value="Clean All Data" onclick="cleanAll3_rs()" class="btn btn-warning btn-block">
                                <input type="button" id="cleanInputBtn3_rs" name="cleanInputBtn3_rs" value="Clean Input Data" onclick="cleanIn3_rs()" class="btn btn-warning btn-block">
                                <input type="button" id="cleanOutputBtn3_rs" name="cleanOutputBtn3_rs" value="Clean Output Data" onclick="cleanOut3_rs()" class="btn btn-warning btn-block">
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
            <label>ID2- Calculated Inside Diameter:</label>
            <input type="text" id="calculatedid_rs" name="calculatedid_rs" readonly required class="form-control">
            </div>
             <div class="form-group">
            <label>Minimum Required Pipe Wall Thickness:</label>
            <input type="text" id="minimunrd_rs" name="minimunrd_rs" readonly required class="form-control">
            </div>
            <div class="form-group">
            <label>OD2- Calculated Outside Diameter:</label>            
            <input type="text" id="calculatedod_rs" name="calculatedod_rs" readonly required class="form-control">
            </div> 
            
            <input type="button" id="calculateBtn3_rs" name="calculateBtn3_rs" value="Calculate" onclick="calculates3_rs()" class="btn btn-info btn-block">
            <input type="button" id="saveBtn_rs" name="saveBtn_rs" value="Save" onclick="save_rs()" class="btn btn-success btn-block">   
            <input type="button" id="delteBtn_rs" name="delteBtn_rs" value="Delete" onclick="delete_rs()" class="btn btn-danger btn-block">
            </div>
                           </div>
                        </div>
                    </div>
            </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
            
            
            <input type="hidden" id="id_rs" name="id_rs">  
            <input type="hidden" id="opt_rs" name="opt_rs"> 
            
            <script>
                $(document).ready(function() {  
                    
                                      
                    
                    $("#opt_rs").val("1");
                    $('#api5l_rs').attr('checked', 'checked');
                    $('#api5ld_rs').attr('checked', 'checked');
                    
                    load_desingf_sel_rs();
                    load_press_sel_rs();
                    
                    load_deratingf_sel_rs();
                    load_gasspecificg_sel_rs();
                    load_fluE_sel_rs();
                    load_temp_sel_rs();
                    load_grade_sel_rs("gra5l");
                    load_joinf_sel_rs("jointf5l");
                    load_graded_sel_rs("gra5l");
                    load_joinfd_sel_rs("jointf5l");
                    load_gasvu_sel_rs();
                    load_in_sel_rs();
                    
                    getproyectos(<%=session.getAttribute("idusu") %>,
                                $("#proyects_sel_rs"),
                                $("#error_Dialog_rs"));
                    
                    //document.getElementById('agu_sel_rs').style.visibility = 'hidden';
                    
                    //document.getElementById('agud_sel_rs').style.visibility = 'hidden';
                    
                });
                
                function load_history_rs(){
                    var parametros = {
                        "idproyect": <% out.print(session.getAttribute("id_proyect"));%>,
			"iduser": <% out.print(session.getAttribute("idusu"));%>,
                        "opcion" : "6",
                        "nombre" : "historial",
                        "from": "rs"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        async : false,
                        beforeSend: function (xhr) {
                            cleanAll1_rs();
                            cleanAll2_rs();
                            cleanAll3_rs();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            
                            if(data!==null)
                            {
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
                               html += "<td>"+data.historial[i].description_rs+"</td>";
                               html += "<td><a href='#' onClick='load_form_rs("+data.historial[i].id+")'><span class='glyphicon glyphicon-plus' aria-hidden='true'></span></a></td>";
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
                           $("#div-table_rs").empty();
                           $("#div-table_rs").html(html);
                           
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                
                
                function load_form_rs(id){
                    
                   var parametros = {
                        "id": id,
                        "opcion" : "4",
                        "from": "rs"
                    };
                    
                    $.ajax({
                        type: "POST",
                        url: "Modules/manager.jsp",
                        data: parametros,
                        dataType: 'json',
                        beforeSend: function (xhr) {
                            cleanAll1_rs();
                            cleanAll2_rs();
                            cleanAll3_rs();
                            block("Cargado datos...");
                        },
                        success: function(data, status, request){
                            if (data != null)
                            {
                                var tags = Object.keys(data.row);
                                
                                for(var i = 0; i < tags.length; i++){
                                    if(tags[i] != "date" && tags[i] != "id_proyect" && tags[i] != "id_user" && tags[i]!= "id")
                                    {
                                       $("#" + tags[i]).val(data.row[tags[i]]);
                                    }
                                }
                                
                                if(data.row["linepipe_rs"] == "api5l_rs"){
                                    document.getElementById("api5l_rs").checked = true;
                                    load_grade_sel_rs("gra5l");
                                    load_joinf_sel_rs("jointf5l");
                                }else{//astm_rs
                                    document.getElementById("astm_rs").checked = true; 
                                    load_grade_sel_rs("graastm");
                                    load_joinf_sel_rs("jointf");
                                }
                                
                                if(data.row["linepiped_rs"] == "api5ld_rs"){
                                    document.getElementById("api5ld_rs").checked = true;
                                    load_graded_sel_rs("gra5l");
                                    load_joinfd_sel_rs("jointf5l");
                                }else{//astm_rs
                                    document.getElementById("astmd_rs").checked = true; 
                                    load_graded_sel_rs("graastm");
                                    load_joinfd_sel_rs("jointf");
                                }
                                
                                $("#grade_sel_rs").val(data.row["grade_sel_rs"]);
                                $("#smys_rs").val(data.row["smys_rs"]);
                                
                                $("#graded_sel_rs").val(data.row["graded_sel_rs"]);
                                $("#smysd_rs").val(data.row["smysd_rs"]);
                                
                                $("#jf_sel_rs").val(data.row["jf_sel_rs"]);
                                $("#jfd_sel_rs").val(data.row["jfd_sel_rs"]);
                                
                                $("#proyects_sel_rs").val(data.row.id_proyect);
                                $("#opt_rs").val("2");
                                $("#id_rs").val(data.row.id);
                            }else{
                                $("#opt_rs").val("1");
                            }
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            $("#opt_rs").val("1");
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                           unBlock();
                        }
                    });
                }
                
                function load_in_sel_rs(){
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
                            var newHtml = "<select class='form-control' name='ee_sel_rs' id= 'ee_sel_rs'>" + data;
                            $("#div_ee_sel_rs").html(newHtml);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_fluE_sel_rs(){
                    var parametros = {
                            "combo": "fluE",
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
                            var newHtml = "<select class='form-control' name='fr_sel_rs' id='fr_sel_rs' onchange='onchange_flujo_rs(this)'>" + data;
                            $("#div_fr_sel_rs").html(newHtml); 
                            
                            newHtml = "<select class='form-control' name='fru_sel_rs' id='fru_sel_rs' onchange='onchange_flujo_rs(this)'>" + data;
                            $("#div_fru_sel_rs").html(newHtml);
                            
                            newHtml = "<select class='form-control' name='frd_sel_rs' id='frd_sel_rs' onchange='onchange_flujo_rs(this)'>" + data;
                            $("#div_frd_sel_rs").html(newHtml);
                            
                            var obj = [$("#fr_sel_rs"), $("#fru_sel_rs"), $("#frd_sel_rs")];
                            onchageGeneral(obj, "67,MSCFH");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function onchange_flujo_rs(imp){
                    cleanOut1_rs();
                    cleanOut2_rs();
                    cleanOut3_rs();
                    
                    var obj = [$("#fr_sel_rs"), $("#fru_sel_rs"), $("#frd_sel_rs")];
                    onchageGeneral(obj, imp.value);
                }
                
                function load_temp_sel_rs(){
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
                            var newHtml = "<select class='form-control' name='fg_sel_rs' id='fg_sel_rs' >" + data;
                            $("#div_fg_sel_rs").html(newHtml); 
                            
                            $("#fg_sel_rs").val("3,F");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_deratingf_sel_rs(){
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
                            var newHtml = "<select class='form-control' name='temp_sel_rs' id='temp_sel_rs' onchange='onchanghe_Combo(this)'>" + data;
                            $("#div_temp_sel_rs").html(newHtml); 
                            
                            var x = $("#temp_sel_rs").val();
                            $("#tempu_rs").val(x.split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_desingf_sel_rs(){
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
                            var newHtml = "<select class='form-control' name='df_sel_rs' id='df_sel_rs' onchange='onchanghe_Combo(this)'>" + data;
                            $("#div_df_sel_rs").html(newHtml); 
                            
                            var x = $("#df_sel_rs").val();
                            $("#df_rs").val(x.split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_gasspecificg_sel_rs(){
                    var parametros = {
                            "combo": "gsg",
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
                            var newHtml = "<select class='form-control' name='gs_sel_rs' id='gs_sel_rs' onchange='onchanghe_Combo(this)'>" + data;
                            $("#div_gs_sel_rs").html(newHtml); 
                            
                            var x = $("#gs_sel_rs").val();
                            $("#gs_rs").val(x.split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_graded_sel_rs(idcombo){
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
                            var newHtml = "<select class='form-control' name='graded_sel_rs' id='graded_sel_rs' onchange='onchanghe_Combo(this)'>" + data;
                            $("#div_graded_sel_rs").html(newHtml); 
                            
                            var x = $("#graded_sel_rs").val();
                            $("#smysd_rs").val(x.split(",")[1]);
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_joinfd_sel_rs(idcombo){
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
                            var newHtml = "<select class='form-control' name='jfd_sel_rs' id='jfd_sel_rs' onchange='onchanghe_Combo(this)'>" + data;
                            $("#div_jfd_sel_rs").html(newHtml);
                            
                            var x = $("#jfd_sel_rs").val();
                            $("#jfdp_rs").val(x.split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_grade_sel_rs(idcombo){
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
                            var newHtml = "<select class='form-control' name='grade_sel_rs' id='grade_sel_rs' onchange='onchanghe_Combo(this)'>" + data;
                            $("#div_grade_sel_rs").html(newHtml); 
                            
                            var x = $("#grade_sel_rs").val();
                            $("#smys_rs").val(x.split(",")[1]);
                            
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_joinf_sel_rs(idcombo){
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
                            var newHtml = "<select class='form-control' name='jf_sel_rs' id='jf_sel_rs' onchange='onchanghe_Combo(this)'>" + data;
                            $("#div_jf_sel_rs").html(newHtml);
                            
                            var x = $("#jf_sel_rs").val();
                            $("#jfu_rs").val(x.split(",")[1]);
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_gasvu_sel_rs(){
                    var parametros = {
                            "combo": "gasvu",
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
                            var newHtml = "<select class='form-control' name='agu_sel_rs' id='agu_sel_rs'>" + data;
                            $("#div_agu_sel_rs").html(newHtml); 
                            
                            newHtml = "<select class='form-control' name='agud_sel_rs' id='agud_sel_rs'>" + data;
                            $("#div_agud_sel_rs").html(newHtml); 
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_press_sel_rs(){
                    var parametros = {
                            "combo": "pres",
                            "opcion" : "5"
                    };
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "Modules/manager.jsp",
                        data: parametros,
                        beforeSend: function (xhr) {                            
                            block("Cargando...");
                        },
                        success: function(data, status, request){ 
                            var newHtml = "<select class='form-control' name='p1_sel_rs' id= 'p1_sel_rs' onchange='onchange_pres_rs(this)'>" + data;
                            $("#div_p1_sel_rs").html(newHtml);  
                            
                            newHtml = "<select class='form-control' name='p2_sel_rs' id= 'p2_sel_rs' onchange='onchange_pres_rs(this)'>" + data;
                            $("#div_p2_sel_rs").html(newHtml);
                            
                            newHtml = "<select class='form-control' name='p1opu_sel_rs' id= 'p1opu_sel_rs' onchange='onchange_pres_rs(this)'>" + data;
                            $("#div_p1opu_sel_rs").html(newHtml);
                            
                            newHtml = "<select class='form-control' name='p2op_sel_rs' id= 'p2op_sel_rs' onchange='onchange_pres_rs(this)'>" + data;
                            $("#div_p2op_sel_rs").html(newHtml);
                            
                            var obj = [$("#p1_sel_rs"), $("#p2_sel_rs"), $("#p1opu_sel_rs"), $("#p2op_sel_rs")];
                            onchageGeneral(obj, "65,psig");
                            
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                function load_fluE_sel_rs(){
                    var parametros = {
                            "combo": "fluE",
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
                            var newHtml = "<select class=\"form-control\" name=\"fr_sel_rs\" id=\"fr_sel_rs\" onchange=\"onchange_flujo_rs(this)\">" + data;
                            $("#div_fr_sel_rs").html(newHtml); 
                            
                            newHtml = "<select class=\"form-control\" name=\"fru_sel_rs\" id=\"fru_sel_rs\" onchange=\"onchange_flujo_rs(this)\">" + data;
                            $("#div_fru_sel_rs").html(newHtml);
                            
                            newHtml = "<select class=\"form-control\" name=\"frd_sel_rs\" id=\"frd_sel_rs\" onchange=\"onchange_flujo_rs(this)\">" + data;
                            $("#div_frd_sel_rs").html(newHtml);
                            
                            var obj = [$("#fr_sel_rs"), $("#fru_sel_rs"), $("#frd_sel_rs")];
                            onchageGeneral(obj, "67,MSCFH");
                        },
                        error: function (xhr, ajaxOptions, err) {
                            show_OkDialog($("#error_Dialog_rs"), "Error");
                        },
                        complete: function(){
                            unBlock();
                        }
                     });
                }
                
                
                function onchange_pres_rs(imp){
                    cleanOut1_rs();
                    cleanOut2_rs();
                    cleanOut3_rs();
                    var obj = [$("#p1_sel_rs"), $("#p2_sel_rs"), $("#p1opu_sel_rs"), $("#p2op_sel_rs")];
                    onchageGeneral(obj, imp.value);
                }
                 
                function cleanOut1_rs(){
                    $("#gassizingc_rs").val("");
                    $("#gassizingr_rs").val("");
                    $("#flowc_rs").val("");
                }
                
                function cleanOut2_rs(){
                    $("#calculatedi_rs").val("");                    
                    $("#minimunr_rs").val("");
                    $("#calculatedo_rs").val("");
                }
                
                function cleanOut3_rs(){
                    $("#calculatedid_rs").val("");
                    $("#minimunrd_rs").val("");
                    $("#calculatedod_rs").val("");
                }
        
                function cleanIn1_rs(){
                    $("#df_rs").val("");
                    $("#gs_rs").val("");
                    $("#p1_rs").val("");
                    $("#p2_rs").val("");
                    $("#flowrate_rs").val("");
                    $("#flowingg_rs").val("");
                    $("#c1_rs").val("");
                    $("#capacityr_rs").val("");
                }
                
                function cleanIn2_rs(){
                    $("#p1opu_rs").val("");
                    $("#flowrateu_rs").val("");
                    $("#ag_rs").val("");
                    $("#tempu_rs").val("");
                    $("#smys_rs").val("");
                    $("#jfu_rs").val("");
                    
                }
                
                function cleanIn3_rs(){
                    $("#p2op_rs").val("");
                    $("#flowrated_rs").val("");
                    $("#agd_rs").val("");
                    $("#smysd_rs").val("");
                    $("#jfdp_rs").val("");
                    
                }
                
                function cleanAll1_rs(){
                    cleanIn1_rs();
                    cleanOut1_rs();
                }
                
                function cleanAll2_rs(){
                    cleanIn2_rs();
                    cleanOut2_rs();
                }
                
                function cleanAll3_rs(){
                    cleanIn3_rs();
                    cleanOut3_rs();
                }
                
                function onchange_Input_rs(inp, op){
                    
                    var sw = validateDecimal(inp.value);
                    
                    if(sw != true){
                        inp.value = "";
                    }
                    
                    if(op == 1){
                        cleanOut1_rs();
                    }else if(op == 2){
                        cleanOut2_rs();
                    }else if(op == 3){
                        cleanOut3_rs();
                    }
                    
                    onchange_Input_zero(inp);
                    
                }
                
                function onchanghe_Combo(inp){
                    var x = inp.value;
                    
                    var inpname = inp.name.split("_")[0] + "_" + inp.name.split("_")[2];
                    
                    $("#"+inpname).val(x.split(",")[1]);
                    
                    if(inp.name == "grade_sel_rs"){
                        $("#smys_rs").val(inp.value.split(",")[1]);
                    }
                    
                    if(inp.name == "jf_sel_rs"){
                        $("#jfu_rs").val(inp.value.split(",")[1]);
                    }
                    
                    if(inp.name == "graded_sel_rs"){
                        $("#smysd_rs").val(inp.value.split(",")[1]);
                    }
                    
                    if(inp.name == "jfd_sel_rs"){
                        $("#jfdp_rs").val(inp.value.split(",")[1]);
                    }
                    
                    if(inp.name == "temp_sel_rs"){
                        $("#tempu_rs").val(inp.value.split(",")[1]);
                    }
                        
                }
                
                function calculates1_rs(){
                    
                    var variables = {
                            "df_rs" : $("#df_rs").val(),
                            "gs_rs" : $("#gs_rs").val(),
                            "p1_rs" : $("#p1_rs").val(),
                            "p2_rs" : $("#p2_rs").val(),
                            "flowrate_rs": $("#flowrate_rs").val(),
                            "flowingg_rs": $("#flowingg_rs").val(),
                            "c1_rs": $("#c1_rs").val(),
                            "capacityr_rs": $("#capacityr_rs").val(),
                            "enteree_rs": $("#enteree_rs").val(),
                            "k_rs": $("#k_rs").val()
                    };
                    
                    var isOk = validate(variables);
                    
                    if(isOk === false){
                        alert("You must complete all fields");
                    }else{
                    
                        var unidades  = {
                            "ee_sel_rs" : $("#ee_sel_rs").val().split(",")[1],
                            "p1_sel_rs" : $("#p1_sel_rs").val().split(",")[1],
                            "p2_sel_rs" : $("#p2_sel_rs").val().split(",")[1],
                            "fr_sel_rs": $("#fr_sel_rs").val().split(",")[1],
                            "fg_sel_rs": $("#fg_sel_rs").val().split(",")[1]
                            
                        };
                        var res = regulatorSizing1_Form(variables, unidades);
                        
                        
                        $("#gassizingc_rs").val(res[0]);
                        $("#gassizingr_rs").val(res[1]);
                        $("#flowc_rs").val(res[2]);

                        show_OkDialog($("#calculate_Dialog_rs"), "Satisfactory process");
                    }
                }
                
                function calculates2_rs(){
                    
                    
                    var variables = {
                            "flowingg_rs": $("#flowingg_rs").val(),
                            "p1opu_rs" : $("#p1opu_rs").val(),
                            "flowrateu_rs" : $("#flowrateu_rs").val(),
                            "ag_rs" : $("#ag_rs").val(),
                            "tempu_rs": $("#tempu_rs").val(),
                            "smys_rs": $("#smys_rs").val(),
                            "jfu_rs": $("#jfu_rs").val(),
                            "enteree_rs": $("#enteree_rs").val(),
                            "df_rs": $("#df_rs").val()
                    };
                    
                    var isOk = validate(variables);
                    
                    if(isOk === false){
                        alert("You must complete all fields");
                    }else{
                    
                        var unidades  = {
                            "p1opu_sel_rs" : $("#p1opu_sel_rs").val().split(",")[1],
                            "fru_sel_rs": $("#fru_sel_rs").val().split(",")[1],
                            "fg_sel_rs":  $("#fg_sel_rs").val().split(",")[1],
                            "ee_sel_rs" : $("#ee_sel_rs").val().split(",")[1]
                        };

                        var res = regulatorSizing2_Form(variables, unidades);
                        
                        $("#calculatedi_rs").val(res[0]);
                        $("#minimunr_rs").val(res[1]);
                        $("#calculatedo_rs").val(res[2]);
                    
                        show_OkDialog($("#calculate_Dialog_rs"), "Satisfactory process");
                    }
                }
                
                function calculates3_rs(){
                    var variables = {
                            "flowingg_rs": $("#flowingg_rs").val(),
                            "p2op_rs" : $("#p2op_rs").val(),
                            "flowrated_rs" : $("#flowrated_rs").val(),
                            "agd_rs" : $("#agd_rs").val(),
                            "df_rs": $("#df_rs").val(),
                            "tempu_rs": $("#tempu_rs").val(),
                            "smysd_rs": $("#smysd_rs").val(),
                            "jfdp_rs": $("#jfdp_rs").val(),
                            "enteree_rs": $("#enteree_rs").val()
                    };
                   
                    var isOk = validate(variables);
                    
                    if(isOk === false){
                        alert("You must complete all fields");
                    }else{
                    
                        var unidades  = {
                            "p2op_sel_rs" : $("#p2op_sel_rs").val().split(",")[1],
                            "ee_sel_rs": $("#ee_sel_rs").val().split(",")[1],
                            "fg_sel_rs": $("#fg_sel_rs").val().split(",")[1],
                            "frd_sel_rs": $("#frd_sel_rs").val().split(",")[1]
                        };
                    
                        var res = regulatorSizing3_Form(variables, unidades);
                        
                        $("#calculatedid_rs").val(res[0]);
                        $("#minimunrd_rs").val(res[1]);
                        $("#calculatedod_rs").val(res[2]);

                        show_OkDialog($("#calculate_Dialog_rs"), "Satisfactory process");
                    }
                }
                
                function onchange_linepipe_rs(){    
                    
                    var sel = $("input[type='radio'][name='linepipe_rs']:checked");
                    if(sel.val() == "api5l_rs"){
                        load_grade_sel_rs("gra5l");
                        load_joinf_sel_rs("jointf5l");
                    }else{
                        load_grade_sel_rs("graastm");
                        load_joinf_sel_rs("jointf");
                    }
                    
                }
                
                function onchange_linepiped_rs(){    
                    
                    var sel = $("input[type='radio'][name='linepiped_rs']:checked");
                    if(sel.val() == "api5ld_rs"){
                        load_graded_sel_rs("gra5l");
                        load_joinfd_sel_rs("jointf5l");
                    }else{
                        load_graded_sel_rs("graastm");
                        load_joinfd_sel_rs("jointf");
                    }
                    
                }
                
                function save_rs(){
                    
                    var sel1 = $("input[type='radio'][name='linepipe_rs']:checked");
                    var sel2 = $("input[type='radio'][name='linepiped_rs']:checked");
                    
                    var parametros = {
                        "df_rs" : $("#df_rs").val(),
                        "gs_rs" : $("#gs_rs").val(),
                        "p1_rs" : $("#p1_rs").val(),
                        "p2_rs" : $("#p2_rs").val(),
                        "flowrate_rs": $("#flowrate_rs").val(),
                        "flowingg_rs": $("#flowingg_rs").val(),
                        "c1_rs": $("#c1_rs").val(),
                        "capacityr_rs": $("#capacityr_rs").val(),
                        "df_sel_rs": $("#df_sel_rs").val(),
                        "temp_sel_rs": $("#temp_sel_rs").val(),
                        "gs_sel_rs": $("#gs_sel_rs").val(),
                        "p1_sel_rs": $("#p1_sel_rs").val(),
                        "p2_sel_rs": $("#p2_sel_rs").val(),
                        "fr_sel_rs": $("#fr_sel_rs").val(),                        
                        "fg_sel_rs": $("#fg_sel_rs").val(),
                        
                        "linepipe_rs": sel1.val(),
                        "grade_sel_rs": $("#grade_sel_rs").val(),
                        "jf_sel_rs": $("#jf_sel_rs").val(),     
                        "p1opu_rs" : $("#p1opu_rs").val(),
                        "flowrateu_rs" : $("#flowrateu_rs").val(),
                        "ag_rs" : $("#ag_rs").val(),
                        "tempu_rs": $("#tempu_rs").val(),
                        "smys_rs": $("#smys_rs").val(),
                        "jfu_rs": $("#jfu_rs").val(),
                        "p1opu_sel_rs": $("#p1opu_sel_rs").val(),        
                        "fru_sel_rs": $("#fru_sel_rs").val(),    
                        "agu_sel_rs": $("#agu_sel_rs").val(),    
                        
                        "linepiped_rs": sel2.val(),
                        "graded_sel_rs" : $("#graded_sel_rs").val(),
                        "jfd_sel_rs": $("#jfd_sel_rs").val(),
                        "p2op_rs" : $("#p2op_rs").val(),
                        "flowrated_rs" : $("#flowrated_rs").val(),                        
                        "agd_rs" : $("#agd_rs").val(),
                        
                        "smysd_rs": $("#smysd_rs").val(),
                        "jfdp_rs": $("#jfdp_rs").val(),
                        "p2op_sel_rs" : $("#p2op_sel_rs").val(),                        
                        "frd_sel_rs" : $("#frd_sel_rs").val(),
                        "agud_sel_rs": $("#agud_sel_rs").val(),
                        
                        "gassizingc_rs": $("#gassizingc_rs").val(),
                        "gassizingr_rs": $("#gassizingr_rs").val(),
                        "flowc_rs": $("#flowc_rs").val(),
                        "calculatedi_rs": $("#calculatedi_rs").val(),                    
                        "minimunr_rs": $("#minimunr_rs").val(),
                        "calculatedo_rs": $("#calculatedo_rs").val(),
                        "calculatedid_rs": $("#calculatedid_rs").val(),
                        "minimunrd_rs": $("#minimunrd_rs").val(),
                        "calculatedod_rs": $("#calculatedod_rs").val(),
                        
                        "idproyect": $("#proyects_sel_rs").val(),
                        "opcion": $("#opt_rs").val(),
                        "iduser": <% out.print(session.getAttribute("idusu"));%>,
                        "id_rs": 1,
                        "description_rs": $("#description_rs").val(),
                        "from": "rs"
                    };
                    
                    var isOk = validate(parametros);
                        
                    if(isOk === false){
                        alert("You must perform the calculation and fill out the description");
                    }else{

                        if($("#opt_rs").val() == 2){
                            parametros.id_rs = $("#id_rs").val();
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
                                $("#id_rs").val(data.row.id);
                                $("#opt_rs").val("2");
                                show_OkDialog($("#save_Dialog_rs"), "Satisfactory process");
                            },
                            error: function (xhr, ajaxOptions, err) {
                                alert(err);
                                show_OkDialog($("#error_Dialog_rs"), "Error");
                            },
                            complete: function(){
                                unBlock();
                            }
                        });
                    }   
                }
                
                function delete_rs(){
                
                alert("here");
                    
                    //Confirmacion
                    if($("#opt_rs").val() == 2){
                        $( "#dialog-confirm_rs" ).dialog({
                            resizable: false,
                            height: "auto",
                            width: 400,
                            modal: true,
                            buttons: {
                              "Delete": function() {
                                deleteReg_rs();
                                $( this ).dialog( "close" );
                              },
                              Cancelar: function() {
                                $( this ).dialog( "close" );
                              }
                            }
                        });    
                    }else{
                        alert("You must load a record to be able to delete it");
                    }
                }
                
                function deleteReg_rs(){
                    var parametros = {
                        "id_rs": $("#id_rs").val(),
                        "opcion": 3,
                        "iduser": <%=session.getAttribute("idusu") %>,
                        "from": "rs"
                    };
                        
                        
                    if($("#opt_rs").val() == 2){
                        $.ajax({
                                type: "POST",
                                url: "Modules/manager.jsp",
                                data: parametros,
                                dataType: 'json',
                                beforeSend: function (xhr) {
                                    block("Cargando...");
                                },
                                success: function(data, status, request){
                                    cleanAll1_rs();
                                    cleanAll2_rs();
                                    cleanAll3_rs();
                                    
                                    $("#id_rs").val("");
                                    $("#opt_rs").val("1");
                                    $('#compfactors1_rs').attr('checked', 'checked');
                                    onchange_comf_rs();
                                    show_OkDialog($("#delete_Dialog_rs"), "Satisfactory process");
                                },
                                error: function (xhr, ajaxOptions, err) {
                                    alert(err);
                                    show_OkDialog($("#error_Dialog_rs"), "Error");
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
        
            <div id="load_Dialog_rs" title="Basic dialog" style='display:none;'>
                <p>Successfully uploaded data</p>
            </div>
            
            <div id="save_Dialog_rs" title="Basic dialog" style='display:none;'>
                <p>Data saved successfully</p>
            </div>
            
            <div id="error_Dialog_rs" title="Basic dialog" style='display:none;'>
                <p>An error has occurred in the process</p>
            </div>
            
            <div id="calculate_Dialog_rs" title="Basic dialog" style='display:none;'>
                <p>Calculation done successfully</p>
            </div>
            
            <div id="delete_Dialog_rs" title="Basic dialog" style='display:none;'>
                <p>Successfully deleted record</p>
            </div>
            
            <div id="dialog-confirm_rs" title="Delete record" style='display:none;'>
                <p><span class="ui-icon ui-icon-alert" style="float:left; margin:12px 12px 20px 0;"></span>
                    Are you sure you want to permanently delete this record?
                </p>
            </div>
    </body>
</html>